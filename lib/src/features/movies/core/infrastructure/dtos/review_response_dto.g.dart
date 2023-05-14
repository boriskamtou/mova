// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReviewResponseDTO _$$_ReviewResponseDTOFromJson(Map<String, dynamic> json) =>
    _$_ReviewResponseDTO(
      page: json['page'] as int? ?? 1,
      reviews: (json['results'] as List<dynamic>)
          .map((e) => ReviewDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['total_pages'] as int,
      totalResults: json['total_results'] as int,
    );

Map<String, dynamic> _$$_ReviewResponseDTOToJson(
        _$_ReviewResponseDTO instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.reviews,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };
