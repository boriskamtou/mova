import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mova/src/features/movies/popular_movies/shared/providers.dart';

import '../../../theme/presentation/app_colors.dart';
import '../../popular_movies/application/popular_movies_notifier.dart';
import 'loading_movie_item.dart';
import 'movie_item.dart';

class PaginatedMoviesGridView extends ConsumerStatefulWidget {
  const PaginatedMoviesGridView({
    super.key,
  });

  @override
  ConsumerState<PaginatedMoviesGridView> createState() =>
      _PaginatedMoviesGridViewState();
}

class _PaginatedMoviesGridViewState
    extends ConsumerState<PaginatedMoviesGridView> {
  bool canLoadNextPage = false;
  @override
  Widget build(BuildContext context) {
    ref.listen<PopularMoviesState>(
      popularMoviesStateNotifierProvider,
      (prev, next) {
        next.map(
          initial: (_) => canLoadNextPage = true,
          loading: (_) => canLoadNextPage = false,
          loaded: (_) => canLoadNextPage = _.isNextPageAvailable,
          failure: (_) {
            canLoadNextPage = false;
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: Colors.transparent,
                content: Card(
                  color: Theme.of(context).colorScheme.error,
                  child: ListTile(
                    leading: const Icon(
                      Icons.warning,
                      color: AppColors.white,
                    ),
                    title: Text(_.failure.message!),
                    trailing: IconButton(
                      onPressed: () {
                        ref
                            .read(popularMoviesStateNotifierProvider.notifier)
                            .getNextPopularMoviePage();
                      },
                      icon: const Icon(
                        Icons.refresh_outlined,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
    );

    return Consumer(
      builder: (context, ref, child) {
        final state = ref.watch(popularMoviesStateNotifierProvider);
        return NotificationListener<ScrollNotification>(
          onNotification: (notification) {
            final metrics = notification.metrics;
            final limit =
                metrics.maxScrollExtent - metrics.viewportDimension / 3;

            if (canLoadNextPage && metrics.pixels >= limit) {
              debugPrint("Load pagination");
              canLoadNextPage = false;
              ref
                  .read(popularMoviesStateNotifierProvider.notifier)
                  .getNextPopularMoviePage();
            }

            return false;
          },
          child: _PaginatedGridView(state: state),
        );
      },
    );
  }
}

class _PaginatedGridView extends StatelessWidget {
  final PopularMoviesState state;

  const _PaginatedGridView({Key? key, required this.state}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.only(
        top: 16,
        bottom: 16,
        left: 24,
        right: 24,
      ),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: .75,
      ),
      itemCount: state.map(
        initial: (_) => 0,
        loading: (_) => _.movies.entity.length + _.itemPerPage,
        loaded: (_) => _.movies.entity.length,
        failure: (_) => _.movies.entity.length + 1,
      ),
      itemBuilder: (context, i) => state.map(
        initial: (_) => const Center(
          child: Text('intial'),
        ),
        loading: (_) {
          if (i < _.movies.entity.length) {
            return MovieItem(
              movie: _.movies.entity[i],
            );
          } else {
            return const LoadingMovieItem();
          }
        },
        loaded: (_) => MovieItem(
          movie: _.movies.entity[i],
        ),
        failure: (_) {
          if (i < _.movies.entity.length) {
            return MovieItem(
              movie: _.movies.entity[i],
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
