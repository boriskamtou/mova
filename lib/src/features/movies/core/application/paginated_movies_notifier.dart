import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mova/src/constants/contants.dart';
import 'package:mova/src/features/movies/core/domain/failures/movie_failure.dart';

import '../../core/domain/entities/fresh.dart';
import '../../core/domain/entities/movie.dart';

part 'paginated_movies_notifier.freezed.dart';

typedef RepositoryGetter = Future<Either<MovieFailure, Fresh<List<Movie>>>>
    Function(int page);

@freezed
class PaginatedMoviesState with _$PaginatedMoviesState {
  const PaginatedMoviesState._();
  const factory PaginatedMoviesState.initial(Fresh<List<Movie>> movies) =
      _Intial;
  const factory PaginatedMoviesState.loading(
      Fresh<List<Movie>> movies, int itemPerPage) = _Loading;
  const factory PaginatedMoviesState.loaded(Fresh<List<Movie>> movies,
      {required bool isNextPageAvailable}) = _Loaded;
  const factory PaginatedMoviesState.failure(
    Fresh<List<Movie>> movies,
    MovieFailure failure,
  ) = _Failure;
}

class PaginatedMoviesNotifier extends StateNotifier<PaginatedMoviesState> {
  PaginatedMoviesNotifier()
      : super(PaginatedMoviesState.initial(Fresh.yes([])));

  int _page = 1;

  @protected
  void resetState() {
    _page = 1;
    state = PaginatedMoviesState.initial(Fresh.yes([]));
  }

  @protected
  Future<void> getNextPaginatedMoviePage(RepositoryGetter getter) async {
    state = PaginatedMoviesState.loading(
      state.movies,
      Contants.itemPerPage,
    );
    final failureOrSucces = await getter(_page);
    state = failureOrSucces.fold(
      (l) => PaginatedMoviesState.failure(state.movies, l),
      (r) {
        _page++;
        return PaginatedMoviesState.loaded(
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
