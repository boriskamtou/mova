import 'package:mova/src/features/movies/core/infrastructure/dtos/movie_detail_dto.dart';
import 'package:sembast/sembast.dart';

import '../../../core/infrastructure/sembast_database.dart';

class MovieDetailLocalService {
  final SembastDatabase _sembastDatabase;

  Future<Database?> get _db async => await _sembastDatabase.database;

  final _store = intMapStoreFactory.store('movieDetails');

  MovieDetailLocalService(this._sembastDatabase);

  Future<void> upsertMovie(MovieDetailDTO movie) async {
    await _store
        .record(movie.id)
        .put(await _db.then((db) => db!), movie.toJson());
  }

  Future<MovieDetailDTO?> getMovieDetail(int movieId) async {
    final record =
        await _store.record(movieId).get(await _db.then((db) => db!));
    if (record != null) {
      return MovieDetailDTO.fromJson(record);
    } else {
      return null;
    }
  }
}
