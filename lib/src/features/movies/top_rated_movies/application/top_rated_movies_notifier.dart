import 'package:mova/src/features/movies/core/application/paginated_movies_notifier.dart';

import '../infrastructure/top_rated_movies_repository.dart';

class TopRatedMoviesNotifier extends PaginatedMoviesNotifier {
  final TopRatedMoviesRepository _repository;
  TopRatedMoviesNotifier(this._repository);

  Future<void> getNextPopularMoviePage() async {
    super.getNextPaginatedMoviePage(
        (page) => _repository.getTopRatedMoviesPage(page));
  }
}
