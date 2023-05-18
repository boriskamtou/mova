import 'package:dio/dio.dart';
import 'package:mova/src/features/core/infrastructure/exceptions/movie_exception.dart';
import 'package:mova/src/features/core/infrastructure/extension/dio_extension.dart';
import 'package:mova/src/features/core/infrastructure/remote_response.dart';
import 'package:mova/src/features/movies/core/infrastructure/url_builder.dart';
import 'package:mova/src/features/movies/movie_detail/infrastructure/movie_detail_local_service.dart';

import '../../../core/infrastructure/dio_exception.dart';
import '../../core/infrastructure/dtos/movie_detail_dto.dart';

class MovieDetailRemoteService {
  final Dio _dio;
  final UrlBuilder _urlBuilder;
  final MovieDetailLocalService _localService;

  MovieDetailRemoteService(this._dio, this._urlBuilder, this._localService);

  Future<RemoteResponse<MovieDetailDTO>> getMovieDetail(int movieId) async {
    final url = _urlBuilder.buildMoviesDetail(movieId);

    final previousMovieDetail = await _localService.getMovieDetail(movieId);

    try {
      final response = await _dio.get(url);
      if (previousMovieDetail != null) {
        return RemoteResponse.notModified(previousMovieDetail, maxPage: 0);
      } else {
        return RemoteResponse.withNewData(
          MovieDetailDTO.fromJson(response.data),
          maxPage: 0,
        );
      }
    } on DioError catch (e) {
      if (e.noConnexionError) {
        return const RemoteResponse.noConnexion();
      }
      throw MovieException(
        errorMessage: DioException.fromDioError(e).message,
        errorCode: e.response!.statusCode,
        exception: DioException.fromDioError(e),
      );
    }
  }
}
