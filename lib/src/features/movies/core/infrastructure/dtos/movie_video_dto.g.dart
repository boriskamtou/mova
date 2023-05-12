// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_video_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieVideoDTO _$$_MovieVideoDTOFromJson(Map<String, dynamic> json) =>
    _$_MovieVideoDTO(
      id: json['id'] as String,
      iso6: json['iso_639_1'] as String,
      iso3: json['iso_3166_1'] as String,
      videoName: json['name'] as String,
      videoKey: json['videoKey'] as String,
      site: json['site'] as String,
      videoSize: json['size'] as int,
      videoType: json['type'] as String,
      isOfficial: json['official'] as bool,
      publishedAt: json['published_at'] as String,
    );

Map<String, dynamic> _$$_MovieVideoDTOToJson(_$_MovieVideoDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'iso_639_1': instance.iso6,
      'iso_3166_1': instance.iso3,
      'name': instance.videoName,
      'videoKey': instance.videoKey,
      'site': instance.site,
      'size': instance.videoSize,
      'type': instance.videoType,
      'official': instance.isOfficial,
      'published_at': instance.publishedAt,
    };
