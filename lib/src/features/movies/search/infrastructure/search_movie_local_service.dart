import 'package:collection/collection.dart';
import 'package:sembast/sembast.dart';

import '../../../../constants/contants.dart';
import '../../../core/infrastructure/sembast_database.dart';
import '../../core/infrastructure/dtos/movie_dto.dart';

class SearchMovieLocalService {
  final SembastDatabase _sembastDatabase;

  Future<Database?> get _db async => await _sembastDatabase.database;

  final _store = intMapStoreFactory.store('searchMovies');

  SearchMovieLocalService(this._sembastDatabase);

  Future<void> upsertSearchMoviePage(List<MovieDTO> dtos, int page) async {
    final localPage = page - 1;

    await _store
        .records(
          dtos.mapIndexed(
              (index, _) => index + Contants.itemPerPage * localPage),
        )
        .put(
          await _db.then((db) => db!),
          dtos.map((e) => e.toJson()).toList(),
        );
  }

  Future<List<MovieDTO>> getSearchMoviesPage(int page) async {
    final localPage = page - 1;

    final records = await _store.find(
      await _db.then((db) => db!),
      finder: Finder(
        limit: Contants.itemPerPage,
        offset: Contants.itemPerPage * localPage,
      ),
    );
    return records.map((e) => MovieDTO.fromJson(e.value)).toList();
  }

  Future<int> getSearchMoviesLocalMaxPages() async {
    final records = await _store.count(await _db.then((db) => db!));

    return (records / Contants.maxPage).ceil();
  }
}
