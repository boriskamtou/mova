import 'package:freezed_annotation/freezed_annotation.dart';

import 'review.dart';

part 'reviews_response.freezed.dart';
part 'reviews_response.g.dart';

@freezed
class ReviewResponse with _$ReviewResponse {
  const ReviewResponse._();
  const factory ReviewResponse({
    @Default(1) int page,
    required List<Review> reviews,
    required int totalPages,
    required int totalResults,
  }) = _ReviewResponse;

  factory ReviewResponse.fromJson(Map<String, dynamic> json) =>
      _$ReviewResponseFromJson(json);
}
