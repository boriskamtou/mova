// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieResponseDTO _$$_MovieResponseDTOFromJson(Map<String, dynamic> json) =>
    _$_MovieResponseDTO(
      page: json['page'] as int? ?? 1,
      movies: (json['results'] as List<dynamic>)
          .map((e) => MovieDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['total_pages'] as int,
      totalResults: json['total_results'] as int,
    );

Map<String, dynamic> _$$_MovieResponseDTOToJson(_$_MovieResponseDTO instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.movies,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };
