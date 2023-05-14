import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mova/src/features/core/infrastructure/extension/movie_extension.dart';
import 'package:mova/src/features/movies/core/infrastructure/dtos/review_dto.dart';
import 'package:mova/src/features/movies/core/infrastructure/dtos/reviews_response.dart';

part 'review_response_dto.freezed.dart';
part 'review_response_dto.g.dart';

@freezed
class ReviewResponseDTO with _$ReviewResponseDTO {
  const ReviewResponseDTO._();
  const factory ReviewResponseDTO({
    @Default(1) int page,
    @JsonKey(name: 'results') required List<ReviewDTO> reviews,
    @JsonKey(name: 'total_pages') required int totalPages,
    @JsonKey(name: 'total_results') required int totalResults,
  }) = _ReviewResponseDTO;

  factory ReviewResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$ReviewResponseDTOFromJson(json);

  ReviewResponse toDomain() {
    return ReviewResponse(
      page: page,
      reviews: reviews.toDomain(),
      totalPages: totalPages,
      totalResults: totalResults,
    );
  }

  factory ReviewResponseDTO.fromDomain(ReviewResponse _) {
    return ReviewResponseDTO(
      page: _.page,
      reviews: _.reviews.toDTO(),
      totalPages: _.totalPages,
      totalResults: _.totalResults,
    );
  }
}
