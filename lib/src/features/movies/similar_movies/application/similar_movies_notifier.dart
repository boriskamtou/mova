import 'package:mova/src/features/movies/core/application/paginated_movies_notifier.dart';
import 'package:mova/src/features/movies/similar_movies/infrastructure/similar_movies_repository.dart';

class SimilarMoviesNotifier extends PaginatedMoviesNotifier {
  final SimilarMoviesRepository _repository;

  SimilarMoviesNotifier(this._repository);

  Future<void> getSimilarMovies(int movieId) async {
    super.getNextPaginatedMoviePage(
        (page) => _repository.getSimilarMoviesPage(page, movieId));
  }
}
