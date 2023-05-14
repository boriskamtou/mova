import '../../../../../utils/common_import.dart';

class NoData extends StatelessWidget {
  final String message;
  const NoData({
    super.key,
    this.message = 'No Data found!',
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        message,
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
