// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReviewDTO _$$_ReviewDTOFromJson(Map<String, dynamic> json) => _$_ReviewDTO(
      id: json['id'] as String,
      authorReviewDTO: AuthorReviewDTO.fromJson(
          json['author_details'] as Map<String, dynamic>),
      content: json['content'] as String,
      createdAt: json['created_at'] as String,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$_ReviewDTOToJson(_$_ReviewDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'author_details': instance.authorReviewDTO,
      'content': instance.content,
      'created_at': instance.createdAt,
      'url': instance.url,
    };
