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
      imdbId: json['imdb_id'] as String?,
      originalLanguage: json['original_language'] as String,
      originalTitle: json['original_title'] as String,
      overview: json['overview'] as String,
      popularity: (json['popularity'] as num).toDouble(),
      posterPath: json['poster_path'] as String? ?? '',
      releaseDate: json['release_date'] as String?,
      revenue: (json['revenue'] as num).toDouble(),
      status: json['status'] as String,
      title: json['title'] as String,
      voteAverage: (json['vote_average'] as num).toDouble(),
      voteCount: (json['vote_count'] as num).toDouble(),
    );

Map<String, dynamic> _$$_MovieDetailDTOToJson(_$_MovieDetailDTO instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'adult': instance.adult,
    'backdrop_path': instance.backdropPath,
    'genres': instance.genresDto.map((e) => e.toJson()).toList(),
    'homepage': instance.homePage,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('imdb_id', instance.imdbId);
  val['original_language'] = instance.originalLanguage;
  val['original_title'] = instance.originalTitle;
  val['overview'] = instance.overview;
  val['popularity'] = instance.popularity;
  val['poster_path'] = instance.posterPath;
  val['release_date'] = instance.releaseDate;
  val['revenue'] = instance.revenue;
  val['status'] = instance.status;
  val['title'] = instance.title;
  val['vote_average'] = instance.voteAverage;
  val['vote_count'] = instance.voteCount;
  return val;
}
