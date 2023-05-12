import 'package:freezed_annotation/freezed_annotation.dart';

import 'movie_video_dto.dart';

part 'movie_video_response_dto.freezed.dart';
part 'movie_video_response_dto.g.dart';

@freezed
class MovieVideoResponseDTO with _$MovieVideoResponseDTO {
  const MovieVideoResponseDTO._();
  const factory MovieVideoResponseDTO({
    @JsonKey(name: 'id') required int movieId,
    @Default([]) List<MovieVideoDTO> videos,
  }) = _MovieVideoResponseDTO;

  factory MovieVideoResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$MovieVideoResponseDTOFromJson(json);
}
