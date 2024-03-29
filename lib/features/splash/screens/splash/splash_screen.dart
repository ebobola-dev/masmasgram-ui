import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:masmasgram_ui/assets/themes/paddings.dart';
import 'package:masmasgram_ui/features/common/widgets/background.dart';
import 'package:masmasgram_ui/features/splash/screens/splash/splash_screen_widget_model.dart';
import 'package:masmasgram_ui/features/splash/widgets/logo.dart';
import 'package:masmasgram_ui/features/splash/widgets/next_button.dart';
import 'package:masmasgram_ui/features/splash/widgets/tab_page_selector.dart';
import 'package:masmasgram_ui/features/splash/widgets/title.dart';

class SplashScreen extends ElementaryWidget<SplashScreenWM> {
  const SplashScreen({
    super.key,
    WidgetModelFactory wmFactory = createSplashScreenWM,
  }) : super(wmFactory);

  @override
  Widget build(ISplashScreenWM wm) {
    final topIndent = wm.topIndent;
    final screenSize = wm.screenSize;
    return Scaffold(
      body: Stack(
        children: [
          //? Background
          AnimatedBuilder(
            animation: wm.startAnimations.backgroundRect,
            builder: (context, _) {
              return BackgroundRectangle(
                left: -screenSize.width * 1.25,
                top: screenSize.height * .1,
                positionAnimation: wm.startAnimations.backgroundRect,
              );
            },
          ),
          Padding(
            padding: EdgeInsets.only(top: topIndent),
            child: SizedBox(
              height: screenSize.height,
              child: Stack(
                children: [
                  SizedBox(
                    height: screenSize.height - wm.nextButtonOuterSize,
                    child: Padding(
                      padding: const EdgeInsets.all(defaultPadding),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SplashTitle(splashWm: wm),
                          Flexible(child: SplashLogo(splashWM: wm)),
                          SplashTabPageSelector(splashWM: wm),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -wm.nextButtonOuterSize * .21,
                    right: -wm.nextButtonOuterSize * .18,
                    child: SplashNextButton(
                      splashWM: wm,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
