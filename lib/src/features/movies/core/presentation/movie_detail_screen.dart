import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mova/src/features/movies/core/presentation/widgets/loaded_videos.dart';
import 'package:mova/src/features/theme/presentation/app_colors.dart';
import 'package:mova/src/routing/app_router.dart';
import 'package:readmore/readmore.dart';

import '../../../../constants/app_sizes.dart';
import '../domain/entities/movie.dart';
import '../shared/providers.dart';
import 'widgets/loaded_review.dart';

@RoutePage()
class MovieDetailScreen extends ConsumerStatefulWidget {
  final Movie movie;

  const MovieDetailScreen({Key? key, required this.movie}) : super(key: key);

  @override
  ConsumerState<MovieDetailScreen> createState() => _MovieDetailScreenState();
}

class _MovieDetailScreenState extends ConsumerState<MovieDetailScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    Future.microtask(() {
      return Future.wait([
        ref
            .read(movieVideoNotifierProvider.notifier)
            .getVideoMovies(widget.movie.id),
        ref
            .read(reviewNotifierProvider.notifier)
            .getMovieReviews(widget.movie.id),
      ]);
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final videoState = ref.watch(movieVideoNotifierProvider);
    final reviewsState = ref.watch(reviewNotifierProvider);
    return Scaffold(
      body: CustomScrollView(
        primary: true,
        shrinkWrap: true,
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            expandedHeight: 300,
            stretch: true,
            pinned: true,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              background: CachedNetworkImage(
                imageUrl: widget.movie.fullBackDropUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverFillRemaining(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                gapH20,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text(
                              widget.movie.title,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                  ),
                            ),
                          ),
                          gapW10,
                          _MovieActionButton(
                            onPressed: () {},
                            imageUrl: 'assets/icons/bookmark.png',
                          ),
                          _MovieActionButton(
                            onPressed: () {},
                            imageUrl: 'assets/icons/send.png',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                gapH16,
                _RowMovieInfos(
                  movie: widget.movie,
                ),
                gapH16,
                _PlayAndDownloadVideoButtons(
                  onPlayPressed: () {
                    context.navigateTo(
                      VideoPlayerRoute(
                        videoKey: videoState.maybeMap(
                          orElse: () {
                            return null;
                          },
                          data: (_) => _.videos[0].videoKey,
                        ),
                      ),
                    );
                  },
                  onDownloadPressed: () {},
                ),
                gapH10,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: AppSizes.p16),
                  child: ReadMoreText(
                    widget.movie.overview,
                    trimLines: 3,
                    trimCollapsedText: 'View more',
                    trimExpandedText: ' View less',
                    colorClickableText: Theme.of(context).primaryColor,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                gapH10,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: AppSizes.p16),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          width: .5,
                          color: Theme.of(context).unselectedWidgetColor,
                        ),
                      ),
                    ),
                    child: TabBar(
                      controller: _tabController,
                      indicatorColor: Theme.of(context).primaryColor,
                      indicatorPadding: const EdgeInsets.only(bottom: -1),
                      unselectedLabelColor:
                          Theme.of(context).unselectedWidgetColor,
                      labelColor: Theme.of(context).primaryColor,
                      labelStyle:
                          Theme.of(context).textTheme.headlineMedium!.copyWith(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                wordSpacing: 1,
                              ),
                      indicatorWeight: 3,
                      tabs: const [
                        Tab(text: "Trailers"),
                        Tab(text: "Similars"),
                        Tab(text: "Comments"),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    physics: const BouncingScrollPhysics(),
                    controller: _tabController,
                    children: [
                      LoadedVideos(videoState: videoState),
                      const Text('Similars'),
                      LoadedReview(reviewState: reviewsState),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _PlayAndDownloadVideoButtons extends StatelessWidget {
  final VoidCallback onPlayPressed;
  final VoidCallback onDownloadPressed;
  const _PlayAndDownloadVideoButtons(
      {required this.onPlayPressed, required this.onDownloadPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.p16),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton.icon(
              onPressed: onPlayPressed,
              icon: const Icon(Icons.play_circle),
              label: const Text('Play'),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: AppSizes.p8),
              ),
            ),
          ),
          gapW16,
          Expanded(
            child: OutlinedButton.icon(
              onPressed: onDownloadPressed,
              icon: Icon(
                Icons.download,
                color: Theme.of(context).primaryColor,
              ),
              label: Text(
                'Download',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                ),
              ),
              style: OutlinedButton.styleFrom(
                backgroundColor: AppColors.transparent,
                side: BorderSide(
                  width: 2,
                  color: Theme.of(context).primaryColor,
                ),
                padding: const EdgeInsets.symmetric(vertical: AppSizes.p8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _RowMovieInfos extends StatelessWidget {
  final Movie movie;
  const _RowMovieInfos({
    required this.movie,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      primary: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSizes.p16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RatingBar.builder(
              initialRating: movie.voteAverage,
              minRating: 0,
              maxRating: 10,
              direction: Axis.horizontal,
              itemPadding: EdgeInsets.zero,
              allowHalfRating: true,
              itemCount: 1,
              itemSize: 20,
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Theme.of(context).primaryColor,
              ),
              onRatingUpdate: (rating) {},
            ),
            gapW8,
            Text(
              movie.voteAverage.toString(),
              style: TextStyle(
                color: Theme.of(context).primaryColor,
              ),
            ),
            gapW8,
            Icon(
              Icons.arrow_forward_ios,
              color: Theme.of(context).primaryColor,
              size: 16,
            ),
            gapW8,
            Text(
              DateTime.parse(movie.releaseDate).year.toString(),
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            gapW16,
            _MovieCardInfo(
              info: movie.originalLanguage,
            ),
            gapW16,
            _MovieCardInfo(
              info: '${movie.voteCount} votes',
            ),
            gapW16,
            _MovieCardInfo(
              info: movie.adult ? 'Adult' : 'Free for children',
            ),
          ],
        ),
      ),
    );
  }
}

class _MovieCardInfo extends StatelessWidget {
  final String info;
  const _MovieCardInfo({required this.info});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Theme.of(context).primaryColor,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSizes.p8,
          vertical: AppSizes.p4,
        ),
        child: Text(
          info,
          style: TextStyle(
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }
}

class _MovieActionButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String imageUrl;
  const _MovieActionButton({
    required this.onPressed,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      splashRadius: 20,
      icon: SizedBox(
        height: 20,
        width: 20,
        child: Image.asset(
          imageUrl,
          color: Theme.of(context).iconTheme.color,
        ),
      ),
    );
  }
}
