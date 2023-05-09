import 'package:hooks_riverpod/hooks_riverpod.dart';

class PopularMoviesNotifier extends StateNotifier<AsyncValue> {
  PopularMoviesNotifier() : super(const AsyncLoading());
}
