import 'package:mova/src/features/movies/core/application/paginated_movies_notifier.dart';
import 'package:mova/src/features/movies/upcomming_movie/infrastructure/up_coming_movies_repository.dart';

class UpComingMoviesNotifier extends PaginatedMoviesNotifier {
  final UpComingMoviesRepository _repository;
  UpComingMoviesNotifier(this._repository);

  Future<void> getNextUpcomingMoviesPage() async {
    super.getNextPaginatedMoviePage(
        (page) => _repository.getUpcomingMoviesPage(page));
  }
}
