import 'package:flutter/material.dart';
import 'package:masmasgram_ui/assets/colors/theme_colors.dart';

class SplashTitle extends StatelessWidget {
  const SplashTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        Text(
          'Welcome to',
          style: textTheme.bodyMedium!.copyWith(
            color: greyTextColor,
          ),
        ),
        Text(
          'Masmasgram',
          style: textTheme.titleLarge,
        ),
      ],
    );
  }
}
