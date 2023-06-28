import 'package:material_floating_search_bar_2/material_floating_search_bar_2.dart';
import 'package:mova/src/features/movies/core/presentation/paginated_movie_gridview.dart';
import 'package:mova/src/features/movies/search/shared/providers.dart';
import 'package:mova/src/l10n/app_localizations.dart';
import 'package:mova/src/utils/common_import.dart';

class DiscoveryTab extends ConsumerStatefulWidget {
  const DiscoveryTab({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DiscoveryTabState();
}

class _DiscoveryTabState extends ConsumerState<DiscoveryTab> {
  late FloatingSearchBarController _controller;
  late ScrollController _scrollController;

  @override
  void initState() {
    _controller = FloatingSearchBarController();
    _scrollController = ScrollController();
    Future.microtask(
      () => ref.read(searchHistoryNotifier.notifier).watchSearchTerms(),
    );
    super.initState();
  }

  void _putSearchTermFirst(String searchTerm) {
    ref.read(searchHistoryNotifier.notifier).putSearchTermFirst(searchTerm);
    _controller.close();
  }

  void _addSearchTerm(String searchTerm) async {
    await ref.read(searchHistoryNotifier.notifier).addSearchTerm(searchTerm);
    _controller.close();
  }

  void _moveToTop() {
    if (_scrollController.hasClients) {
      _scrollController.animateTo(0.0,
          duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: AppSizes.p20),
        child: FloatingSearchBar(
          controller: _controller,
          automaticallyImplyBackButton: false,
          hint: l10n.searchTabSearchMovieLabel,
          clearQueryOnClose: false,
          elevation: 0,
          actions: [
            FloatingSearchBarAction.searchToClear(
              showIfClosed: false,
              searchButtonSemanticLabel:
                  l10n.searchTabSearchButtonSemanticLabel,
              clearButtonSemanticLabel: l10n.searchTabClearButtonSemanticLabel,
              color: Theme.of(context).textTheme.headlineMedium!.color,
            ),
            FloatingSearchBarAction.icon(
              icon: Image.asset(
                'assets/icons/search.png',
                width: 20,
                color: Theme.of(context).textTheme.headlineMedium!.color,
              ),
              onTap: () {
                FocusScope.of(context).unfocus();
                ref
                    .read(searchMovieNotifierProvider.notifier)
                    .getFirstSearchedMoviePage(_controller.query);
                _moveToTop();
                _controller.close();
              },
            ),
          ],
          backgroundColor: Theme.of(context).inputDecorationTheme.fillColor,
          scrollPadding: const EdgeInsets.only(top: AppSizes.p16, bottom: 56),
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
          onSubmitted: (String searchedMovie) async {
            setState(() {
              _controller.query = searchedMovie;
            });
            _addSearchTerm(searchedMovie);
            await ref
                .read(searchMovieNotifierProvider.notifier)
                .getFirstSearchedMoviePage(searchedMovie);
          },
          builder: (context, transaition) => Consumer(
            builder: (context, ref, child) {
              final searchHistoryState = ref.watch(searchHistoryNotifier);
              return searchHistoryState.map(
                data: (data) => Material(
                  color: Theme.of(context).cardColor,
                  elevation: 4,
                  borderRadius: BorderRadius.circular(AppSizes.p8),
                  clipBehavior: Clip.hardEdge,
                  child: _controller.query.isEmpty && data.value.isEmpty
                      ? Container(
                          height: 56,
                          alignment: Alignment.center,
                          child: Text(
                            l10n.searchTabRecentSearchLabel,
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
                                    _putSearchTermFirst(searchedMovie);
                                    ref
                                        .read(searchMovieNotifierProvider
                                            .notifier)
                                        .getFirstSearchedMoviePage(
                                            _controller.query.trim());
                                    _moveToTop();
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
                                    splashRadius: AppSizes.p18,
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
                loading: (_) =>
                    const ListTile(title: LinearProgressIndicator()),
                error: (_) => Center(
                    child: Text(l10n.searchTabCannotLoadRecentSearchsLabel)),
              );
            },
          ),
          body: Padding(
            padding: const EdgeInsets.only(top: 100),
            child: PaginatedMoviesGridView(
              appliedPaddingTop: true,
              scrollController: _scrollController,
              paginatedMoviesNotifier: searchMovieNotifierProvider,
              getNextPage: (ref) => ref
                  .read(searchMovieNotifierProvider.notifier)
                  .getSearchMovies(_controller.query),
              noDataMessage: l10n.searchTabNoMovieFoundLabel,
              useWidgetToDisplayEmptyList: true,
              showEmptyList: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      l10n.searchTabNoMovieSearchTitleLabel,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: Theme.of(context).primaryColor,
                            fontSize: AppSizes.p18,
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                    gapH10,
                    Text(
                      l10n.searchTabNoMovieSearchDesciptionLabel,
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
