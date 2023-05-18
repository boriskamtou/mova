import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mova/src/utils/common_import.dart';

import 'widgets/not_found.dart';

class DiscoveryTab extends ConsumerStatefulWidget {
  const DiscoveryTab({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DiscoveryTabState();
}

class _DiscoveryTabState extends ConsumerState<DiscoveryTab> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: NotFound(),
    );
  }
}
