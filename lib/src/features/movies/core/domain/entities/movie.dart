import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie.freezed.dart';
part 'movie.g.dart';

@freezed
class Movie with _$Movie {
  const Movie._();
  const factory Movie({
    required int id,
    required bool adult,
    String? backdropPath,
    required List<int> genreIds,
    required String originalLanguage,
    required String overview,
    required double popularity,
    String? posterPath,
    required String releaseDate,
    required String title,
    required bool video,
    required double voteAverage,
    required int voteCount,
  }) = _Movie;

  String? get fullImageUrl =>
      posterPath != null ? 'https://image.tmdb.org/t/p/w200/$posterPath' : null;
  String get fullBackDropUrl => 'https://image.tmdb.org/t/p/w400/$backdropPath';

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);
}
