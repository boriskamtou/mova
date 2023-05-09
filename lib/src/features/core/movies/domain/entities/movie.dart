import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie.freezed.dart';
part 'movie.g.dart';

@freezed
class Movie with _$Movie {
  const Movie._();
  const factory Movie({
    required int id,
    required bool adult,
    required String backdropPath,
    required List<int> genreIds,
    required String originalLanguage,
    required String overview,
    required double popularity,
    required String posterPath,
    required String releaseDate,
    required String title,
    required bool video,
    required double voteAverage,
    required int voteCount,
  }) = _Movie;

  String get fullImageUrl => 'https://image.tmdb.org/t/p/w200/$posterPath';

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);
}
