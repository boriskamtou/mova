import 'package:mova/src/utils/common_import.dart';

class PageIndicators extends StatelessWidget {
  final int index;
  final int currentIndex;
  const PageIndicators({
    Key? key,
    required this.index,
    required this.currentIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        3,
        (index) => AnimatedContainer(
          height: 10,
          margin: const EdgeInsets.only(right: AppSizes.p8),
          width: currentIndex == index ? 25 : 10,
          duration: const Duration(milliseconds: 300),
          decoration: BoxDecoration(
            color: currentIndex == index ? AppColors.primary : AppColors.white,
            borderRadius: BorderRadius.circular(AppSizes.p30),
          ),
        ),
      ),
    );
  }
}
