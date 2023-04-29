import 'package:mova/src/utils/common_import.dart';

class PlayAndAddToMyListButtons extends StatelessWidget {
  const PlayAndAddToMyListButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            children: [
              const Icon(
                Icons.play_circle,
                color: AppColors.white,
                size: 13,
              ),
              const SizedBox(width: 4),
              Text(
                'Play',
                style: GoogleFonts.urbanist(
                  color: AppColors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 6),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 6,
          ),
          decoration: BoxDecoration(
              color: AppColors.transparent,
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                width: 2,
                color: AppColors.white,
              )),
          child: Row(
            children: [
              const Icon(
                Icons.add,
                color: AppColors.white,
                size: 13,
              ),
              const SizedBox(width: 4),
              Text(
                'My List',
                style: GoogleFonts.urbanist(
                  color: AppColors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
