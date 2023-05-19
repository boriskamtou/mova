import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mova/src/features/core/infrastructure/extension/movie_extension.dart';
import 'package:mova/src/features/movies/core/infrastructure/dtos/movie_detail.dart';

import 'genre_dto.dart';

part 'movie_detail_dto.freezed.dart';

part 'movie_detail_dto.g.dart';

@freezed
class MovieDetailDTO with _$MovieDetailDTO {
  const MovieDetailDTO._();
  const factory MovieDetailDTO({
    required int id,
    required bool adult,
    @JsonKey(name: 'backdrop_path') @Default('') String backdropPath,
    @JsonKey(name: 'genres') required List<GenreDTO> genresDto,
    @JsonKey(name: 'homepage') String? homePage,
    @JsonKey(name: 'imdb_id') required String imdbId,
    @JsonKey(name: 'original_language') required String originalLanguage,
    @JsonKey(name: 'original_title') required String originalTitle,
    required String overview,
    required double popularity,
    @JsonKey(name: 'poster_path') @Default('') String posterPath,
    @JsonKey(name: 'release_date') String? releaseDate,
    required double revenue,
    required String status,
    required String title,
    @JsonKey(name: 'vote_average') required double voteAverage,
    @JsonKey(name: 'vote_count') required double voteCount,
  }) = _MovieDetailDTO;

  factory MovieDetailDTO.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailDTOFromJson(json);

  MovieDetail toDomain() {
    return MovieDetail(
      id: id,
      adult: adult,
      backdropPath: backdropPath,
      genresDto: genresDto.toDomain(),
      imdbId: imdbId,
      originalLanguage: originalLanguage,
      originalTitle: originalTitle,
      overview: overview,
      popularity: popularity,
      revenue: revenue,
      status: status,
      title: title,
      voteAverage: voteAverage,
      voteCount: voteCount,
    );
  }

  factory MovieDetailDTO.fromDomain(MovieDetail _) {
    return MovieDetailDTO(
      id: _.id,
      adult: _.adult,
      genresDto: _.genresDto.toDTO(),
      imdbId: _.imdbId,
      originalLanguage: _.originalLanguage,
      originalTitle: _.originalTitle,
      overview: _.overview,
      popularity: _.popularity,
      revenue: _.revenue,
      status: _.status,
      title: _.title,
      voteAverage: _.voteAverage,
      voteCount: _.voteCount,
    );
  }
}
