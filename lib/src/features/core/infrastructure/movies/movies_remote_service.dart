// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';

import 'package:mova/src/features/core/infrastructure/api/url_builder.dart';
import 'package:mova/src/features/core/infrastructure/movie_response.dart';
import 'package:mova/src/features/core/infrastructure/movie_response_dto.dart';

class MovieRemoteService {
  final Dio _dio;
  final UrlBuilder _urlBuilder;
  MovieRemoteService(
    this._dio,
    this._urlBuilder,
  );

  Future<MovieRemoteResponse<MovieResponseDTO>> fetchPopularMovies(
      String language, int page) async {
    try {
      final url = _urlBuilder.buildPopularMovies(language, page);
      final response = await _dio.get(url);
      final responseObject = response.data;
      if (response.statusCode == 200) {
        final data = MovieResponseDTO.fromJson(responseObject);
        return MovieRemoteResponse.withNewData(data, maxPage: data.totalPages);
      } else {
        throw Exception('Failed to loaded data');
      }
    } catch (e) {
      return const MovieRemoteResponse.noConnexion();
    }
  }
}
