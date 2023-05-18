// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_video_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieVideoResponseDTO _$$_MovieVideoResponseDTOFromJson(
        Map<String, dynamic> json) =>
    _$_MovieVideoResponseDTO(
      movieId: json['id'] as int,
      videos: (json['results'] as List<dynamic>?)
              ?.map((e) => MovieVideoDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_MovieVideoResponseDTOToJson(
        _$_MovieVideoResponseDTO instance) =>
    <String, dynamic>{
      'id': instance.movieId,
      'results': instance.videos.map((e) => e.toJson()).toList(),
    };
