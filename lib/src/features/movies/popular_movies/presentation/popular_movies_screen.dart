import 'package:auto_route/auto_route.dart';
import 'package:mova/src/l10n/app_localizations.dart';

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
    final l10n = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.popularMovieScreenTitleLabel),
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
          noDataMessage: l10n.popularMoviesScreenNoMoviesFoundLabel,
        ),
      ),
    );
  }
}
