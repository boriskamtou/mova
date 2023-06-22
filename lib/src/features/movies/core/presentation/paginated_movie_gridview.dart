import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mova/src/features/movies/core/application/paginated_movies_notifier.dart';
import 'package:mova/src/features/movies/core/presentation/widgets/no_data.dart';

import '../../../theme/presentation/app_colors.dart';
import 'loading_movie_item.dart';
import 'movie_item.dart';

class PaginatedMoviesGridView extends ConsumerStatefulWidget {
  final AutoDisposeStateNotifierProvider<PaginatedMoviesNotifier,
      PaginatedMoviesState> paginatedMoviesNotifier;

  final void Function(WidgetRef ref) getNextPage;

  final String noDataMessage;

  final bool isAlreadyInDetail;

  final ScrollController? scrollController;
  final bool? appliedPaddingTop;
  final bool useWidgetToDisplayEmptyList;
  final Widget showEmptyList;

  const PaginatedMoviesGridView({
    super.key,
    required this.paginatedMoviesNotifier,
    required this.getNextPage,
    required this.noDataMessage,
    this.showEmptyList = const SizedBox.shrink(),
    this.scrollController,
    this.isAlreadyInDetail = false,
    this.appliedPaddingTop = false,
    this.useWidgetToDisplayEmptyList = false,
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
    ref.listen<PaginatedMoviesState>(
      widget.paginatedMoviesNotifier,
      (prev, next) {
        next.map(
          initial: (_) => canLoadNextPage = true,
          loading: (_) => canLoadNextPage = false,
          loaded: (_) {
            if (!_.movies.isFresh) {
              EasyLoading.showInfo(
                  'You are not connected. Please check your network connexion');
            }
            return canLoadNextPage = _.isNextPageAvailable;
          },
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
                      onPressed: () => widget.getNextPage,
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
        final state = ref.watch(widget.paginatedMoviesNotifier);
        return NotificationListener<ScrollNotification>(
          onNotification: (notification) {
            final metrics = notification.metrics;
            final limit =
                metrics.maxScrollExtent - metrics.viewportDimension / 3;

            if (canLoadNextPage && metrics.pixels >= limit) {
              canLoadNextPage = false;
              widget.getNextPage(ref);
            }

            return false;
          },
          child: state.maybeWhen(
            orElse: () => false,
            loaded: (movies, _) => movies.entity.isNotEmpty,
          )
              ? _PaginatedGridView(
                  state: state,
                  isAlreadyInDetailScreen: widget.isAlreadyInDetail,
                  scrollController: widget.scrollController,
                  appliedPadding: widget.appliedPaddingTop,
                  noDataMessage: widget.noDataMessage,
                )
              : widget.useWidgetToDisplayEmptyList
                  ? widget.showEmptyList
                  : NoData(
                      message: widget.noDataMessage,
                    ),
        );
      },
    );
  }
}

class _PaginatedGridView extends StatefulWidget {
  final PaginatedMoviesState state;
  final bool isAlreadyInDetailScreen;
  final ScrollController? scrollController;
  final bool? appliedPadding;
  final String noDataMessage;

  const _PaginatedGridView({
    Key? key,
    required this.state,
    this.isAlreadyInDetailScreen = false,
    this.scrollController,
    this.appliedPadding = false,
    required this.noDataMessage,
  }) : super(key: key);

  @override
  State<_PaginatedGridView> createState() => _PaginatedGridViewState();
}

class _PaginatedGridViewState extends State<_PaginatedGridView> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.only(
        top: 16,
        bottom: widget.appliedPadding! ? 100 : 16,
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
      itemCount: widget.state.map(
        initial: (_) => 0,
        loading: (_) => _.movies.entity.length + _.itemPerPage,
        loaded: (_) => _.movies.entity.length,
        failure: (_) => _.movies.entity.length + 1,
      ),
      itemBuilder: (context, i) => widget.state.map(
        initial: (_) => const SizedBox.shrink(),
        loading: (_) {
          if (i < _.movies.entity.length) {
            return MovieItem(
              scrollController: widget.scrollController,
              isAlreadyInDetail: widget.isAlreadyInDetailScreen,
              movie: _.movies.entity[i],
            );
          } else {
            return const LoadingMovieItem();
          }
        },
        loaded: (_) {
          return MovieItem(
            scrollController: widget.scrollController,
            isAlreadyInDetail: widget.isAlreadyInDetailScreen,
            movie: _.movies.entity[i],
          );
        },
        failure: (_) {
          if (i < _.movies.entity.length) {
            return MovieItem(
              scrollController: widget.scrollController,
              isAlreadyInDetail: widget.isAlreadyInDetailScreen,
              movie: _.movies.entity[i],
            );
          } else {
            return NoData(message: _.failure.message ?? '');
          }
        },
      ),
    );
  }
}
