import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mova/src/features/core/shared/providers.dart';
import 'package:mova/src/features/movies/movie_detail/application/movie_detail_notifier.dart';
import 'package:mova/src/features/movies/movie_detail/infrastructure/movie_detail_local_service.dart';
import 'package:mova/src/features/movies/movie_detail/infrastructure/movie_detail_remote_service.dart';
import 'package:mova/src/features/movies/movie_detail/infrastructure/movie_detail_repository.dart';

final movieDetailLocalServiceProvider =
    Provider<MovieDetailLocalService>((ref) {
  return MovieDetailLocalService(ref.watch(sembastProvider));
});

final movieDetailRemoteServiceProvider =
    Provider<MovieDetailRemoteService>((ref) {
  return MovieDetailRemoteService(
      ref.watch(dioProvider),
      ref.watch(urlBuilderProvider),
      ref.watch(movieDetailLocalServiceProvider));
});

final movieDetailRepositoryProvider = Provider<MovieDetailRepository>((ref) {
  return MovieDetailRepository(ref.watch(movieDetailRemoteServiceProvider),
      ref.watch(movieDetailLocalServiceProvider));
});

final movieDetailNotifierProvider =
    StateNotifierProvider<MovieDetailNotifier, MovieDetailState>((ref) {
  return MovieDetailNotifier(ref.watch(movieDetailRepositoryProvider));
});
