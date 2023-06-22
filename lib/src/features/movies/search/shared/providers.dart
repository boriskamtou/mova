import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mova/src/features/core/shared/providers.dart';
import 'package:mova/src/features/movies/core/application/paginated_movies_notifier.dart';
import 'package:mova/src/features/movies/search/application/search_history_notifier.dart';
import 'package:mova/src/features/movies/search/application/search_movie_notifier.dart';
import 'package:mova/src/features/movies/search/infrastructure/search_movie_local_service.dart';
import 'package:mova/src/features/movies/search/infrastructure/search_movie_remote_service.dart';
import 'package:mova/src/features/movies/search/infrastructure/search_movie_repository.dart';

import '../infrastructure/search_history_repository.dart';

final searchRemoteServiceProvider = Provider<SearchMovieRemoteService>((ref) {
  return SearchMovieRemoteService(
      ref.watch(dioProvider), ref.watch(totalMoviesCacheProvider));
});

final searchMovieLocalServiceProvider =
    Provider<SearchMovieLocalService>((ref) {
  return SearchMovieLocalService(
    ref.watch(sembastProvider),
  );
});

final searchMovieRepositoryProvider = Provider<SearchMovieRepository>((ref) {
  return SearchMovieRepository(ref.watch(searchRemoteServiceProvider),
      ref.watch(searchMovieLocalServiceProvider));
});

final searchMovieNotifierProvider = StateNotifierProvider.autoDispose<
    SearchMovieNotifier, PaginatedMoviesState>((ref) {
  return SearchMovieNotifier(ref.watch(searchMovieRepositoryProvider));
});

final searchHistoryRepositoryProvider =
    Provider<SearchHistoryRepository>((ref) {
  return SearchHistoryRepository(ref.watch(sembastProvider));
});

final searchHistoryNotifier =
    StateNotifierProvider<SearchHistoryNotifier, AsyncValue<List<String>>>(
        (ref) {
  return SearchHistoryNotifier(ref.watch(searchHistoryRepositoryProvider));
});
