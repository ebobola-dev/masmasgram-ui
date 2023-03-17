import 'package:flutter/material.dart';
import 'package:masmasgram_ui/assets/strings/image_paths.dart';
import 'package:masmasgram_ui/features/splash/screens/splash/splash_screen_widget_model.dart';

class SplashLogo extends StatelessWidget {
  final ISplashScreenWM splashWM;
  const SplashLogo({super.key, required this.splashWM});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: splashWM.startAnimations.logo,
      builder: (context, _) {
        return SlideTransition(
          position: splashWM.startAnimations.logo,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: PageView(
              controller: splashWM.logoController,
              children: [
                Image.asset(logoV2Path),
                Image.asset(logoV1Path),
              ],
            ),
          ),
        );
      },
    );
  }
}
