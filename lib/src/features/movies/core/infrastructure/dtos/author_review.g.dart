// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'author_review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthorReview _$$_AuthorReviewFromJson(Map<String, dynamic> json) =>
    _$_AuthorReview(
      name: json['name'] as String?,
      userName: json['userName'] as String?,
      avatarPath: json['avatarPath'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_AuthorReviewToJson(_$_AuthorReview instance) =>
    <String, dynamic>{
      'name': instance.name,
      'userName': instance.userName,
      'avatarPath': instance.avatarPath,
      'rating': instance.rating,
    };
