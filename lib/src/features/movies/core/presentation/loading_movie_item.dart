import 'package:mova/src/utils/common_import.dart';

class LoadingMovieItem extends StatelessWidget {
  const LoadingMovieItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
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
    );
  }
}
