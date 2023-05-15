import 'package:dartz/dartz.dart';
import 'package:mova/src/features/core/infrastructure/exceptions/movie_exception.dart';
import 'package:mova/src/features/core/infrastructure/extension/movie_extension.dart';
import 'package:mova/src/features/movies/core/domain/failures/movie_failure.dart';
import 'package:mova/src/features/movies/core/infrastructure/dtos/review.dart';
import 'package:mova/src/features/movies/core/infrastructure/remote/review_remote_service.dart';

class MovieReviewRepository {
  final ReviewRemoteService _remoteService;

  MovieReviewRepository(this._remoteService);

  Future<Either<MovieFailure, List<Review>>> getMovieReviews(
      int movieId) async {
    try {
      final response = await _remoteService.getMovieReviews(movieId);
      return right(
        await response.when(
          noConnexion: () async => [],
          notModified: (data, _) => [],
          withNewData: (data, _) async => data.reviews.toDomain(),
        ),
      );
    } on MovieException catch (e) {
      return left(MovieFailure.api(e.errorMessage));
    }
  }
}
