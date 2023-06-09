import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:mova/src/features/core/infrastructure/extension/dio_extension.dart';

import '../../../../core/infrastructure/exceptions/movie_exception.dart';
import '../../../../core/infrastructure/remote_response.dart';
import '../dtos/movie_response_dto.dart';
import '../local/total_results_cache.dart';

abstract class MovieRemoteService {
  final Dio _dio;
  final TotalResultsCache _totalResultsCache;

  MovieRemoteService(
    this._dio,
    this._totalResultsCache,
  );

  Future<RemoteResponse<MovieResponseDTO>> getMoviesPage(
    String url,
    String totalResultsLocalStorageKey,
  ) async {
    final previousTotalResults = await _totalResultsCache
            .getLocalTotalMoviesResults(totalResultsLocalStorageKey) ??
        1;

    debugPrint(url);

    try {
      final response = await _dio.get(url);

      if (response.statusCode == 200) {
        final movieResponseData = MovieResponseDTO.fromJson(response.data);

        if (movieResponseData.totalResults == previousTotalResults) {
          return RemoteResponse.notModified(
            movieResponseData,
            maxPage: movieResponseData.totalPages,
          );
        } else {
          await _totalResultsCache.saveTotalMoviesResults(
            movieResponseData.totalResults,
            totalResultsLocalStorageKey,
          );
          return RemoteResponse.withNewData(
            movieResponseData,
            maxPage: movieResponseData.totalPages,
          );
        }
      } else {
        throw MovieException(
          errorCode: response.statusCode,
          errorMessage: response.statusMessage,
        );
      }
    } on DioError catch (e) {
      if (e.noConnexionError) {
        return const RemoteResponse.noConnexion();
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
