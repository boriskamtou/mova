import 'package:dio/dio.dart';
import '../../../../../constants/local_storage_constants.dart';
import '../../../../core/infrastructure/remote_response.dart';
import '../../../core/infrastructure/dtos/movie_response_dto.dart';
import '../../../core/infrastructure/local/total_results_cache.dart';
import '../../../core/infrastructure/remote/movie_remote_service.dart';
import '../../../core/infrastructure/url_builder.dart';

class PopularMovieRemoteService extends MovieRemoteService {
  PopularMovieRemoteService(
    Dio dio,
    TotalResultsCache totalResultsCache,
  ) : super(dio, totalResultsCache);

  Future<RemoteResponse<MovieResponseDTO>> getPopularMoviesPage(
    int page,
  ) async {
    final url = UrlBuilder().buildPopularMovies(page);
    return super
        .getMoviesPage(url, LocalStorageConstants.popularMoviesTotalResults);
  }
}
