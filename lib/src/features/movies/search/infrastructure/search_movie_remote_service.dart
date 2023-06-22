import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:mova/src/constants/local_storage_constants.dart';
import 'package:mova/src/features/core/infrastructure/remote_response.dart';
import 'package:mova/src/features/movies/core/infrastructure/local/total_results_cache.dart';
import 'package:mova/src/features/movies/core/infrastructure/remote/movie_remote_service.dart';
import 'package:mova/src/features/movies/core/infrastructure/url_builder.dart';

import '../../core/infrastructure/dtos/movie_response_dto.dart';

class SearchMovieRemoteService extends MovieRemoteService {
  SearchMovieRemoteService(Dio dio, TotalResultsCache totalResultsCache)
      : super(dio, totalResultsCache);

  Future<RemoteResponse<MovieResponseDTO>> searchMovie(
      int page, String searchTerm) {
    final url = UrlBuilder().buildSearchMovie(searchTerm, page);
    debugPrint(url);
    return super
        .getMoviesPage(url, LocalStorageConstants.searchMovieTotalResults);
  }
}
