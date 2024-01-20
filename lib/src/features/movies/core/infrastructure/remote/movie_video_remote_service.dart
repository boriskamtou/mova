import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import '../../../../core/infrastructure/api_response.dart';
import '../dtos/movie_video_response_dto.dart';
import '../url_builder.dart';

import '../../../../core/infrastructure/dio_exception.dart';

class MovieVideoRemoteService {
  var logger = Logger();

  final Dio _dio;
  final UrlBuilder _urlBuilder;

  MovieVideoRemoteService(this._dio, this._urlBuilder);

  Future<ApiResponse<MovieVideoResponseDTO>> getMovieVideos(int movieId) async {
    final url = _urlBuilder.buildMoviesVideos(movieId);
    try {
      final response = await _dio.get(url);
      if (response.statusCode == 200) {
        final data = MovieVideoResponseDTO.fromJson(response.data);

        return ApiResponse.success(data);
      } else {
        return ApiResponse.failure(exception: Exception(response.statusCode));
      }
    } on DioError catch (e) {
      return ApiResponse.failure(
          exception: DioExceptionHandler.fromDioError(e));
    }
  }
}
