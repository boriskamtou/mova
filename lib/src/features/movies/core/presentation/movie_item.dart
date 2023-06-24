import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:mova/src/features/movies/core/domain/entities/movie.dart';
import 'package:mova/src/routing/app_router.dart';
import 'package:mova/src/utils/common_import.dart';

class MovieItem extends StatelessWidget {
  final Movie movie;
  final bool isHome;
  final bool isAlreadyInDetail;
  final ScrollController? scrollController;
  const MovieItem({
    Key? key,
    required this.movie,
    this.isHome = false,
    this.isAlreadyInDetail = false,
    this.scrollController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (isAlreadyInDetail) {
          // TODO: Gérer le scroll de la page de détail

          if (scrollController != null && scrollController!.hasClients) {
            scrollController!.animateTo(0.0,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut);
          }
        }
        context.navigateTo(MovieDetailRoute(movie: movie));
      },
      child: Stack(
        fit: StackFit.loose,
        children: [
          Container(
            height: isHome ? 180 : null,
            width: isHome ? 100 : null,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: (movie.posterPath != null &&
                      movie.fullImageUrl != null &&
                      movie.posterPath!.isNotEmpty)
                  ? DecorationImage(
                      fit: BoxFit.cover,
                      image: CachedNetworkImageProvider(movie.fullImageUrl!),
                    )
                  : const DecorationImage(
                      image: AssetImage('assets/images/logo.png')),
            ),
          ),
          Positioned(
            left: 10,
            top: 10,
            child: Container(
              height: 20,
              width: 35,
              padding: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(6),
              ),
              child: FittedBox(
                child: Center(
                  child: Text(
                    movie.voteAverage.toStringAsFixed(1).toString(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: AppColors.white,
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MovieDetailItem extends ConsumerWidget {
  final Movie movie;
  final bool isHome;
  final bool isAlreadyInDetail;
  final VoidCallback onLongPress;
  const MovieDetailItem({
    Key? key,
    required this.movie,
    this.isHome = false,
    this.isAlreadyInDetail = false,
    required this.onLongPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onLongPress: onLongPress,
      onTap: () {
        context.navigateTo(MovieDetailRoute(movie: movie));
      },
      child: Stack(
        fit: StackFit.loose,
        children: [
          Container(
            height: isHome ? 180 : null,
            width: isHome ? 100 : null,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: (movie.posterPath == '' || movie.posterPath!.isNotEmpty)
                  ? DecorationImage(
                      fit: BoxFit.cover,
                      image: CachedNetworkImageProvider(movie.fullBackDropUrl),
                    )
                  : const DecorationImage(
                      image: AssetImage('assets/images/logo.png')),
            ),
          ),
          Positioned(
            left: 10,
            top: 10,
            child: Container(
              height: 20,
              width: 35,
              padding: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(6),
              ),
              child: FittedBox(
                child: Center(
                  child: Text(
                    movie.voteAverage.toString(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: AppColors.white,
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
