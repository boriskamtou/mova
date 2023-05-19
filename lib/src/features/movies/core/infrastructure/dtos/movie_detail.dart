import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mova/src/features/movies/core/infrastructure/dtos/genre.dart';

part 'movie_detail.freezed.dart';

@freezed
class MovieDetail with _$MovieDetail {
  const MovieDetail._();
  const factory MovieDetail({
    required int id,
    required bool adult,
    @Default('') String backdropPath,
    required List<Genre> genresDto,
    String? homePage,
    required String imdbId,
    required String originalLanguage,
    required String originalTitle,
    required String overview,
    required double popularity,
    @Default('') String posterPath,
    String? releaseDate,
    required double revenue,
    required String status,
    required String title,
    required double voteAverage,
    required double voteCount,
  }) = _MovieDetail;

  String get fullImageUrl => 'https://image.tmdb.org/t/p/w200/$posterPath';
  String get fullBackDropUrl => 'https://image.tmdb.org/t/p/w400/$backdropPath';

  String stringGenres() {
    List<Genre> genres = genresDto;
    List<String> listOfStringGenre = [];

    for (var genre in genres) {
      listOfStringGenre.add(genre.name);
    }
    return listOfStringGenre.join(', ');
  }
}
