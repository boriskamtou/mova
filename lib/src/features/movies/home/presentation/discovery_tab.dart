import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mova/src/features/movies/core/presentation/paginated_movie_gridview.dart';
import 'package:mova/src/features/movies/search/shared/providers.dart';
import 'package:mova/src/utils/common_import.dart';

import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class DiscoveryTab extends ConsumerStatefulWidget {
  const DiscoveryTab({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DiscoveryTabState();
}

class _DiscoveryTabState extends ConsumerState<DiscoveryTab> {
  late FloatingSearchBarController _controller;
  String searchTerm = '';

  @override
  void initState() {
    _controller = FloatingSearchBarController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: FloatingSearchBar(
          controller: _controller,
          hint: 'Search...',
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () async {
                FocusScope.of(context).unfocus();
                ref
                    .read(searchMovieNotifierProvider.notifier)
                    .getSearchMovies(_controller.query);
              },
              splashRadius: 20,
              icon: Image.asset(
                'assets/icons/search.png',
                width: 20,
              ),
            ),
          ],
          backgroundColor: Theme.of(context).inputDecorationTheme.fillColor,
          scrollPadding: const EdgeInsets.only(top: 16, bottom: 56),
          transitionCurve: Curves.easeInOut,
          physics: const BouncingScrollPhysics(),
          onQueryChanged: (query) {
            setState(() {
              _controller.query = query;
              ref
                  .read(searchMovieNotifierProvider.notifier)
                  .getSearchMovies(_controller.query);
            });
          },
          transition: CircularFloatingSearchBarTransition(),
          builder: (context, transition) {
            return Container();
          },
          body: Padding(
            padding: const EdgeInsets.only(top: 100),
            child: PaginatedMoviesGridView(
              appliedPaddingTop: true,
              paginatedMoviesNotifier: searchMovieNotifierProvider,
              getNextPage: (ref) => ref
                  .read(searchMovieNotifierProvider.notifier)
                  .getSearchMovies(_controller.query),
              noDataMessage: 'No movies found',
            ),
          ),
        ),
      ),
    );
  }
}
