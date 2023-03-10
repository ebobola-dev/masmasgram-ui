import 'package:flutter/material.dart';
import 'package:masmasgram_ui/features/splash/screens/splash/splash_screen_widget_model.dart';
import 'package:masmasgram_ui/utils/screen_sizes.dart';
import 'dart:math' show pi;

// class SplashBackgroundInnerRectangle extends StatelessWidget {
//   const SplashBackgroundInnerRectangle({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final screenSize = getScreenSize(context);
//     return Positioned(
//       left: -screenSize.width * 1.25,
//       top: screenSize.height * .1,
//       child: Transform.rotate(
//         angle: -pi / 4,
//         child: Container(
//           width: screenSize.width * 2.2,
//           height: screenSize.height * .6,
//           decoration: BoxDecoration(
//             color: Theme.of(context).primaryColor,
//             borderRadius: BorderRadius.circular(152.0),
//           ),
//         ),
//       ),
//     );
//   }
// }

class SplashBackgroundOuterRectangle extends StatelessWidget {
  final ISplashScreenWM splashWM;
  const SplashBackgroundOuterRectangle({super.key, required this.splashWM});

  @override
  Widget build(BuildContext context) {
    final screenSize = getScreenSize(context);
    final outerSize = Size(screenSize.width * 2.4, screenSize.height * .6);
    final interSize = Size(outerSize.width / 1.12, outerSize.height / 1.25);
    return Positioned(
      left: -screenSize.width * 1.25,
      top: screenSize.height * .1,
      child: AnimatedBuilder(
          animation: splashWM.startAnimations.backgroundRect,
          builder: (context, _) {
            return SlideTransition(
              position: splashWM.startAnimations.backgroundRect,
              child: Transform.rotate(
                angle: -pi / 4,
                child: Container(
                  width: outerSize.width,
                  height: outerSize.height,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(155.0),
                    border: Border.all(color: Theme.of(context).dividerColor),
                  ),
                  child: Container(
                    width: interSize.width,
                    height: interSize.height,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(152.0),
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
