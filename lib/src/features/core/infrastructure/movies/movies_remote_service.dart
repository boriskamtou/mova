// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';
import 'package:mova/src/features/core/domain/movie_response.dart';

import 'package:mova/src/features/core/infrastructure/api/url_builder.dart';

class MoviesApi {
  final Dio _dio;
  final UrlBuilder _urlBuilder;
  MoviesApi(
    this._dio,
    this._urlBuilder,
  );

  Future<MovieResponse> fetchPopularMovies(String language, int page) async {
    final url = _urlBuilder.buildPopularMovies(language, page);
    final response = await _dio.get(url);
    final responseObject = response.data;
    return MovieResponse.fromJson(responseObject);
  }
}
