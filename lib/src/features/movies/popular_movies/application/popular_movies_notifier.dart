import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mova/src/constants/contants.dart';
import 'package:mova/src/features/movies/core/domain/failures/movie_failure.dart';
import 'package:mova/src/features/movies/popular_movies/infrastructure/repositories/popular_movies_repository.dart';

import '../../core/domain/entities/fresh.dart';
import '../../core/domain/entities/movie.dart';

part 'popular_movies_notifier.freezed.dart';

@freezed
class PopularMoviesState with _$PopularMoviesState {
  const PopularMoviesState._();
  const factory PopularMoviesState.initial(Fresh<List<Movie>> movies) = _Intial;
  const factory PopularMoviesState.loading(
      Fresh<List<Movie>> movies, int itemPerPage) = _Loading;
  const factory PopularMoviesState.loaded(Fresh<List<Movie>> movies,
      {required bool isNextPageAvailable}) = _Loaded;
  const factory PopularMoviesState.failure(
    Fresh<List<Movie>> movies,
    MovieFailure failure,
  ) = _Failure;
}

class PopularMoviesNotifier extends StateNotifier<PopularMoviesState> {
  final PopularMoviesRepository _repository;
  PopularMoviesNotifier(this._repository)
      : super(PopularMoviesState.initial(Fresh.yes([])));

  int _page = 1;

  Future<void> getNextPopularMoviePage() async {
    state = PopularMoviesState.loading(
      state.movies,
      Contants.itemPerPage,
    );
    final failureOrSucces = await _repository.getPopularMoviesPage(_page);
    state = failureOrSucces.fold(
      (l) => PopularMoviesState.failure(state.movies, l),
      (r) {
        _page++;
        return PopularMoviesState.loaded(
          r.copyWith(
            entity: [
              ...state.movies.entity,
              ...r.entity,
            ],
          ),
          isNextPageAvailable: r.isNextPageAvailable ?? false,
        );
      },
    );
  }
}
