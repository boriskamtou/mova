import '../../../../../utils/common_import.dart';

class PlayAndDownloadVideoButtons extends StatelessWidget {
  final VoidCallback onPlayPressed;
  final VoidCallback onDownloadPressed;
  const PlayAndDownloadVideoButtons(
      {super.key,
      required this.onPlayPressed,
      required this.onDownloadPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.p16),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton.icon(
              onPressed: onPlayPressed,
              icon: const Icon(Icons.play_circle),
              label: const Text('Play'),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: AppSizes.p8),
              ),
            ),
          ),
          gapW16,
          Expanded(
            child: OutlinedButton.icon(
              onPressed: onDownloadPressed,
              icon: Icon(
                Icons.download,
                color: Theme.of(context).primaryColor,
              ),
              label: Text(
                'Download',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                ),
              ),
              style: OutlinedButton.styleFrom(
                backgroundColor: AppColors.transparent,
                side: BorderSide(
                  width: 2,
                  color: Theme.of(context).primaryColor,
                ),
                padding: const EdgeInsets.symmetric(vertical: AppSizes.p8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
