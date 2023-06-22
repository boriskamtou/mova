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

  @override
  void initState() {
    _controller = FloatingSearchBarController();
    Future.microtask(
      () => ref.read(searchHistoryNotifier.notifier).watchSearchTerms(),
    );
    super.initState();
  }

  void pushPageAndPutFirstInHistory(String searchTerm) {
    ref.read(searchHistoryNotifier.notifier).putSearchTermFirst(searchTerm);

    _controller.close();
  }

  void pushPageAndAddToHistory(String searchTerm) async {
    await ref.read(searchHistoryNotifier.notifier).addSearchTerm(searchTerm);
    _controller.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: FloatingSearchBar(
          controller: _controller,
          automaticallyImplyBackButton: false,
          hint: 'Search movie...',
          clearQueryOnClose: false,
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () async {
                FocusScope.of(context).unfocus();
                ref
                    .read(searchMovieNotifierProvider.notifier)
                    .getFirstSearchedMoviePage(_controller.query);
                _controller.close();
              },
              splashRadius: 20,
              icon: Image.asset(
                'assets/icons/search.png',
                width: 20,
                color: Theme.of(context).textTheme.headlineMedium!.color,
              ),
            ),
          ],
          backgroundColor: Theme.of(context).inputDecorationTheme.fillColor,
          scrollPadding: const EdgeInsets.only(top: 16, bottom: 56),
          transitionCurve: Curves.easeInOut,
          physics: const BouncingScrollPhysics(),
          onQueryChanged: (query) {
            setState(() {
              _controller.query = query.trim();
            });
            ref
                .read(searchMovieNotifierProvider.notifier)
                .getFirstSearchedMoviePage(_controller.query.trim());
          },
          transition: CircularFloatingSearchBarTransition(),
          onSubmitted: (String searchedMovie) {
            pushPageAndAddToHistory(searchedMovie);

            setState(() {
              _controller.query = searchedMovie;
              ref
                  .read(searchMovieNotifierProvider.notifier)
                  .getFirstSearchedMoviePage(searchedMovie);
            });
          },
          builder: (context, transaition) => Consumer(
            builder: (context, ref, child) {
              final searchHistoryState = ref.watch(searchHistoryNotifier);
              return searchHistoryState.map(
                data: (data) => Material(
                  color: Theme.of(context).cardColor,
                  elevation: 4,
                  borderRadius: BorderRadius.circular(8),
                  clipBehavior: Clip.hardEdge,
                  child: _controller.query.isEmpty && data.value.isEmpty
                      ? Container(
                          height: 56,
                          alignment: Alignment.center,
                          child: Text(
                            'No rencent searchs found!',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        )
                      : Column(
                          mainAxisSize: MainAxisSize.min,
                          children: data.value
                              .map(
                                (searchedMovie) => ListTile(
                                  onTap: () {
                                    setState(() {
                                      _controller.query = searchedMovie;
                                    });
                                    pushPageAndPutFirstInHistory(searchedMovie);
                                    ref
                                        .read(searchMovieNotifierProvider
                                            .notifier)
                                        .getFirstSearchedMoviePage(
                                            _controller.query.trim());
                                  },
                                  title: Text(
                                    searchedMovie,
                                    maxLines: 1,
                                    style: const TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  leading: const Icon(Icons.history),
                                  trailing: IconButton(
                                    splashRadius: 18,
                                    onPressed: () => ref
                                        .read(searchHistoryNotifier.notifier)
                                        .deleteSearchTerm(searchedMovie),
                                    icon: const Icon(Icons.close),
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                ),
                loading: (_) => const ListTile(
                  title: LinearProgressIndicator(),
                ),
                error: (_) => const Center(
                  child: Text('Error'),
                ),
              );
            },
          ),
          body: Padding(
            padding: const EdgeInsets.only(top: 100),
            child: PaginatedMoviesGridView(
              appliedPaddingTop: true,
              paginatedMoviesNotifier: searchMovieNotifierProvider,
              getNextPage: (ref) => ref
                  .read(searchMovieNotifierProvider.notifier)
                  .getSearchMovies(_controller.query),
              noDataMessage: 'No movies found',
              useWidgetToDisplayEmptyList: true,
              showEmptyList: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'No movie found!',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: Theme.of(context).primaryColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                    gapH10,
                    Text(
                      "It seems that you haven't found\nyet the movie your're looking for",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
