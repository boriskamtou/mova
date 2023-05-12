import 'package:dartz/dartz.dart';
import 'package:mova/src/features/core/infrastructure/exceptions/movie_exception.dart';
import 'package:mova/src/features/core/infrastructure/extension/movie_extension.dart';
import 'package:mova/src/features/movies/core/domain/entities/fresh.dart';
import 'package:mova/src/features/movies/core/domain/entities/movie.dart';
import 'package:mova/src/features/movies/core/domain/failures/movie_failure.dart';
import 'package:mova/src/features/movies/popular_movies/infrastructure/local/popular_movies_local_service.dart';
import 'package:mova/src/features/movies/popular_movies/infrastructure/remote/popular_movie_remote_service.dart';

class PopularMoviesRepository {
  final PopularMovieRemoteService _popularMovieRemoteService;
  final PopularMoviesLocalService _popularMoviesLocalService;

  PopularMoviesRepository(
    this._popularMovieRemoteService,
    this._popularMoviesLocalService,
  );

  Future<Either<MovieFailure, Fresh<List<Movie>>>> getPopularMoviesPage(
      int page) async {
    try {
      final moviesResponse =
          await _popularMovieRemoteService.getPopularMoviesPage(page);

      return right(
        await moviesResponse.when(
          noConnexion: () async {
            return Fresh.no(
              await _popularMoviesLocalService
                  .getPopularMoviePage(page)
                  .then((_) => _.toDomain()),
              isNextPageAvailable: page <
                  await _popularMoviesLocalService
                      .getPopularMoviesLocalMaxPages(),
            );
          },
          notModified: (maxPage) async {
            return Fresh.yes(
              await _popularMoviesLocalService
                  .getPopularMoviePage(page)
                  .then((_) => _.toDomain()),
              isNextPageAvailable: page < maxPage,
            );
          },
          withNewData: (data, maxPage) async {
            await _popularMoviesLocalService.upsertPopularMoviePage(
                data.movies, page);
            return Fresh.yes(
              data.movies.toDomain(),
              isNextPageAvailable: page < maxPage,
            );
          },
        ),
      );
    } on MovieException catch (e) {
      return left(
        MovieFailure.api(e.errorCode, e.errorMessage),
      );
    }
  }
}
