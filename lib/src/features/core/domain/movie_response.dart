import 'package:freezed_annotation/freezed_annotation.dart';

import 'movie.dart';

part 'movie_response.freezed.dart';

part 'movie_response.g.dart';

@freezed
class MovieResponse with _$MovieResponse {
  const MovieResponse._();
  const factory MovieResponse({
    @Default(1) int page,
    @JsonKey(name: 'results') required List<Movie> movies,
    @JsonKey(name: 'total_pages') required int totalPages,
    @JsonKey(name: 'total_results') required int totalResults,
  }) = _MovieResponse;

  factory MovieResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieResponseFromJson(json);
}
