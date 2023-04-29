import 'package:flutter/material.dart';

class CustomLinearGradient extends StatelessWidget {
  const CustomLinearGradient({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.black.withOpacity(.15),
            Colors.black.withOpacity(.3),
            Colors.black.withOpacity(.49),
          ],
          begin: Alignment.topCenter,
        ),
      ),
    );
  }
}
