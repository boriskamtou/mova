import 'package:mova/src/utils/common_import.dart';

class PlayAndAddToMyListButtons extends StatelessWidget {
  final VoidCallback onPlayPressed;
  final VoidCallback onAddToMyListPressed;

  const PlayAndAddToMyListButtons({
    Key? key,
    required this.onPlayPressed,
    required this.onAddToMyListPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: onPlayPressed,
          child: Container(
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
                Image.asset('assets/icons/play.png'),
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
        ),
        const SizedBox(width: 6),
        InkWell(
          onTap: onAddToMyListPressed,
          child: Container(
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
        ),
      ],
    );
  }
}
