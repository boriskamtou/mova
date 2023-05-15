import 'package:flutter/material.dart';

import '../../../../../constants/app_sizes.dart';
import '../../../core/domain/entities/movie.dart';
import '../../../core/presentation/movie_item.dart';

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
