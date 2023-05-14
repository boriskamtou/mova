// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'author_review_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthorReviewDTO _$$_AuthorReviewDTOFromJson(Map<String, dynamic> json) =>
    _$_AuthorReviewDTO(
      name: json['name'] as String? ?? '',
      userName: json['username'] as String? ?? '',
      avatarPath: json['avatar_path'] as String? ?? '',
      rating: (json['rating'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$_AuthorReviewDTOToJson(_$_AuthorReviewDTO instance) =>
    <String, dynamic>{
      'name': instance.name,
      'username': instance.userName,
      'avatar_path': instance.avatarPath,
      'rating': instance.rating,
    };
