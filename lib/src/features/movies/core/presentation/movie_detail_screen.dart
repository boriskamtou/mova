import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:mova/src/features/theme/presentation/app_colors.dart';
import 'package:readmore/readmore.dart';

import '../../../../constants/app_sizes.dart';
import '../domain/entities/movie.dart';

@RoutePage()
class MovieDetailScreen extends StatelessWidget {
  final Movie movie;

  const MovieDetailScreen({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            expandedHeight: 300,
            stretch: true,
            pinned: true,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              background: CachedNetworkImage(
                imageUrl: movie.fullBackDropUrl,
                fit: BoxFit.cover,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text(
                              movie.title,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                  ),
                            ),
                          ),
                          _MovieActionButton(
                            onPressed: () {},
                            imageUrl: 'assets/icons/bookmark.png',
                          ),
                          _MovieActionButton(
                            onPressed: () {},
                            imageUrl: 'assets/icons/bookmark.png',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                gapH16,
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: AppSizes.p16),
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
                ),
                gapH16,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: AppSizes.p16),
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.play_circle),
                          label: const Text('Play'),
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                vertical: AppSizes.p8),
                          ),
                        ),
                      ),
                      gapW16,
                      Expanded(
                        child: OutlinedButton.icon(
                          onPressed: () {},
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
                            padding: const EdgeInsets.symmetric(
                                vertical: AppSizes.p8),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                gapH10,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: AppSizes.p16),
                  child: ReadMoreText(
                    movie.overview,
                    trimLines: 3,
                    trimCollapsedText: 'View more',
                    trimExpandedText: ' View less',
                    colorClickableText: Theme.of(context).primaryColor,
                    style: Theme.of(context).textTheme.headlineMedium,
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
