import 'package:dartz/dartz.dart';
import 'package:mova/src/features/core/infrastructure/extension/movie_extension.dart';
import 'package:mova/src/features/movies/similar_movies/infrastructure/similar_movies_local_service.dart';
import 'package:mova/src/features/movies/similar_movies/infrastructure/similar_movies_remote_service.dart';

import '../../../core/infrastructure/exceptions/movie_exception.dart';
import '../../core/domain/entities/fresh.dart';
import '../../core/domain/entities/movie.dart';
import '../../core/domain/failures/movie_failure.dart';

class SimilarMoviesRepository {
  final SimilarMoviesRemoteService _remoteService;
  final SimilarMoviesLocalService _localService;

  SimilarMoviesRepository(this._remoteService, this._localService);

  Future<Either<MovieFailure, Fresh<List<Movie>>>> getSimilarMoviesPage(
      int page, int movieId) async {
    try {
      final remoteResponse =
          await _remoteService.getSimilarMovies(movieId, page);

      return right(
        await remoteResponse.when(
          noConnexion: () async {
            return Fresh.no(
              await _localService
                  .getSimilarMoviesPage(page)
                  .then((_) => _.toDomain()),
              isNextPageAvailable:
                  page < await _localService.getSimilarMoviesLocalMaxPages(),
            );
          },
          notModified: (data, maxPage) async {
            return Fresh.yes(
              data.movies.toDomain(),
              isNextPageAvailable: page < maxPage,
            );
          },
          withNewData: (data, maxPage) async {
            await _localService.upsertSimilarMoviePage(data.movies, page);
            return Fresh.yes(
              data.movies.toDomain(),
              isNextPageAvailable: page < maxPage,
            );
          },
        ),
      );
    } on MovieException catch (e) {
      return left(
        MovieFailure.api(e.errorMessage),
      );
    }
  }
}
