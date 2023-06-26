import 'package:auto_route/auto_route.dart';
import 'package:mova/src/features/movies/top_rated_movies/presentation/widgets/go_to_search_tab_button.dart';

import '../../../../l10n/app_localizations.dart';
import '../../../../utils/common_import.dart';
import '../../core/presentation/paginated_movie_gridview.dart';
import '../shared/providers.dart';

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
    final l10n = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.topRateMovieScreenTopRatedTitleLabel),
        actions: [
          GoToSearchTabButton(ref: ref),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () => ref
            .refresh(topRatedMoviesStateNotifierProvider.notifier)
            .getNextTopRatedMoviesPage(),
        child: PaginatedMoviesGridView(
          paginatedMoviesNotifier: topRatedMoviesStateNotifierProvider,
          getNextPage: (ref) => ref
              .read(topRatedMoviesStateNotifierProvider.notifier)
              .getNextTopRatedMoviesPage(),
          noDataMessage: l10n.topRateMovieScreenNoTopRatedMovieFoundLabel,
        ),
      ),
    );
  }
}
