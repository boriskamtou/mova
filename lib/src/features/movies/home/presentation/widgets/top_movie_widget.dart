import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mova/src/routing/app_router.dart';
import 'package:mova/src/utils/common_import.dart';

import '../../../../../widgets/play_and_add_to_my_list_button.dart';
import '../../../core/domain/entities/movie.dart';
import '../home_screen_header.dart';
import 'opacity_on_image_widget.dart';

class TopMovie extends ConsumerWidget {
  final Movie movie;
  final VoidCallback onAddToMyListPressed;
  final VoidCallback onPlayPressed;
  const TopMovie({
    super.key,
    required this.movie,
    required this.onAddToMyListPressed,
    required this.onPlayPressed,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () => AutoRouter.of(context).push(MovieDetailRoute(movie: movie)),
      child: Stack(
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
                  onPlayPressed: onPlayPressed,
                  onAddToMyListPressed: onAddToMyListPressed,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
