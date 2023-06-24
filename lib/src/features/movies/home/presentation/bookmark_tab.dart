import 'package:another_flushbar/flushbar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:mova/src/features/movies/bookmark/shared/providers.dart';
import 'package:mova/src/features/movies/core/presentation/widgets/no_data.dart';

import '../../../../utils/common_import.dart';
import '../../../core/presentation/widgets/bottom_sheet_top_bar.dart';
import '../../core/presentation/movie_item.dart';
import 'widgets/empty_list.dart';

class MyListTab extends ConsumerStatefulWidget {
  const MyListTab({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyListTabState();
}

class _MyListTabState extends ConsumerState<MyListTab> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() =>
        ref.read(bookmarkNotifierProvider.notifier).getAllBookmarkMovies());
  }

  @override
  Widget build(BuildContext context) {
    final bookmarkState = ref.watch(bookmarkNotifierProvider);
    ref.listen(
      bookmarkNotifierProvider,
      (prev, next) {
        next.maybeWhen(
          orElse: () {},
          loading: () => EasyLoading.show(),
          deleted: () {
            ref.watch(bookmarkNotifierProvider.notifier).getAllBookmarkMovies();
            return Flushbar(
              message: 'Movie deleted successfully',
              icon: const Icon(
                Icons.info,
                color: AppColors.alertSuccess,
              ),
              borderRadius: BorderRadius.circular(10),
              backgroundColor: AppColors.bgGreen,
              messageColor: AppColors.alertSuccess,
              margin: const EdgeInsets.all(16),
              duration: const Duration(seconds: 2),
            ).show(context);
          },
        );
      },
    );
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Image.asset(
            'assets/images/logo.png',
            width: 28,
          ),
        ),
        title: Text(
          'My List',
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
        ),
      ),
      body: bookmarkState.maybeMap(
        orElse: () => const Center(child: CircularProgressIndicator()),
        loading: (_) => const Center(child: CircularProgressIndicator()),
        loadedFailed: (_) => NoData(message: _.message!),
        loaded: (data) {
          if (data.bookmarkMovies.isEmpty) {
            return const EmptyList();
          }
          return GridView.builder(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.only(
              top: 16,
              bottom: 80,
              left: 24,
              right: 24,
            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: .75,
            ),
            itemCount: data.bookmarkMovies.length,
            itemBuilder: (ctx, i) => MovieDetailItem(
              movie: data.bookmarkMovies[i],
              onLongPress: () {
                showModalBottomSheet(
                  context: context,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  builder: (context) => Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 16),
                    decoration: const BoxDecoration(),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const BottomSheetTopBar(),
                        gapH6,
                        Text(
                          'Delete',
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .copyWith(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                              ),
                        ),
                        gapH10,
                        const Divider(),
                        gapH10,
                        Text(
                          "Are you sure you want to delete this\nmovie bookmark?",
                          textAlign: TextAlign.center,
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 17,
                                  ),
                        ),
                        gapH16,
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  height: 112,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: (data.bookmarkMovies[i].posterPath ==
                                                '' ||
                                            data.bookmarkMovies[i].posterPath!
                                                .isNotEmpty)
                                        ? DecorationImage(
                                            fit: BoxFit.cover,
                                            image: CachedNetworkImageProvider(
                                              data.bookmarkMovies[i]
                                                  .fullBackDropUrl,
                                            ),
                                          )
                                        : const DecorationImage(
                                            image: AssetImage(
                                                'assets/images/logo.png'),
                                          ),
                                  ),
                                ),
                                gapW16,
                                Expanded(
                                  child: Text(
                                    data.bookmarkMovies[i].title,
                                    overflow: TextOverflow.ellipsis,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium!
                                        .copyWith(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        gapH16,
                        const Divider(),
                        gapH16,
                        Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColors.bgRed,
                                ),
                                onPressed: () {
                                  context.popRoute();
                                },
                                child: Text(
                                  'Cancel',
                                  style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                  ),
                                ),
                              ),
                            ),
                            gapW20,
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  context.popRoute();
                                  ref
                                      .read(bookmarkNotifierProvider.notifier)
                                      .deleteMovieFromBookMark(
                                          data.bookmarkMovies[i]);
                                },
                                child: const Text('Yes, delete'),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
