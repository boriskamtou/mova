import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_youtube_downloader/flutter_youtube_downloader.dart';
import 'package:mova/src/features/movies/bookmark/shared/providers.dart';
import 'package:mova/src/features/movies/core/presentation/widgets/no_data.dart';
import 'package:mova/src/features/movies/similar_movies/shared/providers.dart';
import 'package:mova/src/routing/app_router.dart';
import 'package:readmore/readmore.dart';

import '../../../../constants/app_sizes.dart';
import '../../movie_detail/shared/providers.dart';
import '../domain/entities/movie.dart';
import '../shared/providers.dart';
import 'paginated_movie_gridview.dart';
import 'widgets/loaded_review.dart';
import 'widgets/loaded_videos.dart';
import 'widgets/movie_action_button.dart';
import 'widgets/play_and_download_video_button.dart';
import 'widgets/row_movie_info.dart';

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

  final ScrollController _scrollController = ScrollController();

  String _extractedLink = 'Loading...';

  String youTube_link = "https://www.youtube.com/watch?v=nRhYQlg8fVw";

  Future<void> extractYoutubeLink() async {
    String link;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      link =
          await FlutterYoutubeDownloader.extractYoutubeLink(youTube_link, 18);
    } on PlatformException {
      link = 'Failed to Extract YouTube Video Link.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _extractedLink = link;
    });
  }

  Future<void> downloadVideo() async {
    final result = await FlutterYoutubeDownloader.downloadVideo(
        youTube_link, "Video Title goes Here", 18);
    print(result);
    print('on tap');
  }

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
        ref
            .read(similarMoviesNotifierProviderProvider.notifier)
            .getSimilarMovies(widget.movie.id),
        ref
            .read(movieDetailNotifierProvider.notifier)
            .getMovieDetail(widget.movie.id),
        extractYoutubeLink(),
      ]);
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final videoState = ref.watch(movieVideoNotifierProvider);
    final reviewsState = ref.watch(reviewNotifierProvider);
    final movieDetailState = ref.watch(movieDetailNotifierProvider);
    ref.listen(bookmarkNotifierProvider, (prev, next) {
      next.maybeWhen(
        orElse: () {},
        saveLoading: () => EasyLoading.show(),
        saveComplete: (movie) =>
            EasyLoading.showSuccess('${movie.title} has been add to your list'),
      );
    });
    return Scaffold(
      body: Builder(
        builder: (BuildContext context) => NestedScrollView(
          physics: const BouncingScrollPhysics(),
          controller: _scrollController,
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                expandedHeight: 300,
                flexibleSpace: FlexibleSpaceBar(
                  background: movieDetailState.map(
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
                      return CachedNetworkImage(
                        imageUrl: data.movieDetail.fullBackDropUrl,
                        fit: BoxFit.cover,
                      );
                    },
                    failed: (_) => NoData(message: _.message!),
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    gapH20,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        children: [
                          movieDetailState.maybeMap(
                            orElse: () => Container(),
                            loading: (_) => Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 10,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade400,
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                  )
                                      .animate(
                                          onPlay: (controller) =>
                                              controller.repeat())
                                      .shimmer(delay: 900.ms, duration: 400.ms),
                                ),
                                gapW10,
                                Container(
                                  height: 24,
                                  width: 24,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey.shade400,
                                  ),
                                )
                                    .animate(
                                        onPlay: (controller) =>
                                            controller.repeat())
                                    .shimmer(delay: 900.ms, duration: 400.ms),
                                gapW16,
                                Container(
                                  height: 24,
                                  width: 24,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey.shade400,
                                  ),
                                )
                                    .animate(
                                        onPlay: (controller) =>
                                            controller.repeat())
                                    .shimmer(delay: 900.ms, duration: 400.ms),
                              ],
                            ),
                            loaded: (data) => Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Text(
                                    data.movieDetail.title,
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
                                MovieActionButton(
                                  onPressed: () async {
                                    await ref
                                        .read(bookmarkNotifierProvider.notifier)
                                        .saveMovieToMyList(widget.movie);
                                  },
                                  imageUrl: 'assets/icons/bookmark.png',
                                ),
                                MovieActionButton(
                                  onPressed: () {},
                                  imageUrl: 'assets/icons/send.png',
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    gapH16,
                    movieDetailState.maybeMap(
                      orElse: () => Container(),
                      loaded: (data) => RowMovieInfos(
                        movie: data.movieDetail,
                      ),
                      loading: (_) => Container(
                        height: 10,
                        width: double.infinity,
                        margin: const EdgeInsets.symmetric(
                            horizontal: AppSizes.p16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.grey.shade400,
                        ),
                      )
                          .animate(onPlay: (controller) => controller.repeat())
                          .shimmer(delay: 900.ms, duration: 400.ms),
                    ),
                    gapH16,
                    PlayAndDownloadVideoButtons(
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
                      onDownloadPressed: downloadVideo,
                    ),
                    gapH10,
                    movieDetailState.maybeMap(
                      orElse: () => Container(),
                      loaded: (data) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: AppSizes.p16),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Text(
                              'Genre: ${data.movieDetail.stringGenres()}',
                              textAlign: TextAlign.left,
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ),
                        );
                      },
                      loading: (_) => Container(
                        height: 10,
                        width: double.infinity,
                        margin: const EdgeInsets.symmetric(
                            horizontal: AppSizes.p16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.grey.shade400,
                        ),
                      )
                          .animate(onPlay: (controller) => controller.repeat())
                          .shimmer(delay: 900.ms, duration: 400.ms),
                    ),
                    gapH10,
                    movieDetailState.maybeMap(
                      orElse: () => Container(),
                      loaded: (data) => Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: AppSizes.p16),
                        child: ReadMoreText(
                          widget.movie.overview,
                          trimLines: 3,
                          trimCollapsedText: 'View more',
                          trimExpandedText: ' View less',
                          colorClickableText: Theme.of(context).primaryColor,
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                      ),
                      loading: (_) => Container(
                        height: 10,
                        width: double.infinity,
                        margin: const EdgeInsets.symmetric(
                            horizontal: AppSizes.p16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.grey.shade400,
                        ),
                      )
                          .animate(onPlay: (controller) => controller.repeat())
                          .shimmer(delay: 900.ms, duration: 400.ms),
                    ),
                    gapH10,
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: AppSizes.p16),
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
                          labelStyle: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .copyWith(
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
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            controller: _tabController,
            children: [
              LoadedVideos(videoState: videoState),
              PaginatedMoviesGridView(
                scrollController: _scrollController,
                isAlreadyInDetail: true,
                paginatedMoviesNotifier: similarMoviesNotifierProviderProvider,
                getNextPage: (ref) => ref
                    .read(similarMoviesNotifierProviderProvider.notifier)
                    .getSimilarMovies(widget.movie.id),
                noDataMessage: 'No Similar movies found',
              ),
              LoadedReview(reviewState: reviewsState),
            ],
          ),
        ),
      ),
    );
  }
}
