import 'package:flutter/material.dart';

import '../../../../../constants/app_sizes.dart';

class MovieCardInfo extends StatelessWidget {
  final String info;
  const MovieCardInfo({super.key, required this.info});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Theme.of(context).primaryColor,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSizes.p8,
          vertical: AppSizes.p4,
        ),
        child: Text(
          info,
          style: TextStyle(
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }
}
