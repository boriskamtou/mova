import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mova/src/features/core/shared/providers.dart';
import 'package:mova/src/features/movies/core/application/paginated_movies_notifier.dart';
import 'package:mova/src/features/movies/upcomming_movie/application/up_coming_movies_notifier.dart';
import 'package:mova/src/features/movies/upcomming_movie/infrastructure/up_coming_movies_local_service.dart';
import 'package:mova/src/features/movies/upcomming_movie/infrastructure/up_coming_movies_repository.dart';
import 'package:mova/src/features/movies/upcomming_movie/infrastructure/upcoming_movies_remote_service.dart';

final upComingMoviesRemoteServiceProvider =
    Provider<UpcomingMoviesRemoteService>((ref) {
  return UpcomingMoviesRemoteService(
      ref.watch(dioProvider), ref.watch(totalMoviesCacheProvider));
});

final upComingMoviesLocalServiceProvider =
    Provider<UpComingMoviesLocalService>((ref) {
  return UpComingMoviesLocalService(ref.watch(sembastProvider));
});

final upComingMoviesRepositoryProvider =
    Provider<UpComingMoviesRepository>((ref) {
  return UpComingMoviesRepository(
      ref.watch(upComingMoviesRemoteServiceProvider),
      ref.watch(upComingMoviesLocalServiceProvider));
});

final upComingMoviesStateNotifierProvider = StateNotifierProvider.autoDispose<
    UpComingMoviesNotifier, PaginatedMoviesState>((ref) {
  return UpComingMoviesNotifier(ref.watch(upComingMoviesRepositoryProvider));
});
