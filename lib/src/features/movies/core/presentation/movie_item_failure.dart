import 'package:flutter/material.dart';
import 'package:mova/src/features/movies/core/domain/failures/movie_failure.dart';

import '../../../theme/presentation/app_colors.dart';

class MovieItemFailure extends StatelessWidget {
  final MovieFailure failure;

  const MovieItemFailure({Key? key, required this.failure}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.error,
      child: ListTile(
        leading: const Icon(
          Icons.warning,
          color: AppColors.white,
        ),
        title: Text(failure.map(api: (_) => _.message ?? '')),
        trailing: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.refresh_outlined),
        ),
      ),
    );
  }
}
