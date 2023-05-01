import 'package:mova/src/features/core/infrastructure/sembast_database.dart';

class MoviesLocalStorageService {
  final SembastDatabase _sembastDatabase;

  MoviesLocalStorageService(this._sembastDatabase);

  Future<void> upsertMovieListPage(
    int pageNumber,
  ) async {}
}
