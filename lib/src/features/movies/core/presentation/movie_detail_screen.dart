// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:another_flushbar/flushbar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:mova/src/l10n/app_localizations.dart';
import 'package:readmore/readmore.dart';

import 'package:mova/src/features/movies/bookmark/shared/providers.dart';
import 'package:mova/src/features/movies/core/presentation/widgets/no_data.dart';
import 'package:mova/src/features/movies/similar_movies/shared/providers.dart';
import 'package:mova/src/routing/app_router.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../utils/common_import.dart';
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

  Future<void> downloadVideo() async {
    // final result = await FlutterYoutubeDownloader.downloadVideo(
    //   "_extractedLink",
    //   "Video Title goes Here",
    //   18,
    // );
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
    final l10n = AppLocalizations.of(context);
    final videoState = ref.watch(movieVideoNotifierProvider);
    final reviewsState = ref.watch(reviewNotifierProvider);
    final movieDetailState = ref.watch(movieDetailNotifierProvider);
    ref.listen(bookmarkNotifierProvider, (prev, next) {
      next.maybeWhen(
        orElse: () {},
        saveLoading: () => Container(),
        saveComplete: (movie) => Flushbar(
          message: l10n.movieDetailScreenAddMovieToBookmarkLabel(movie.title),
          icon: const Icon(
            Icons.info,
            color: AppColors.alertSuccess,
          ),
          borderRadius: BorderRadius.circular(10),
          backgroundColor: AppColors.bgGreen,
          messageColor: AppColors.alertSuccess,
          margin: const EdgeInsets.all(16),
          duration: const Duration(seconds: 2),
        ).show(context),
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
                      return data.movieDetail.backdropPath != null &&
                              data.movieDetail.fullBackDropUrl != null
                          ? CachedNetworkImage(
                              imageUrl: data.movieDetail.fullBackDropUrl!,
                              fit: BoxFit.cover,
                            )
                          : Center(
                              child: Image.asset('assets/images/logo.png'),
                            );
                    },
                    failed: (_) => NoData(message: _.message!),
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    gapH16,
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
                                  onPressed: () async {
                                    /*      
                                    showModalBottomSheet(
                                      context: context,
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(30),
                                          topRight: Radius.circular(30),
                                        ),
                                      ),
                                      builder: (context) => Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          gapH6,
                                          const Center(
                                              child: BottomSheetTopBar()),
                                          gapH30,
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: AppSizes.p16),
                                            child: Text(l10n
                                                .movieDetailSharedWithLabel),
                                          ),
                                          Expanded(
                                            child: GridView.count(
                                              shrinkWrap: true,
                                              crossAxisCount: 4,
                                              crossAxisSpacing: 10,
                                              mainAxisSpacing: 10,
                                              children: [
                                                ShareWithSocial(
                                                  imagePath:
                                                      'assets/images/whatapps_img.png',
                                                  title: 'WhatsApp',
                                                  onPressed: () async {
                                                    context.popRoute();
                                                    await SocialShare
                                                        .shareWhatsapp(widget
                                                            .movie
                                                            .fullImageUrl!);
                                                  },
                                                ),
                                                ShareWithSocial(
                                                  imagePath:
                                                      'assets/images/facebook_img.png',
                                                  title: 'FaceBook',
                                                  onPressed: () async {
                                                    context.popRoute();
                                                    await SocialShare
                                                        .shareFacebookStory(
                                                      imagePath: widget
                                                          .movie.fullImageUrl,
                                                      backgroundBottomColor:
                                                          "assets/images/facebook_img.png",
                                                      backgroundTopColor:
                                                          "#000000",
                                                      appId: "208748808766737",
                                                    );
                                                  },
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    );
                                 
                                  */

                                    if (widget.movie.fullImageUrl != null) {
                                      // Donwload Image
                                      /*              final dir = await getTemporaryDirectory();
                                      final imagePath =
                                          '${dir.path}${widget.movie.title}.png';

                                      await ref.read(dioProvider).download(
                                            widget.movie.fullImageUrl!,
                                            imagePath,
                                          ); */

                                      Share.share(
                                          '${widget.movie.fullImageUrl}\n\n *${widget.movie.title}* \n\n ${widget.movie.overview}\n\n __Note: ${widget.movie.voteAverage.toStringAsFixed(1)}__');
                                    } else {
                                      Share.share(
                                          '*${widget.movie.title}* \n\n ${widget.movie.overview}\n\n Note: ${widget.movie.voteAverage.toStringAsFixed(1)}');
                                    }
                                  },
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
                              l10n.movieDetailScreenGenreLabel(
                                  data.movieDetail.stringGenres()),
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
                          trimCollapsedText:
                              l10n.movieDetailScreenViewMoreLabel,
                          trimExpandedText: l10n.movieDetailScreenViewLessLabel,
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
                          tabs: [
                            Tab(text: l10n.movieDetailScreenTrailersTabLabel),
                            Tab(text: l10n.movieDetailScreenSimilarsTabLabel),
                            Tab(text: l10n.movieDetailScreenCommentsTabLabel),
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
                noDataMessage: l10n.movieDetailScreenNoSimilarMoviesFoundLabel,
              ),
              LoadedReview(reviewState: reviewsState),
            ],
          ),
        ),
      ),
    );
  }
}

class ShareWithSocial extends StatelessWidget {
  final String imagePath;
  final VoidCallback onPressed;
  final String title;
  const ShareWithSocial({
    Key? key,
    required this.imagePath,
    required this.onPressed,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Image.asset(
            imagePath,
            width: 80,
          ),
        ),
        gapH6,
        Text(
          title,
          style: Theme.of(context).textTheme.headlineMedium,
        )
      ],
    );
  }
}
