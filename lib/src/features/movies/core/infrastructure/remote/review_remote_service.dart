import 'package:dio/dio.dart';
import 'package:mova/src/features/core/infrastructure/extension/dio_extension.dart';
import 'package:mova/src/features/core/infrastructure/remote_response.dart';
import 'package:mova/src/features/movies/core/infrastructure/url_builder.dart';

import '../dtos/review_response_dto.dart';

class ReviewRemoteService {
  final Dio _dio;
  final UrlBuilder _builder;

  ReviewRemoteService(this._dio, this._builder);

  Future<RemoteResponse<ReviewResponseDTO>> getMovieReviews(int movieId) async {
    try {
      final response = await _dio.get(_builder.buildMoviesReviews(movieId));
      if (response.statusCode == 200) {
        final data = ReviewResponseDTO.fromJson(response.data);
        return RemoteResponse.withNewData(data, maxPage: data.totalPages);
      } else {
        throw Exception(response.statusCode);
      }
    } on DioError catch (e) {
      if (e.noConnexionError) {
        return const RemoteResponse.noConnexion();
      } else {
        rethrow;
      }
    }
  }
}
