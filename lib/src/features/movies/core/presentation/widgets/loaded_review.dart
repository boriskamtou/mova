import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:mova/src/features/movies/core/application/reviews_notifier.dart';

import '../../../../../constants/app_sizes.dart';
import '../../../../theme/presentation/app_colors.dart';
import 'no_data.dart';

class LoadedReview extends StatelessWidget {
  final ReviewState reviewState;

  const LoadedReview({
    super.key,
    required this.reviewState,
  });

  @override
  Widget build(BuildContext context) {
    return reviewState.map(
      data: (data) {
        final reviews = data.reviews;
        return reviews.isEmpty
            ? const NoData(
                message: 'There is no reviews yet!',
              )
            : ListView.separated(
                scrollDirection: Axis.vertical,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: reviews.length,
                separatorBuilder: (context, i) => gapH10,
                itemBuilder: (context, i) => ListTile(
                  onTap: () {},
                  leading: reviews[i].authorReview.avatarPath == null ||
                          reviews[i].authorReview.avatarPath!.isEmpty
                      ? CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.grey.shade400,
                        )
                      : CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.grey.shade400,
                          backgroundImage: CachedNetworkImageProvider(
                            reviews[i].authorReview.avatarPath!.contains(':')
                                ? reviews[i]
                                    .authorReview
                                    .avatarPath!
                                    .substring(1)
                                : reviews[i].authorReview.fullImageUrl,
                          ),
                        ),
                  title: Text(
                    reviews[i].authorReview.userName ?? '',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  subtitle: Text(
                    reviews[i].content.toString(),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  trailing: Container(
                    height: 20,
                    width: 30,
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Center(
                      child: FittedBox(
                        child: Text(
                          reviews[i].authorReview.rating.toString(),
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
              );
      },
      error: (_) => Center(
        child: Text(
          _.failure.message!,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
      loading: (_) => ListView.builder(
        itemCount: 8,
        shrinkWrap: true,
        itemBuilder: (_, __) => const LoadingReviewsWidget(),
      ),
    );
  }
}

class LoadingReviewsWidget extends StatelessWidget {
  const LoadingReviewsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 20,
        backgroundColor: Colors.grey.shade300,
      )
          .animate(onPlay: (controller) => controller.repeat())
          .shimmer(delay: 900.ms, duration: 400.ms),
      title: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: 10,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: BorderRadius.circular(6),
              ),
            ),
          )
              .animate(onPlay: (controller) => controller.repeat())
              .shimmer(delay: 900.ms, duration: 400.ms),
          gapH6,
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: 10,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: BorderRadius.circular(6),
              ),
            ),
          )
              .animate(onPlay: (controller) => controller.repeat())
              .shimmer(delay: 900.ms, duration: 400.ms),
        ],
      ),
    );
  }
}
