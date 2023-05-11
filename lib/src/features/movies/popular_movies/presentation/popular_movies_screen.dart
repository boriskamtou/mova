import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/presentation/paginated_movie_gridview.dart';
import '../shared/providers.dart';

@RoutePage()
class PopularMoviesScreen extends ConsumerStatefulWidget {
  const PopularMoviesScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PopularMoviesScreenState();
}

class _PopularMoviesScreenState extends ConsumerState<PopularMoviesScreen> {
  @override
  void initState() {
    super.initState();

    Future.microtask(() => ref
        .read(popularMoviesStateNotifierProvider.notifier)
        .getNextPopularMoviePage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Popular Movies'),
      ),
      body: const PaginatedMoviesGridView(),
    );
  }
}
