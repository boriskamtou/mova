import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mova/src/features/core/shared/providers.dart';
import 'package:mova/src/features/movies/core/application/paginated_movies_notifier.dart';
import 'package:mova/src/features/movies/similar_movies/application/similar_movies_notifier.dart';
import 'package:mova/src/features/movies/similar_movies/infrastructure/similar_movies_local_service.dart';
import 'package:mova/src/features/movies/similar_movies/infrastructure/similar_movies_remote_service.dart';
import 'package:mova/src/features/movies/similar_movies/infrastructure/similar_movies_repository.dart';

final similarMoviesRemoteServiceProvider =
    Provider<SimilarMoviesRemoteService>((ref) {
  return SimilarMoviesRemoteService(
      ref.watch(dioProvider), ref.watch(totalMoviesCacheProvider));
});

final similarMoviesLocalServiceProvider =
    Provider<SimilarMoviesLocalService>((ref) {
  return SimilarMoviesLocalService(ref.watch(sembastProvider));
});

final similarMoviesRepositoryProvider =
    Provider<SimilarMoviesRepository>((ref) {
  return SimilarMoviesRepository(ref.watch(similarMoviesRemoteServiceProvider),
      ref.watch(similarMoviesLocalServiceProvider));
});

final similarMoviesNotifierProviderProvider = StateNotifierProvider.autoDispose<
    SimilarMoviesNotifier, PaginatedMoviesState>((ref) {
  ref.keepAlive();
  return SimilarMoviesNotifier(ref.watch(similarMoviesRepositoryProvider));
});
