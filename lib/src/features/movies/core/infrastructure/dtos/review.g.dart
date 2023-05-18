// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Review _$$_ReviewFromJson(Map<String, dynamic> json) => _$_Review(
      id: json['id'] as String,
      authorReview:
          AuthorReview.fromJson(json['author_details'] as Map<String, dynamic>),
      content: json['content'] as String,
      createdAt: json['created_at'] as String,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$_ReviewToJson(_$_Review instance) => <String, dynamic>{
      'id': instance.id,
      'author_details': instance.authorReview.toJson(),
      'content': instance.content,
      'created_at': instance.createdAt,
      'url': instance.url,
    };
