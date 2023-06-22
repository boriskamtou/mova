import 'package:mova/src/features/movies/search/infrastructure/search_movie_repository.dart';

import '../../core/application/paginated_movies_notifier.dart';

class SearchMovieNotifier extends PaginatedMoviesNotifier {
  final SearchMovieRepository _repository;

  SearchMovieNotifier(this._repository);

  Future<void> getFirstSearchedMoviePage(String query) async {
    super.resetState();
    await getSearchMovies(query);
  }

  Future<void> getSearchMovies(String searchTerm) async {
    super.getNextPaginatedMoviePage((page) {
      return _repository.getSearchMovies(searchTerm, page);
    });
  }
}
