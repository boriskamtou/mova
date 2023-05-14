import 'package:dartz/dartz.dart';
import 'package:mova/src/features/core/infrastructure/exceptions/movie_exception.dart';
import 'package:mova/src/features/core/infrastructure/extension/movie_extension.dart';
import 'package:mova/src/features/movies/core/domain/entities/fresh.dart';
import 'package:mova/src/features/movies/core/domain/failures/movie_failure.dart';
import 'package:mova/src/features/movies/top_rated_movies/infrastructure/top_rated_movies_local_service.dart';
import 'package:mova/src/features/movies/top_rated_movies/infrastructure/top_rated_remote_service.dart';

import '../../core/domain/entities/movie.dart';

class TopRatedMoviesRepository {
  final TopRatedMoviesRemoteService _topRatedMoviesRemoteService;
  final TopRatedMoviesLocalService _localService;

  TopRatedMoviesRepository(
    this._topRatedMoviesRemoteService,
    this._localService,
  );

  Future<Either<MovieFailure, Fresh<List<Movie>>>> getTopRatedMoviesPage(
      int page) async {
    try {
      final remoteResponse =
          await _topRatedMoviesRemoteService.getTopRatedMoviesPage(page);

      return right(
        await remoteResponse.when(
          noConnexion: () async {
            return Fresh.no(
              await _localService
                  .getTopRatedMoviePage(page)
                  .then((_) => _.toDomain()),
              isNextPageAvailable:
                  page < await _localService.getTopRatedMoviesLocalMaxPages(),
            );
          },
          notModified: (maxPage) async {
            return Fresh.yes(
              await _localService
                  .getTopRatedMoviePage(page)
                  .then((_) => _.toDomain()),
              isNextPageAvailable: page < maxPage,
            );
          },
          withNewData: (data, maxPage) async {
            await _localService.upsertTopRatedMoviePage(data.movies, page);
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
