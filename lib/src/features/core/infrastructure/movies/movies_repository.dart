import 'package:dartz/dartz.dart';
import 'package:mova/src/features/core/domain/fresh.dart';
import 'package:mova/src/features/core/domain/movie_response.dart';
import 'package:mova/src/features/core/infrastructure/movies/movies_local_storage_service.dart';
import 'package:mova/src/features/core/infrastructure/movies/movies_remote_service.dart';

class MoviesRepository {
  final MoviesLocalStorageService _moviesLocalStorageService;
  final MovieRemoteService _movieRemoteService;

  MoviesRepository(this._moviesLocalStorageService, this._movieRemoteService);

  Future<Either<Exception, Fresh<MovieResponse>>> fetchPopularMovies(
      String language, int page) async {
    try {
      final remoteResponse =
          await _movieRemoteService.fetchPopularMovies(language, page);

      return right(
        await remoteResponse.when(
          noConnexion: () async {
            return Fresh.no(
              await _moviesLocalStorageService
                  .getOfLocalMovies(page)
                  .then((_) => _.toDomain()),
              isNextPageAvailable: true,
            );
          },
          notModified: (maxPage) async => Fresh.yes(
            await _moviesLocalStorageService
                .getOfLocalMovies(page)
                .then((_) => _.toDomain()),
            isNextPageAvailable: true,
          ),
          withNewData: (data, maxPage) async {
            await _moviesLocalStorageService.upsertMovieResponse(data);
            return Fresh.yes(
              data.toDomain(),
              isNextPageAvailable: page < data.totalPages,
            );
          },
        ),
      );
    } catch (e) {
      return left(Exception('Failed to load Data'));
    }
  }
}
