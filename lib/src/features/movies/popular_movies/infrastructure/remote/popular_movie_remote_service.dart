import 'package:dio/dio.dart';
import 'package:mova/src/features/core/infrastructure/remote_response.dart';
import 'package:mova/src/features/movies/core/infrastructure/dtos/movie_response_dto.dart';
import 'package:mova/src/features/movies/core/infrastructure/url_builder.dart';

class PopularMovieRemoteService {
  final Dio _dio;
  final UrlBuilder _urlBuilder;

  PopularMovieRemoteService(this._dio, this._urlBuilder);

  Future<RemoteResponse<MovieResponseDTO>> getPopularMoviesPage(
    int page,
  ) async {
    await _dio.get(_urlBuilder.buildPopularMovies(page));

    return Future.value();
  }
}
