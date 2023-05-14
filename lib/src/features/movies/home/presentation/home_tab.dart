import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mova/src/features/movies/core/domain/entities/movie.dart';
import 'package:mova/src/features/movies/core/presentation/movie_item.dart';
import 'package:mova/src/features/movies/core/presentation/widgets/no_data.dart';
import 'package:mova/src/features/movies/core/shared/providers.dart';
import 'package:mova/src/routing/app_router.dart';

import '../../../../utils/common_import.dart';
import '../../../../widgets/play_and_add_to_my_list_button.dart';
import 'home_screen_header.dart';
import 'see_all_widget.dart';

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
      ]);
    });
  }

  @override
  Widget build(BuildContext context) {
    final popularMoviesState = ref.watch(popularMoviesStateNotifierProvider);

    return SingleChildScrollView(
      primary: true,
      child: Column(
        children: [
          popularMoviesState.map(
            initial: (_) => Container(
              height: MediaQuery.of(context).size.height / 2.3,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
              ),
            )
                .animate(onPlay: (controller) => controller.repeat())
                .shimmer(delay: 900.ms, duration: 400.ms),
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
              return _TopPopularMovie(
                movie: data.movies.entity[0],
              );
            },
            failure: (_) => NoData(
              message: _.failure.message!,
            ),
          ),
          const SizedBox(height: 18),
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
              debugPrint('Data has been load');
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
            onSeeAllTap: () {},
          ),
          gapH18,
          SizedBox(
            height: 180,
            width: double.infinity,
            child: popularMoviesState.when(
              initial: (_) => const LoadingListOfTopMovies(),
              loading: (_, __) => const LoadingListOfTopMovies(),
              loaded: (data, _) {
                return ListView.builder(
                  itemCount: data.entity.length,
                  shrinkWrap: true,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, i) => MovieItem(
                    movie: data.entity[i],
                  ),
                );
              },
              failure: (_, __) => Container(),
            ),
          ),
          const SizedBox(height: 18),
          RowTitle(
            title: 'Trending Movies',
            onSeeAllTap: () {},
          ),
          const SizedBox(height: 18),
        ],
      ),
    );
  }
}

class _TopPopularMovie extends ConsumerWidget {
  final Movie movie;
  const _TopPopularMovie({
    required this.movie,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 2.3,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: CachedNetworkImageProvider(movie.fullBackDropUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const OpacityToImage(),
        const HomeScreenHeader(),
        Positioned(
          bottom: 20,
          left: 16,
          right: MediaQuery.of(context).size.width / 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                movie.title,
                maxLines: 1,
                style: GoogleFonts.urbanist(
                  color: AppColors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                width: 170,
                child: Text(
                  movie.overview,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.urbanist(
                    color: AppColors.white,
                    fontSize: 11,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              PlayAndAddToMyListButtons(
                onPlayPressed: () {},
                onAddToMyListPressed: () {},
              )
            ],
          ),
        )
      ],
    );
  }
}

class OpacityToImage extends StatelessWidget {
  const OpacityToImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      top: 0,
      bottom: 0,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.black.withOpacity(.15),
              Colors.black.withOpacity(.3),
              Colors.black.withOpacity(.49),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
      ),
    );
  }
}

class ListOfTopMovies extends StatelessWidget {
  final List<Movie> movies;
  final String? messageIfEmptyList;
  const ListOfTopMovies({
    Key? key,
    required this.movies,
    required this.messageIfEmptyList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final newList = movies.getRange(0, 10);

    return SizedBox(
      height: 180,
      child: ListView.separated(
        itemCount: newList.length,
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: AppSizes.p16),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (_, __) => gapW10,
        itemBuilder: (ctx, i) {
          return MovieItem(
            isHome: true,
            movie: movies[i],
          );
        },
      ),
    );
  }
}

class LoadingListOfTopMovies extends StatelessWidget {
  const LoadingListOfTopMovies({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView.separated(
        itemCount: 10,
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (_, __) => gapW10,
        itemBuilder: (ctx, i) => Stack(
          children: [
            Container(
              height: 180,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade400,
              ),
            )
                .animate(onPlay: (controller) => controller.repeat())
                .shimmer(delay: 900.ms, duration: 400.ms),
            Positioned(
              left: 10,
              top: 10,
              child: Container(
                height: 20,
                width: 30,
                padding: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
            ).animate().shimmer(),
          ],
        ),
      ),
    );
  }
}
