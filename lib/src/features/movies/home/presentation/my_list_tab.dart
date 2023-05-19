import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mova/src/features/movies/bookmark/shared/providers.dart';
import 'package:mova/src/features/movies/core/presentation/widgets/no_data.dart';

import '../../../../utils/common_import.dart';
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
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(
          child: IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/images/logo.png',
              width: 30,
            ),
          ),
        ),
        title: Text(
          'My List',
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
        ),
      ),
      body: bookmarkState.maybeMap(
        orElse: () => const Center(child: CircularProgressIndicator()),
        loading: (_) => const Center(child: CircularProgressIndicator()),
        loadedFailed: (_) => NoData(
          message: _.message!,
        ),
        loaded: (data) {
          if (data.bookmarkMovies.isEmpty) {
            return const EmptyList();
          }
          return GridView.builder(
            padding: const EdgeInsets.only(
              top: 16,
              bottom: 16,
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
            itemBuilder: (context, i) => MovieItem(
              movie: data.bookmarkMovies[i],
            ),
          );
        },
      ),
    );
  }
}
