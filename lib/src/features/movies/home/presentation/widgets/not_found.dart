import 'package:flutter/material.dart';

import '../../../../../constants/app_sizes.dart';

class NotFound extends StatelessWidget {
  const NotFound({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/404_dark.png'),
        gapH16,
        Text(
          'Not Found',
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: Theme.of(context).primaryColor,
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
        ),
        gapH10,
        Text(
          'Sorry, the keyword you entered could not be\nfound. Try to check again or search with other\nkeywords.',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
