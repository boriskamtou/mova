import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mova/src/features/movies/core/presentation/widgets/no_data.dart';
import 'package:youtube/youtube_thumbnail.dart';

import '../../../../../constants/app_sizes.dart';
import '../../../../../routing/app_router.dart';
import '../../application/video_notifier.dart';
import 'loading_video_widget.dart';

class LoadedVideos extends StatelessWidget {
  final VideoState videoState;

  const LoadedVideos({
    super.key,
    required this.videoState,
  });

  @override
  Widget build(BuildContext context) {
    return videoState.map(
      loading: (_) => ListView.separated(
        itemCount: 5,
        shrinkWrap: true,
        separatorBuilder: (context, i) => gapH10,
        itemBuilder: (context, snapshot) {
          return const LoadingVideoWidget();
        },
      ),
      data: (data) {
        return data.videos.isEmpty
            ? const NoData(
                message: 'There is no trailers yet!',
              )
            : ListView.separated(
                scrollDirection: Axis.vertical,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: videoState.map(
                    loading: (_) => 10,
                    data: (data) => data.videos.length,
                    failure: (_) => 0),
                separatorBuilder: (context, i) => gapH10,
                itemBuilder: (context, i) {
                  return ListTile(
                    onTap: () {
                      if (data.videos[i].videoKey.isNotEmpty) {
                        context.navigateTo(
                          VideoPlayerRoute(videoKey: data.videos[i].videoKey),
                        );
                      }
                    },
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: SizedBox(
                        height: 60,
                        width: 100,
                        child: CachedNetworkImage(
                          imageUrl: YoutubeThumbnail(
                                  youtubeId: data.videos[i].videoKey)
                              .hd(),
                          /*  placeholder: (context, _) => SizedBox(
                      width: 60,
                      height: 60,
                      child: Image.asset(
                        'assets/images/logo.png',
                        width: 60,
                        height: 60,
                      ),
                    ), */
                        ),
                      ),
                    ),
                    title: Text(
                      data.videos[i].videoName,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  );
                });
      },
      failure: (_) {
        return NoData(
          message: _.message!,
        );
      },
    );
  }
}
