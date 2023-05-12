import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mova/src/features/movies/core/application/paginated_movies_notifier.dart';

final paginatedMovieNotifier =
    StateNotifierProvider<PaginatedMoviesNotifier, PaginatedMoviesState>((ref) {
  return PaginatedMoviesNotifier();
});
