import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mova/src/features/movies/home/shared/providers.dart';

import '../../../theme/presentation/app_colors.dart';

class HomeScreenHeader extends ConsumerWidget {
  const HomeScreenHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Positioned(
      top: 40,
      left: 0,
      right: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 40,
            child: IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/images/logo.png',
              ),
            ),
          ),
          Row(
            children: [
              IconButton(
                onPressed: () => ref
                    .read(bottomNavigationRouterNotifierProvider.notifier)
                    .changeTab(1),
                icon: Image.asset(
                  'assets/icons/search.png',
                  color: AppColors.white,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/icons/notification.png',
                  color: AppColors.white,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
