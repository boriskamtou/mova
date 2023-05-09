import 'package:mova/src/features/core/movies/infrastructure/movies/repositories/remote/movies_remote_service.dart';

import 'local/movies_local_storage_service.dart';

class MoviesRepository {
  final MoviesLocalStorageService _moviesLocalStorageService;
  final MovieRemoteService _movieRemoteService;

  MoviesRepository(this._moviesLocalStorageService, this._movieRemoteService);
}
