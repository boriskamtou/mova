import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mova/src/features/core/application/popular_movies_notifier.dart';
import 'package:mova/src/features/core/infrastructure/api/url_builder.dart';
import 'package:mova/src/features/core/infrastructure/movies/movies.dart';
import 'package:mova/src/features/core/shared/dio_provider.dart';
import 'package:mova/src/features/core/shared/sembast_provider.dart';

final movieUrlBuildProvider = Provider<UrlBuilder>((ref) {
  return UrlBuilder();
});

final moviesRemoteServiceProvider = Provider<MovieRemoteService>((ref) {
  final dio = ref.watch(dioProvider);
  final urlBuilder = ref.watch(movieUrlBuildProvider);
  return MovieRemoteService(dio, urlBuilder);
});

final movieLocalServiceProvider = Provider<MoviesLocalStorageService>((ref) {
  final sembast = ref.watch(sembastProvider);
  return MoviesLocalStorageService(sembast);
});

final movieRepositoryProvider = Provider<MoviesRepository>((ref) {
  return MoviesRepository(
    ref.watch(movieLocalServiceProvider),
    ref.watch(moviesRemoteServiceProvider),
  );
});

final popularMoviesProvider =
    StateNotifierProvider<PopularMoviesNotifier, PopularMoviesState>((ref) {
  return PopularMoviesNotifier(ref.watch(movieRepositoryProvider));
});
