import 'package:dartz/dartz.dart';
import 'package:mova/src/features/core/infrastructure/exceptions/movie_exception.dart';
import 'package:mova/src/features/movies/movie_detail/infrastructure/movie_detail_remote_service.dart';

import '../../core/domain/failures/movie_failure.dart';
import '../../core/infrastructure/dtos/movie_detail.dart';
import 'movie_detail_local_service.dart';

class MovieDetailRepository {
  final MovieDetailRemoteService _remoteService;
  final MovieDetailLocalService _localService;

  MovieDetailRepository(this._remoteService, this._localService);

  Future<Either<MovieFailure, MovieDetail>> getMovieDetail(int movieId) async {
    try {
      final remoteResponse = await _remoteService.getMovieDetail(movieId);
      return right(
        await remoteResponse.when(
          noConnexion: () async {
            return await _localService
                .getMovieDetail(movieId)
                .then((value) => value!.toDomain());
          },
          notModified: (data, _) => data.toDomain(),
          withNewData: (data, _) async {
            _localService.upsertMovie(data);
            return data.toDomain();
          },
        ),
      );
    } on MovieException catch (e) {
      return left(MovieFailure.api(e.errorMessage));
    }
  }
}
