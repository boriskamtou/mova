import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mova/src/features/movies/core/shared/providers.dart';

import '../../core/presentation/paginated_movie_gridview.dart';

@RoutePage()
class TopRatedMoviesScreen extends ConsumerStatefulWidget {
  const TopRatedMoviesScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _TopRatedMoviesScreenState();
}

class _TopRatedMoviesScreenState extends ConsumerState<TopRatedMoviesScreen> {
  @override
  void initState() {
    super.initState();

    Future.microtask(() => ref
        .read(topRatedMoviesStateNotifierProvider.notifier)
        .getNextTopRatedMoviesPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Top Rated Movies'),
      ),
      body: PaginatedMoviesGridView(
        paginatedMoviesNotifier: topRatedMoviesStateNotifierProvider,
        getNextPage: (ref) => ref
            .read(topRatedMoviesStateNotifierProvider.notifier)
            .getNextTopRatedMoviesPage(),
        noDataMessage: 'No Top Rated Movies!',
      ),
    );
  }
}
