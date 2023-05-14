import 'package:dio/dio.dart';
import 'package:mova/src/features/movies/core/infrastructure/remote/movie_remote_service.dart';

import '../../../../constants/local_storage_constants.dart';
import '../../../core/infrastructure/remote_response.dart';
import '../../core/infrastructure/dtos/movie_response_dto.dart';
import '../../core/infrastructure/local/total_results_cache.dart';
import '../../core/infrastructure/url_builder.dart';

class TopRatedMoviesRemoteService extends MovieRemoteService {
  TopRatedMoviesRemoteService(
    Dio dio,
    TotalResultsCache totalResultsCache,
  ) : super(dio, totalResultsCache);

  Future<RemoteResponse<MovieResponseDTO>> getTopRatedMoviesPage(
    int page,
  ) async {
    final url = UrlBuilder().builTopRatedMovies(page);
    return super
        .getMoviesPage(url, LocalStorageConstants.topRatedMoviesTotalResults);
  }
}
