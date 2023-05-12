import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_video.freezed.dart';
part 'movie_video.g.dart';

@freezed
class MovieVideo with _$MovieVideo {
  const MovieVideo._();
  const factory MovieVideo({
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
  }) = _MovieVideo;

  factory MovieVideo.fromJson(Map<String, dynamic> json) =>
      _$MovieVideoFromJson(json);
}
