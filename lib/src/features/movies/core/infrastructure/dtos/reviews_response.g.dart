// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reviews_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReviewResponse _$$_ReviewResponseFromJson(Map<String, dynamic> json) =>
    _$_ReviewResponse(
      page: json['page'] as int? ?? 1,
      reviews: (json['reviews'] as List<dynamic>)
          .map((e) => Review.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['totalPages'] as int,
      totalResults: json['totalResults'] as int,
    );

Map<String, dynamic> _$$_ReviewResponseToJson(_$_ReviewResponse instance) =>
    <String, dynamic>{
      'page': instance.page,
      'reviews': instance.reviews.map((e) => e.toJson()).toList(),
      'totalPages': instance.totalPages,
      'totalResults': instance.totalResults,
    };
