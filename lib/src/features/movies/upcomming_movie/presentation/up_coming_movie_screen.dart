import 'package:auto_route/auto_route.dart';
import 'package:mova/src/features/movies/core/presentation/paginated_movie_gridview.dart';
import 'package:mova/src/features/movies/upcomming_movie/shared/providers.dart';
import 'package:mova/src/l10n/app_localizations.dart';
import 'package:mova/src/utils/common_import.dart';

import '../../top_rated_movies/presentation/widgets/go_to_search_tab_button.dart';

@RoutePage()
class UpcomingMoviesScreen extends ConsumerStatefulWidget {
  const UpcomingMoviesScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _UpcomingMoviesScreenState();
}

class _UpcomingMoviesScreenState extends ConsumerState<UpcomingMoviesScreen> {
  @override
  void initState() {
    super.initState();

    Future.microtask(() => ref
        .read(upComingMoviesStateNotifierProvider.notifier)
        .getNextUpcomingMoviesPage());
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
            .refresh(upComingMoviesStateNotifierProvider.notifier)
            .getNextUpcomingMoviesPage(),
        child: PaginatedMoviesGridView(
          paginatedMoviesNotifier: upComingMoviesStateNotifierProvider,
          getNextPage: (ref) => ref
              .read(upComingMoviesStateNotifierProvider.notifier)
              .getNextUpcomingMoviesPage(),
          noDataMessage: l10n.topRatedMovieScreenNoMoviesFoundLabel,
        ),
      ),
    );
  }
}
