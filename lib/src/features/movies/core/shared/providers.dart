import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mova/src/features/movies/core/application/paginated_movies_notifier.dart';
import 'package:mova/src/features/movies/core/application/reviews_notifier.dart';
import 'package:mova/src/features/movies/core/application/video_notifier.dart';
import 'package:mova/src/features/movies/core/infrastructure/remote/movie_video_remote_service.dart';
import 'package:mova/src/features/movies/core/infrastructure/remote/review_remote_service.dart';
import 'package:mova/src/features/movies/core/infrastructure/repositories/movie_review_repository.dart';
import 'package:mova/src/features/movies/core/infrastructure/repositories/video_repository.dart';

import '../../../core/shared/providers.dart';
import '../../popular_movies/application/popular_movies_notifier.dart';
import '../../popular_movies/infrastructure/local/popular_movies_local_service.dart';
import '../../popular_movies/infrastructure/remote/popular_movie_remote_service.dart';
import '../../popular_movies/infrastructure/repositories/popular_movies_repository.dart';

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

final paginatedMovieNotifier =
    StateNotifierProvider<PaginatedMoviesNotifier, PaginatedMoviesState>((ref) {
  return PaginatedMoviesNotifier();
});

// ### Top Rated Movies

// ### Movies Videos
final movieVideoRemoteServiceProvider =
    Provider<MovieVideoRemoteService>((ref) {
  return MovieVideoRemoteService(
    ref.watch(dioProvider),
    ref.watch(urlBuilderProvider),
  );
});

final videoMovieRepositoryProvider = Provider<VideoRepository>((ref) {
  return VideoRepository(ref.watch(movieVideoRemoteServiceProvider));
});

final movieVideoNotifierProvider =
    StateNotifierProvider<VideoNotifier, VideoState>((ref) {
  return VideoNotifier(ref.watch(videoMovieRepositoryProvider));
});

// ### Movies Reviews
final reviewRemoteServiceProvider = Provider<ReviewRemoteService>((ref) {
  return ReviewRemoteService(
    ref.watch(dioProvider),
    ref.watch(urlBuilderProvider),
  );
});

final movieReviewRepositoryProvider = Provider<MovieReviewRepository>((ref) {
  return MovieReviewRepository(
    ref.watch(reviewRemoteServiceProvider),
  );
});

final reviewNotifierProvider =
    StateNotifierProvider<ReviewsNotifier, ReviewState>((ref) {
  return ReviewsNotifier(ref.watch(movieReviewRepositoryProvider));
});
