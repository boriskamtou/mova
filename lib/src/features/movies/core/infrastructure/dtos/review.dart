import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mova/src/features/movies/core/infrastructure/dtos/author_review.dart';

part 'review.freezed.dart';

part 'review.g.dart';

@freezed
class Review with _$Review {
  const Review._();
  const factory Review({
    required String id,
    @JsonKey(name: 'author_details') required AuthorReview authorReview,
    @JsonKey(name: 'content') required String content,
    @JsonKey(name: 'created_at') required String createdAt,
    String? url,
  }) = _Review;

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
}
