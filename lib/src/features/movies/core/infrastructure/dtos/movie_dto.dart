import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/movie.dart';

part 'movie_dto.freezed.dart';
part 'movie_dto.g.dart';

@freezed
class MovieDTO with _$MovieDTO {
  const MovieDTO._();
  const factory MovieDTO({
    required int id,
    @Default(false) bool adult,
    @JsonKey(name: 'backdrop_path') String? backdropPath,
    @JsonKey(name: 'genre_ids', includeIfNull: false)
    @Default([])
        List<int> genreIds,
    @JsonKey(name: 'original_language') required String originalLanguage,
    @JsonKey(name: 'original_title') required String originalTitle,
    required String overview,
    @Default(0) double popularity,
    @JsonKey(name: 'poster_path') String? posterPath,
    @JsonKey(name: 'release_date', includeIfNull: true) String? releaseDate,
    required String title,
    @Default(false) bool video,
    @JsonKey(name: 'vote_average') @Default(0) double voteAverage,
    @JsonKey(name: 'vote_count') @Default(0) int voteCount,
  }) = _MovieDTO;

  factory MovieDTO.fromJson(Map<String, dynamic> json) =>
      _$MovieDTOFromJson(json);

  factory MovieDTO.fromDomain(Movie _) => MovieDTO(
        id: _.id,
        adult: _.adult,
        backdropPath: _.backdropPath,
        genreIds: _.genreIds,
        originalLanguage: _.originalLanguage,
        originalTitle: _.originalLanguage,
        overview: _.overview,
        popularity: _.popularity,
        posterPath: _.posterPath,
        releaseDate: _.releaseDate,
        title: _.title,
        video: _.video,
        voteAverage: _.voteAverage,
        voteCount: _.voteCount,
      );

  Movie toDomain() => Movie(
        id: id,
        adult: adult,
        backdropPath: backdropPath != null ? backdropPath! : '',
        genreIds: genreIds,
        originalLanguage: originalLanguage,
        overview: overview,
        popularity: popularity,
        posterPath: posterPath != null ? posterPath! : '',
        releaseDate: releaseDate != null ? releaseDate! : '',
        title: title,
        video: video,
        voteAverage: voteAverage,
        voteCount: voteCount,
      );
}
