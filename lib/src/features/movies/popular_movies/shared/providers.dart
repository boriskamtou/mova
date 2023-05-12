import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mova/src/features/movies/core/application/paginated_movies_notifier.dart';
import 'package:mova/src/features/movies/popular_movies/application/popular_movies_notifier.dart';
import 'package:mova/src/features/movies/popular_movies/infrastructure/local/popular_movies_local_service.dart';
import 'package:mova/src/features/movies/popular_movies/infrastructure/remote/popular_movie_remote_service.dart';
import 'package:mova/src/features/movies/popular_movies/infrastructure/repositories/popular_movies_repository.dart';

import '../../../core/shared/providers.dart';

final popularMoviesRemoteServiceProvider =
    Provider<PopularMovieRemoteService>((ref) {
  return PopularMovieRemoteService(
    ref.watch(dioProvider),
    ref.watch(totalMoviesCacheProvider),
  );
});

final popularMoviesLocalServiceProvider =
    Provider<PopularMoviesLocalService>((ref) {
  return PopularMoviesLocalService(ref.watch(sembastProvider));
});

final popularMoviesRepositoryProvider =
    Provider<PopularMoviesRepository>((ref) {
  return PopularMoviesRepository(
    ref.watch(popularMoviesRemoteServiceProvider),
    ref.watch(popularMoviesLocalServiceProvider),
  );
});

final popularMoviesStateNotifierProvider = StateNotifierProvider.autoDispose<
    PopularMoviesNotifier, PaginatedMoviesState>((ref) {
  return PopularMoviesNotifier(ref.watch(popularMoviesRepositoryProvider));
});
