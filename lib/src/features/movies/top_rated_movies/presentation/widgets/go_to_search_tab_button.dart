import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../routing/app_router.dart';
import '../../../../../utils/common_import.dart';
import '../../../home/shared/providers.dart';

class GoToSearchTabButton extends StatelessWidget {
  const GoToSearchTabButton({
    super.key,
    required this.ref,
  });

  final WidgetRef ref;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: IconButton(
        splashRadius: 20,
        onPressed: () {
          context.router.popUntilRouteWithName(HomeRoute.name);
          ref
              .read(bottomNavigationRouterNotifierProvider.notifier)
              .changeTab(1);
        },
        icon: Image.asset(
          'assets/icons/search.png',
          color: AppColors.white,
          width: 24,
        ),
      ),
    );
  }
}
