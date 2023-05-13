import 'package:freezed_annotation/freezed_annotation.dart';

part 'author_review.freezed.dart';

@freezed
class AuthorReview with _$AuthorReview {
  const AuthorReview._();
  const factory AuthorReview({
    String? name,
    String? userName,
    String? avatarPath,
    double? rating,
  }) = _AuthorReview;

  factory AuthorReview.fromJson(Map<String, dynamic> json) =>
      _$AuthorReviewFromJson(json);
}
