import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mova/src/features/core/movies/shared/dio_provider.dart';
import 'package:mova/src/features/core/movies/shared/sembast_provider.dart';

import '../application/popular_movies_notifier.dart';
import '../infrastructure/movies/repositories/local/movies_local_storage_service.dart';
import '../infrastructure/movies/repositories/movies_repository.dart';
import '../infrastructure/movies/repositories/remote/movies_remote_service.dart';
import '../infrastructure/url_builder.dart';

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
    StateNotifierProvider<PopularMoviesNotifier, AsyncValue>((ref) {
  return PopularMoviesNotifier();
});
