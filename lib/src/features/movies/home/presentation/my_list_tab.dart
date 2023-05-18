import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../utils/common_import.dart';
import 'widgets/empty_list.dart';

class MyListTab extends ConsumerStatefulWidget {
  const MyListTab({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyListTabState();
}

class _MyListTabState extends ConsumerState<MyListTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(
          child: IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/images/logo.png',
              width: 30,
            ),
          ),
        ),
        title: Text(
          'My List',
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
        ),
      ),
      body: const EmptyList(),
    );
  }
}
