import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mova/src/features/movies/core/infrastructure/dtos/author_review.dart';

part 'author_review_dto.freezed.dart';
part 'author_review_dto.g.dart';

@freezed
class AuthorReviewDTO with _$AuthorReviewDTO {
  const AuthorReviewDTO._();
  const factory AuthorReviewDTO({
    @JsonKey(name: 'name') @Default('') String? name,
    @JsonKey(name: 'username') @Default('') String? userName,
    @JsonKey(name: 'avatar_path') @Default('') String? avatarPath,
    @JsonKey(name: 'rating') @Default(0.0) double? rating,
  }) = _AuthorReviewDTO;

  factory AuthorReviewDTO.fromJson(Map<String, dynamic> json) =>
      _$AuthorReviewDTOFromJson(json);

  AuthorReview toDomain() {
    return AuthorReview(
      name: name,
      userName: userName,
      avatarPath: avatarPath,
      rating: rating,
    );
  }

  factory AuthorReviewDTO.fromDomain(AuthorReview _) {
    return AuthorReviewDTO(
      name: _.name,
      userName: _.userName,
      avatarPath: _.avatarPath,
      rating: _.rating,
    );
  }
}
