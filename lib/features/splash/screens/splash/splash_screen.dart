import 'package:flutter/material.dart';
import 'package:masmasgram_ui/assets/themes/paddings.dart';
import 'package:masmasgram_ui/features/splash/screens/splash/widgets/logo.dart';
import 'package:masmasgram_ui/features/splash/screens/splash/widgets/next_button.dart';
import 'package:masmasgram_ui/features/splash/screens/splash/widgets/tab_page_selector.dart';
import 'package:masmasgram_ui/features/splash/screens/splash/widgets/title.dart';
import 'package:masmasgram_ui/utils/screen_sizes.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final topIndent = MediaQuery.of(context).padding.top;
    final screenSize = getScreenSize(context);
    final nextButtonSize = screenSize.width * .7;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: topIndent),
        child: SizedBox(
          height: screenSize.height,
          child: Stack(
            children: [
              SizedBox(
                height: screenSize.height - nextButtonSize,
                child: Padding(
                  padding: const EdgeInsets.all(defaultPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      SplashTitle(),
                      SplashLogo(),
                      SplashTabPageSelector(),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: -nextButtonSize * .21,
                right: -nextButtonSize * .18,
                child: SplashNextButton(size: nextButtonSize),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
