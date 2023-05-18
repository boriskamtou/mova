import 'package:dio/dio.dart';
import 'package:mova/src/constants/local_storage_constants.dart';
import 'package:mova/src/features/core/infrastructure/remote_response.dart';
import 'package:mova/src/features/movies/core/infrastructure/dtos/movie_response_dto.dart';
import 'package:mova/src/features/movies/core/infrastructure/local/total_results_cache.dart';
import 'package:mova/src/features/movies/core/infrastructure/remote/movie_remote_service.dart';
import 'package:mova/src/features/movies/core/infrastructure/url_builder.dart';

class SimilarMoviesRemoteService extends MovieRemoteService {
  SimilarMoviesRemoteService(Dio dio, TotalResultsCache totalResultsCache)
      : super(dio, totalResultsCache);

  Future<RemoteResponse<MovieResponseDTO>> getSimilarMovies(
      int movieId, int page) async {
    final url = UrlBuilder().buildSimilarMoviesReviews(movieId, page);
    return super
        .getMoviesPage(url, LocalStorageConstants.similarMoviesTotalResults);
  }
}
