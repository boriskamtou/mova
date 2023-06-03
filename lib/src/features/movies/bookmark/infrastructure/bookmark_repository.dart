import 'package:flutter/foundation.dart';
import 'package:sembast/sembast.dart';

import '../../../core/infrastructure/sembast_database.dart';
import '../../core/infrastructure/dtos/movie_dto.dart';

class BookmarkRepository {
  final SembastDatabase _sembastDatabase;

  BookmarkRepository(this._sembastDatabase);

  Future<Database?> get _db async => await _sembastDatabase.database;

  final _store = StoreRef<int, Map<String, dynamic>>('bookMarks');

  Stream<List<MovieDTO>> watchListOfMovies() async* {
    final finder = Finder(
      limit: 500,
    );

    final records =
        await _store.find(await _db.then((db) => db!), finder: finder);

    yield records
        .map((e) {
          final movie = MovieDTO.fromJson(e.value);
          return movie;
        })
        .toList()
        .reversed
        .toList();
  }

  Future<void> putMovieFirst(MovieDTO movieDTO) async {
    await _db.then(
      (db) => db!.transaction(
        (transaction) async {
          await _deleteMovie(transaction, movieDTO);
          await _addMovie(transaction, movieDTO);
        },
      ),
    );
  }

  Future<void> addMovie(MovieDTO movieDTO) async =>
      _addMovie(await _db.then((db) => db!), movieDTO);

  Future<void> _addMovie(
      DatabaseClient databaseClient, MovieDTO movieDTO) async {
    final existingKey = await _store.findKey(
      databaseClient,
      finder: Finder(
        filter: Filter.custom(
            (record) => (record.value as MovieDTO).id == movieDTO.id),
      ),
    );

    if (existingKey != null) {
      debugPrint("Already exist in the database");
      await putMovieFirst(movieDTO);
      return;
    }

    await _store.record(movieDTO.id).put(databaseClient, movieDTO.toJson());
  }

  Future<void> deleteMovie(MovieDTO movieDTO) async =>
      await _deleteMovie(await _db.then((db) => db!), movieDTO);

  Future<void> _deleteMovie(
    DatabaseClient databaseClient,
    MovieDTO movieDTO,
  ) async {
    await _store.delete(
      databaseClient,
      finder: Finder(
        filter: Filter.byKey(movieDTO.id),
      ),
    );
  }

  Future<void> clearAll() async {
    await _store.drop(await _db.then((db) => db!));
  }
}
