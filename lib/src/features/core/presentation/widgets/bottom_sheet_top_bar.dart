import '../../../../utils/common_import.dart';

class BottomSheetTopBar extends StatelessWidget {
  const BottomSheetTopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6,
      width: 50,
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(vertical: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.grey.shade300,
      ),
    );
  }
}
