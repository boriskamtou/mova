import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../../../utils/common_import.dart';
import '../../infrastructure/dtos/movie_detail.dart';
import 'movie_card_info.dart';

class RowMovieInfos extends StatelessWidget {
  final MovieDetail movie;
  const RowMovieInfos({
    super.key,
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
              movie.releaseDate != null
                  ? DateTime.parse(movie.releaseDate!).year.toString()
                  : '',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            gapW16,
            MovieCardInfo(
              info: movie.originalLanguage,
            ),
            gapW16,
            MovieCardInfo(
              info: '${movie.voteCount} votes',
            ),
            gapW16,
            MovieCardInfo(
              info: movie.adult ? 'Adult' : 'Free for children',
            ),
          ],
        ),
      ),
    );
  }
}
