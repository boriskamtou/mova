import 'package:mova/src/features/movies/core/application/paginated_movies_notifier.dart';
import 'package:mova/src/features/movies/popular_movies/infrastructure/repositories/popular_movies_repository.dart';

class PopularMoviesNotifier extends PaginatedMoviesNotifier {
  final PopularMoviesRepository _repository;
  PopularMoviesNotifier(this._repository);

  Future<void> getNextPopularMoviePage() async {
    super.getNextPaginatedMoviePage(
        (page) => _repository.getPopularMoviesPage(page));
  }
}
