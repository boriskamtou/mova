import 'package:cached_network_image/cached_network_image.dart';
import 'package:mova/src/features/movies/core/infrastructure/dtos/movie_detail.dart';
import 'package:mova/src/utils/common_import.dart';

import '../../core/domain/entities/movie.dart';

class MovieItem extends StatelessWidget {
  final Movie movie;
  final bool isGrid;
  const MovieItem({
    Key? key,
    required this.movie,
    this.isGrid = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: isGrid ? StackFit.expand : StackFit.loose,
      children: [
        Container(
          height: 180,
          margin: const EdgeInsets.only(right: 8),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: CachedNetworkImage(imageUrl: movie.fullImageUrl!),
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
    );
  }
}

class MovieDetailItem extends StatelessWidget {
  final MovieDetail movie;
  final bool isGrid;
  const MovieDetailItem({
    Key? key,
    required this.movie,
    this.isGrid = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: isGrid ? StackFit.expand : StackFit.loose,
      children: [
        Container(
          height: 180,
          margin: const EdgeInsets.only(right: 8),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: CachedNetworkImage(imageUrl: movie.fullBackDropUrl!),
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
    );
  }
}
