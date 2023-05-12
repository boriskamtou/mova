// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_video.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieVideo _$$_MovieVideoFromJson(Map<String, dynamic> json) =>
    _$_MovieVideo(
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

Map<String, dynamic> _$$_MovieVideoToJson(_$_MovieVideo instance) =>
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
