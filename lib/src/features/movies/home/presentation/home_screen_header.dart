import 'package:flutter/material.dart';

import '../../../theme/presentation/app_colors.dart';

class HomeScreenHeader extends StatelessWidget {
  const HomeScreenHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
                onPressed: () {},
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
