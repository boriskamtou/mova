import 'package:cached_network_image/cached_network_image.dart';
import 'package:mova/src/features/movies/core/domain/entities/movie.dart';
import 'package:mova/src/utils/common_import.dart';

class MovieItem extends StatelessWidget {
  final Movie movie;
  final bool isGrid;
  const MovieItem({
    Key? key,
    this.isGrid = false,
    required this.movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // TODO: Navigate to the detail page
      },
      child: Stack(
        fit: isGrid ? StackFit.expand : StackFit.loose,
        children: [
          Container(
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
