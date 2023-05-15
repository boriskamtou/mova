import 'package:mova/src/utils/common_import.dart';

class LoadingTopMovie extends StatelessWidget {
  const LoadingTopMovie({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2.3,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey.shade400,
      ),
    )
        .animate(onPlay: (controller) => controller.repeat())
        .shimmer(delay: 900.ms, duration: 400.ms);
  }
}
