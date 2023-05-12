import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/movie_video.dart';

part 'movie_video_dto.freezed.dart';
part 'movie_video_dto.g.dart';

@freezed
class MovieVideoDTO with _$MovieVideoDTO {
  const MovieVideoDTO._();
  const factory MovieVideoDTO({
    required String id,
    @JsonKey(name: 'iso_639_1') required String iso6,
    @JsonKey(name: 'iso_3166_1') required String iso3,
    @JsonKey(name: 'name') required String videoName,
    required String videoKey,
    required String site,
    @JsonKey(name: 'size') required int videoSize,
    @JsonKey(name: 'type') required String videoType,
    @JsonKey(name: 'official') required bool isOfficial,
    @JsonKey(name: 'published_at') required String publishedAt,
  }) = _MovieVideoDTO;

  factory MovieVideoDTO.fromJson(Map<String, dynamic> json) =>
      _$MovieVideoDTOFromJson(json);

  MovieVideo toDomain() {
    return MovieVideo(
      id: id,
      iso6: iso6,
      iso3: iso3,
      videoName: videoName,
      videoKey: videoKey,
      site: site,
      videoSize: videoSize,
      videoType: videoType,
      isOfficial: isOfficial,
      publishedAt: publishedAt,
    );
  }

  factory MovieVideoDTO.fromDomain(MovieVideo _) => MovieVideoDTO(
        id: _.id,
        iso6: _.iso6,
        iso3: _.iso3,
        videoName: _.videoName,
        videoKey: _.videoKey,
        site: _.site,
        videoSize: _.videoSize,
        videoType: _.videoType,
        isOfficial: _.isOfficial,
        publishedAt: _.publishedAt,
      );
}
