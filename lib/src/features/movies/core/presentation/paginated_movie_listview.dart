import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mova/src/features/movies/popular_movies/shared/providers.dart';

class PaginatedMoviesListView extends ConsumerWidget {
  const PaginatedMoviesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Consumer(builder: (context, ref, child) {
      final state = ref.watch(popularMoviesStateNotifierProvider);
      return ListView.builder(
        itemCount: state.map(
          initial: (_) => 0,
          loading: (_) => _.movies.entity.length + _.itemPerPage,
          loaded: (_) => _.movies.entity.length,
          failure: (_) => _.movies.entity.length + 1,
        ),
        itemBuilder: (context, i) => state.map(
          initial: (_) => const Center(
            child: Text('intial'),
          ),
          loading: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          loaded: (_) => Text(_.movies.entity[i].title),
          failure: (_) => Center(
            child: Text(_.failure.message!),
          ),
        ),
      );
    });
  }
}
