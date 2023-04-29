import 'package:mova/src/utils/common_import.dart';

class OnboardingTextDescription extends StatelessWidget {
  final String title;
  final String description;
  const OnboardingTextDescription({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: GoogleFonts.urbanist(
            color: AppColors.white,
            fontSize: 32,
            fontWeight: FontWeight.w700,
          ),
        ).animate(delay: const Duration(milliseconds: 100)).fade().scale(),
        gapH16,
        Text(
          description,
          textAlign: TextAlign.center,
          style: GoogleFonts.urbanist(
            color: AppColors.white,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ).animate(delay: const Duration(milliseconds: 100)).fade().scale(),
      ],
    );
  }
}
