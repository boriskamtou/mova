import 'package:dartz/dartz.dart';
import 'package:mova/src/features/core/infrastructure/extension/movie_extension.dart';
import 'package:mova/src/features/movies/search/infrastructure/search_movie_local_service.dart';
import 'package:mova/src/features/movies/search/infrastructure/search_movie_remote_service.dart';

import '../../../core/infrastructure/exceptions/movie_exception.dart';
import '../../core/domain/entities/fresh.dart';
import '../../core/domain/entities/movie.dart';
import '../../core/domain/failures/movie_failure.dart';

class SearchMovieRepository {
  final SearchMovieRemoteService _remoteService;
  final SearchMovieLocalService _localService;

  SearchMovieRepository(this._remoteService, this._localService);

  Future<Either<MovieFailure, Fresh<List<Movie>>>> getSearchMovies(
      String searchTerm, int page) async {
    try {
      final remoteResponse = await _remoteService.searchMovie(page, searchTerm);

      return right(
        await remoteResponse.when(
          noConnexion: () async {
            return Fresh.no(
              await _localService
                  .getSearchMoviesPage(page)
                  .then((_) => _.toDomain()),
              isNextPageAvailable:
                  page < await _localService.getSearchMoviesLocalMaxPages(),
            );
          },
          notModified: (data, maxPage) async {
            return Fresh.yes(
              data.movies.toDomain(),
              isNextPageAvailable: page < maxPage,
            );
          },
          withNewData: (data, maxPage) async {
            await _localService.upsertSearchMoviePage(data.movies, page);
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
