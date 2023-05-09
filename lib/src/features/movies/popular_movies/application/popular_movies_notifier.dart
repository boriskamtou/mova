import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mova/src/features/core/domain/movie_response.dart';

class PopularMoviesNotifier extends StateNotifier<MovieResponse> {
  PopularMoviesNotifier(super.state);
}
