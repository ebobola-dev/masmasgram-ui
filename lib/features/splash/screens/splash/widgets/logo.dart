import 'package:flutter/material.dart';
import 'package:masmasgram_ui/assets/strings/image_paths.dart';

class SplashLogo extends StatelessWidget {
  const SplashLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Image.asset(logoV1Path),
    );
  }
}
