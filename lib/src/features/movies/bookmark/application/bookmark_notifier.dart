import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mova/src/features/core/infrastructure/extension/movie_extension.dart';
import 'package:mova/src/features/movies/bookmark/infrastructure/bookmark_repository.dart';
import 'package:mova/src/features/movies/core/domain/entities/movie.dart';
import 'package:mova/src/features/movies/core/infrastructure/dtos/movie_dto.dart';

part 'bookmark_notifier.freezed.dart';

@freezed
class BookmarkState with _$BookmarkState {
  const BookmarkState._();
  const factory BookmarkState.saveLoading() = _SaveLoading;
  const factory BookmarkState.saveComplete(Movie movie) = _SaveComplete;
  const factory BookmarkState.saveFailed([String? message]) = _SaveFailed;
  const factory BookmarkState.loading() = _Loading;
  const factory BookmarkState.loaded(List<Movie> bookmarkMovies) = _Loaded;
  const factory BookmarkState.loadedFailed([String? message]) = _LoadedFailed;
}

class BookmarkNotifier extends StateNotifier<BookmarkState> {
  final BookmarkRepository _repository;

  BookmarkNotifier(this._repository) : super(const BookmarkState.loading());

  Future<void> saveMovieToMyList(Movie movie) async {
    try {
      state = const BookmarkState.saveLoading();
      await _repository.addMovie(MovieDTO.fromDomain(movie));
      state = BookmarkState.saveComplete(movie);

      debugPrint(state.toString());
    } catch (e) {
      state = BookmarkState.saveFailed(e.toString());
    }
  }

  Future<void> getAllBookmarkMovies() async {
    try {
      state = const BookmarkState.loading();
      final movies = await _repository.getAllBookmarkMovies();
      state = BookmarkState.loaded(movies.toDomain());
    } catch (e) {
      state = BookmarkState.loadedFailed(e.toString());
    }
  }

  Future<void> clearAll() async => _repository.clearAll();
}
