import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../utils/common_import.dart';
import '../../core/presentation/paginated_movie_gridview.dart';
import '../../core/shared/providers.dart';
import '../../top_rated_movies/presentation/widgets/go_to_search_tab_button.dart';

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
        actions: [
          GoToSearchTabButton(ref: ref),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () => ref
            .refresh(popularMoviesStateNotifierProvider.notifier)
            .getNextPopularMoviePage(),
        child: PaginatedMoviesGridView(
          paginatedMoviesNotifier: popularMoviesStateNotifierProvider,
          getNextPage: (ref) => ref
              .read(popularMoviesStateNotifierProvider.notifier)
              .getNextPopularMoviePage(),
          noDataMessage: '',
        ),
      ),
    );
  }
}
