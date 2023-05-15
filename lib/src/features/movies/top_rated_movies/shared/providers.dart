import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/shared/providers.dart';
import '../../core/application/paginated_movies_notifier.dart';
import '../application/top_rated_movies_notifier.dart';
import '../infrastructure/top_rated_movies_local_service.dart';
import '../infrastructure/top_rated_movies_repository.dart';
import '../infrastructure/top_rated_remote_service.dart';

final topRatedLocalServiceProvider =
    Provider<TopRatedMoviesLocalService>((ref) {
  return TopRatedMoviesLocalService(ref.watch(sembastProvider));
});

final topRatedRemoteServiceProvider =
    Provider<TopRatedMoviesRemoteService>((ref) {
  return TopRatedMoviesRemoteService(
    ref.watch(dioProvider),
    ref.watch(totalMoviesCacheProvider),
  );
});

final topRatedRepositoryProvider = Provider<TopRatedMoviesRepository>((ref) {
  return TopRatedMoviesRepository(
    ref.watch(topRatedRemoteServiceProvider),
    ref.watch(topRatedLocalServiceProvider),
  );
});

final topRatedMoviesStateNotifierProvider = StateNotifierProvider.autoDispose<
    TopRatedMoviesNotifier, PaginatedMoviesState>((ref) {
  return TopRatedMoviesNotifier(ref.watch(topRatedRepositoryProvider));
});
