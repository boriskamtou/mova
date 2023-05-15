import 'package:mova/src/utils/common_import.dart';

class LoadingListOfTopMovies extends StatelessWidget {
  const LoadingListOfTopMovies({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView.separated(
        itemCount: 10,
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (_, __) => gapW10,
        itemBuilder: (ctx, i) => Stack(
          children: [
            Container(
              height: 180,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade400,
              ),
            )
                .animate(onPlay: (controller) => controller.repeat())
                .shimmer(delay: 900.ms, duration: 400.ms),
            Positioned(
              left: 10,
              top: 10,
              child: Container(
                height: 20,
                width: 30,
                padding: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
            ).animate().shimmer(),
          ],
        ),
      ),
    );
  }
}
