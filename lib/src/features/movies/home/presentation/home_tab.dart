import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mova/src/features/movies/core/presentation/widgets/no_data.dart';
import 'package:mova/src/features/movies/core/shared/providers.dart';
import 'package:mova/src/features/movies/upcomming_movie/shared/providers.dart';
import 'package:mova/src/routing/app_router.dart';

import '../../../../utils/common_import.dart';
import '../../top_rated_movies/shared/providers.dart';
import 'see_all_widget.dart';
import 'widgets/list_of_top_movies_widget.dart';
import 'widgets/loading_list_of_top_movies_widget.dart';
import 'widgets/loading_top_movie.dart';
import 'widgets/top_movie_widget.dart';

class HomeTab extends ConsumerStatefulWidget {
  const HomeTab({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeTabState();
}

class _HomeTabState extends ConsumerState<HomeTab> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      return Future.wait([
        ref
            .read(popularMoviesStateNotifierProvider.notifier)
            .getNextPopularMoviePage(),
        ref
            .read(topRatedMoviesStateNotifierProvider.notifier)
            .getNextTopRatedMoviesPage(),
        ref
            .read(upComingMoviesStateNotifierProvider.notifier)
            .getNextUpcomingMoviesPage(),
      ]);
    });
  }

  @override
  Widget build(BuildContext context) {
    final popularMoviesState = ref.watch(popularMoviesStateNotifierProvider);
    final topRatedMoviesState = ref.watch(topRatedMoviesStateNotifierProvider);
    final upComingMoviesState = ref.watch(upComingMoviesStateNotifierProvider);

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      primary: true,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 100),
        child: Column(
          children: [
            popularMoviesState.map(
              initial: (_) => const LoadingTopMovie(),
              loading: (_) => Container(
                height: MediaQuery.of(context).size.height / 2.3,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                ),
              )
                  .animate(onPlay: (controller) => controller.repeat())
                  .shimmer(delay: 900.ms, duration: 400.ms),
              loaded: (data) {
                return TopMovie(
                  movie: data.movies.entity[0],
                );
              },
              failure: (_) => NoData(
                message: _.failure.message!,
              ),
            ),
            gapH18,
            RowTitle(
              title: 'Top 10 Popular Movies',
              onSeeAllTap: () {
                context.navigateTo(const PopularMoviesRoute());
              },
            ),
            gapH18,
            popularMoviesState.map(
              initial: (_) => Container(),
              loading: (_) => const LoadingListOfTopMovies(),
              loaded: (data) {
                return ListOfTopMovies(
                  movies: data.movies.entity,
                  messageIfEmptyList: 'No Popular Movies found!',
                );
              },
              failure: (_) => NoData(
                message: _.failure.message!,
              ),
            ),
            gapH18,
            RowTitle(
              title: 'Top 10 Rated Movies',
              onSeeAllTap: () {
                context.navigateTo(const TopRatedMoviesRoute());
              },
            ),
            gapH18,
            topRatedMoviesState.map(
              initial: (_) => Container(),
              loading: (_) => const LoadingListOfTopMovies(),
              loaded: (data) {
                return ListOfTopMovies(
                  movies: data.movies.entity,
                  messageIfEmptyList: 'No Top Rated Movies Found!',
                );
              },
              failure: (_) => NoData(
                message: _.failure.message!,
              ),
            ),
            gapH18,
            RowTitle(
              title: 'Trending Movies',
              onSeeAllTap: () {
                context.navigateTo(const UpcomingMoviesRoute());
              },
            ),
            gapH18,
            upComingMoviesState.map(
              initial: (_) => const LoadingListOfTopMovies(),
              loading: (_) => const LoadingListOfTopMovies(),
              loaded: (
                data,
              ) {
                return ListOfTopMovies(
                  movies: data.movies.entity,
                  messageIfEmptyList: 'No Up Coming Movies Found!',
                );
              },
              failure: (_) => NoData(message: _.failure.message!),
            ),
            gapH18,
          ],
        ),
      ),
    );
  }
}
