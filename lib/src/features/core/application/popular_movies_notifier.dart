import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mova/src/features/core/infrastructure/movies/movies_repository.dart';

import '../domain/fresh.dart';
import '../domain/movie_response.dart';

part 'popular_movies_notifier.freezed.dart';

@freezed
class PopularMoviesState with _$PopularMoviesState {
  const PopularMoviesState._();
  const factory PopularMoviesState.initial(
      Fresh<MovieResponse?> movieResponse) = _Initial;
  const factory PopularMoviesState.loadInProgress(
      Fresh<MovieResponse> moviesResponse) = _Loading;
  const factory PopularMoviesState.loadedSuccess(
      Fresh<MovieResponse> moviesResponse,
      {required bool isNextPageAvailable}) = _LoadedSuccess;
  const factory PopularMoviesState.failure(
      Fresh<MovieResponse> movieResponse, Exception exception) = _LoadFailure;
}

class PopularMoviesNotifier extends StateNotifier<PopularMoviesState> {
  PopularMoviesNotifier(this._repository)
      : super(PopularMoviesState.initial(Fresh.yes(null)));

  final MoviesRepository _repository;

  Future<void> fetchPopularMovies() async {}
}
