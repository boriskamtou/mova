import 'package:dio/dio.dart';
import 'package:mova/src/constants/contants.dart';
import 'package:mova/src/constants/local_storage_constants.dart';
import 'package:mova/src/features/core/infrastructure/exceptions/movie_exception.dart';
import 'package:mova/src/features/core/infrastructure/extension/dio_extension.dart';
import 'package:mova/src/features/core/infrastructure/remote_response.dart';
import 'package:mova/src/features/movies/core/infrastructure/dtos/movie_response_dto.dart';
import 'package:mova/src/features/movies/core/infrastructure/local/total_results_cache.dart';
import 'package:mova/src/features/movies/core/infrastructure/url_builder.dart';

class PopularMovieRemoteService {
  final Dio _dio;
  final UrlBuilder _urlBuilder;
  final TotalResultsCache _totalResultsCache;

  PopularMovieRemoteService(
      this._dio, this._urlBuilder, this._totalResultsCache);

  Future<RemoteResponse<MovieResponseDTO>> getPopularMoviesPage(
    int page,
  ) async {
    final previousTotalResults =
        await _totalResultsCache.getLocalTotalMoviesResults(
                LocalStorageConstants.popularMoviesTotalResults) ??
            1;

    try {
      final response = await _dio.get(_urlBuilder.buildPopularMovies(page));

      if (response.statusCode == 200) {
        final movieResponseData = MovieResponseDTO.fromJson(response.data);

        if (movieResponseData.totalResults == previousTotalResults) {
          return const RemoteResponse.notModified(maxPage: Contants.maxPage);
        } else {
          _totalResultsCache.saveTotalMoviesResults(
              movieResponseData.totalResults,
              LocalStorageConstants.popularMoviesTotalResults);
          return RemoteResponse.withNewData(movieResponseData,
              maxPage: Contants.maxPage);
        }
      } else {
        throw MovieException(
          errorCode: response.statusCode,
          errorMessage: response.statusMessage,
        );
      }
    } on DioError catch (e) {
      if (e.noConnexionError) {
        return const RemoteResponse.noConnexion(maxPage: Contants.maxPage);
      } else if (e.response != null) {
        throw MovieException(
          errorCode: e.response!.statusCode,
          errorMessage: e.response!.statusMessage,
        );
      } else {
        rethrow;
      }
    }
  }
}
