import 'package:dartz/dartz.dart';
import 'package:mova/src/features/core/infrastructure/extension/movie_extension.dart';
import 'package:mova/src/features/movies/upcomming_movie/infrastructure/up_coming_movies_local_service.dart';
import 'package:mova/src/features/movies/upcomming_movie/infrastructure/upcoming_movies_remote_service.dart';

import '../../../core/infrastructure/exceptions/movie_exception.dart';
import '../../core/domain/entities/fresh.dart';
import '../../core/domain/entities/movie.dart';
import '../../core/domain/failures/movie_failure.dart';

class UpComingMoviesRepository {
  final UpcomingMoviesRemoteService _remoteService;
  final UpComingMoviesLocalService _localService;

  UpComingMoviesRepository(
    this._remoteService,
    this._localService,
  );

  Future<Either<MovieFailure, Fresh<List<Movie>>>> getUpcomingMoviesPage(
      int page) async {
    try {
      final remoteResponse = await _remoteService.getUpComingMovies(page);

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
          notModified: (data, maxPage) async {
            return Fresh.yes(
              data.movies.toDomain(),
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
