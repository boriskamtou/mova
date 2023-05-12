import 'package:mova/src/utils/common_import.dart';

class LoadingVideoWidget extends StatelessWidget {
  const LoadingVideoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 60,
        width: 80,
        decoration: BoxDecoration(
          color: Colors.grey.shade400,
          borderRadius: BorderRadius.circular(6),
        ),
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
              width: 80,
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
              width: 50,
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
