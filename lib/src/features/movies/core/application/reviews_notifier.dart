import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mova/src/features/movies/core/infrastructure/dtos/review.dart';
import 'package:mova/src/features/movies/core/infrastructure/repositories/movie_review_repository.dart';

import '../domain/failures/movie_failure.dart';

part 'reviews_notifier.freezed.dart';

@freezed
class ReviewState with _$ReviewState {
  const ReviewState._();
  const factory ReviewState.loading() = _Loading;
  const factory ReviewState.data(List<Review> reviews) = _Data;
  const factory ReviewState.error(MovieFailure failure) = _Error;
}

class ReviewsNotifier extends StateNotifier<ReviewState> {
  final MovieReviewRepository _repository;
  ReviewsNotifier(this._repository) : super(const ReviewState.loading());

  Future<void> getMovieReviews(int movieId) async {
    state = const ReviewState.loading();
    final failureOrSuccess = await _repository.getMovieReviews(movieId);

    state = failureOrSuccess.fold(
      (l) => ReviewState.error(l),
      (r) {
        return ReviewState.data(r);
      },
    );
  }
}
