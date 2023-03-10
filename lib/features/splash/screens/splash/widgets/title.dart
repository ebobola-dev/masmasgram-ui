import 'package:flutter/material.dart';
import 'package:masmasgram_ui/assets/colors/theme_colors.dart';
import 'package:masmasgram_ui/features/splash/screens/splash/splash_screen_widget_model.dart';

class SplashTitle extends StatelessWidget {
  final ISplashScreenWM splashWm;
  const SplashTitle({super.key, required this.splashWm});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return AnimatedBuilder(
        animation: splashWm.startAnimations.welcomeText,
        builder: (context, _) {
          return ScaleTransition(
            scale: splashWm.startAnimations.welcomeText,
            child: Column(
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
            ),
          );
        });
  }
}
