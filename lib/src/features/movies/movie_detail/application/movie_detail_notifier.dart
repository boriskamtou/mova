import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mova/src/features/movies/core/infrastructure/dtos/movie_detail.dart';
import 'package:mova/src/features/movies/movie_detail/infrastructure/movie_detail_repository.dart';

part 'movie_detail_notifier.freezed.dart';

@freezed
class MovieDetailState with _$MovieDetailState {
  const MovieDetailState._();
  const factory MovieDetailState.loading() = _Loading;
  const factory MovieDetailState.loaded(MovieDetail movieDetail) = _Loaded;
  const factory MovieDetailState.failed([String? message]) = _Failed;
}

class MovieDetailNotifier extends StateNotifier<MovieDetailState> {
  final MovieDetailRepository _repository;
  MovieDetailNotifier(this._repository)
      : super(const MovieDetailState.loading());

  Future<void> getMovieDetail(int movieId) async {
    state = const MovieDetailState.loading();
    final failureOrSuccess = await _repository.getMovieDetail(movieId);
    state = failureOrSuccess.fold(
      (l) {
        return MovieDetailState.failed(l.message);
      },
      (r) {
        return MovieDetailState.loaded(r);
      },
    );
  }
}
