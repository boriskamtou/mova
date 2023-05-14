import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:mova/src/features/movies/core/domain/entities/movie.dart';
import 'package:mova/src/routing/app_router.dart';
import 'package:mova/src/utils/common_import.dart';

class MovieItem extends StatelessWidget {
  final Movie movie;
  final bool isHome;
  const MovieItem({
    Key? key,
    required this.movie,
    this.isHome = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
              image: DecorationImage(
                fit: BoxFit.cover,
                image: CachedNetworkImageProvider(movie.fullImageUrl),
              ),
            ),
          ),
          Positioned(
            left: 10,
            top: 10,
            child: Container(
              height: 20,
              width: 30,
              padding: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(6),
              ),
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
        ],
      ),
    );
  }
}
