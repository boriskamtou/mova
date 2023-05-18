import 'package:flutter/material.dart';

class MovieActionButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String imageUrl;
  const MovieActionButton({
    super.key,
    required this.onPressed,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      splashRadius: 20,
      icon: SizedBox(
        height: 20,
        width: 20,
        child: Image.asset(
          imageUrl,
          color: Theme.of(context).iconTheme.color,
        ),
      ),
    );
  }
}
