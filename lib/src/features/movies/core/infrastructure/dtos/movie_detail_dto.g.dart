// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_detail_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieDetailDTO _$$_MovieDetailDTOFromJson(Map<String, dynamic> json) =>
    _$_MovieDetailDTO(
      id: json['id'] as int,
      adult: json['adult'] as bool,
      backdropPath: json['backdrop_path'] as String?,
      genresDto: (json['genres'] as List<dynamic>)
          .map((e) => GenreDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      homePage: json['homepage'] as String?,
      imdbId: json['imdb_id'] as String,
      originalLanguage: json['original_language'] as String,
      originalTitle: json['original_title'] as String,
      overview: json['overview'] as String,
      popularity: (json['popularity'] as num).toDouble(),
      posterPath: json['poster_path'] as String?,
      releaseDate: json['release_date'] as String?,
      revenue: (json['revenue'] as num).toDouble(),
      status: json['status'] as String,
      title: json['title'] as String,
      voteAverage: (json['vote_average'] as num).toDouble(),
      voteCount: (json['vote_count'] as num).toDouble(),
    );

Map<String, dynamic> _$$_MovieDetailDTOToJson(_$_MovieDetailDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'adult': instance.adult,
      'backdrop_path': instance.backdropPath,
      'genres': instance.genresDto.map((e) => e.toJson()).toList(),
      'homepage': instance.homePage,
      'imdb_id': instance.imdbId,
      'original_language': instance.originalLanguage,
      'original_title': instance.originalTitle,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate,
      'revenue': instance.revenue,
      'status': instance.status,
      'title': instance.title,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
    };
