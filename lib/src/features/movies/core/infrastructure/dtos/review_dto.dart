import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mova/src/features/movies/core/infrastructure/dtos/author_review_dto.dart';
import 'package:mova/src/features/movies/core/infrastructure/dtos/review.dart';

part 'review_dto.freezed.dart';
part 'review_dto.g.dart';

@freezed
class ReviewDTO with _$ReviewDTO {
  const ReviewDTO._();
  const factory ReviewDTO({
    required String id,
    @JsonKey(name: 'author_details') required AuthorReviewDTO authorReviewDTO,
    @JsonKey(name: 'content') required String content,
    @JsonKey(name: 'created_at') required String createdAt,
    String? url,
  }) = _ReviewDTO;

  factory ReviewDTO.fromJson(Map<String, dynamic> json) =>
      _$ReviewDTOFromJson(json);

  Review toDomain() {
    return Review(
      id: id,
      authorReview: authorReviewDTO.toDomain(),
      content: content,
      createdAt: createdAt,
    );
  }

  factory ReviewDTO.fromDomain(Review _) {
    return ReviewDTO(
      id: _.id,
      authorReviewDTO: AuthorReviewDTO.fromDomain(_.authorReview),
      content: _.content,
      createdAt: _.createdAt,
    );
  }
}
