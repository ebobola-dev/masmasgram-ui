import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:masmasgram_ui/assets/strings/animations.dart';
import 'dart:math' show pi;

import 'package:masmasgram_ui/features/splash/screens/splash/splash_screen_widget_model.dart';

class SplashNextButton extends StatelessWidget {
  final ISplashScreenWM splashWM;
  const SplashNextButton({super.key, required this.splashWM});

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: pi / 4,
      child: Wrapper(
        size: splashWM.nextButtonOuterSize,
        decoration: BoxDecoration(
          border: Border.all(
            color: splashWM.textColor,
          ),
          borderRadius: splashWM.nextButtonOuterRadius,
        ),
        child: SizedBox(
          width: splashWM.nextButtonInnerSize,
          height: splashWM.nextButtonInnerSize,
          child: ClipRRect(
            borderRadius: splashWM.nextButtonInnerRadius,
            child: Stack(
              children: [
                Transform.rotate(
                  angle: -pi / 4,
                  child: SizedBox(
                    width: splashWM.nextButtonInnerSize * 1.5,
                    height: splashWM.nextButtonInnerSize * 1.5,
                    child: SizedBox(
                      child: Stack(
                        children: [
                          StateNotifierBuilder<int>(
                            listenableState: splashWM.pageState,
                            builder: (context, page) {
                              final double left;
                              if (page == 2) {
                                left = -splashWM.nextButtonInnerSize;
                              } else {
                                left = 0;
                              }
                              return AnimatedPositioned(
                                duration: const Duration(seconds: 5),
                                curve: animationCurve,
                                left: 0,
                                child: Wrapper(
                                  alignment: null,
                                  size: splashWM.nextButtonInnerSize * 2,
                                  decoration: BoxDecoration(
                                    color: splashWM.textColor,
                                  ),
                                ),
                              );
                            },
                          ),
                          StateNotifierBuilder<int>(
                            listenableState: splashWM.pageState,
                            builder: (context, page) {
                              final double right;
                              if (page == 2) {
                                right = 0;
                              } else {
                                right = splashWM.nextButtonInnerSize;
                              }
                              return AnimatedPositioned(
                                duration: const Duration(seconds: 5),
                                curve: animationCurve,
                                right: splashWM.nextButtonInnerSize,
                                child: Wrapper(
                                  alignment: null,
                                  size: splashWM.nextButtonInnerSize,
                                  decoration: BoxDecoration(
                                      color: splashWM.primaryColor),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Material(
                  color: Colors.transparent,
                  borderRadius: splashWM.nextButtonInnerRadius,
                  child: InkWell(
                    onTap: splashWM.tapOnNext,
                    splashColor: Theme.of(context).colorScheme.primary,
                    borderRadius: splashWM.nextButtonInnerRadius,
                    child: Wrapper(
                      size: splashWM.nextButtonInnerSize,
                      alignment: const Alignment(-0.15, -0.05),
                      decoration: BoxDecoration(
                        borderRadius: splashWM.nextButtonInnerRadius,
                      ),
                      child: Transform.rotate(
                        angle: -pi / 4,
                        child: AnimatedBuilder(
                          animation: splashWM.buttonTextColorAnimation,
                          builder: (context, _) {
                            return Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Next',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                        color: splashWM
                                            .buttonTextColorAnimation.value,
                                      ),
                                ),
                                const SizedBox(width: 15),
                                Icon(
                                  Icons.arrow_forward,
                                  color:
                                      splashWM.buttonTextColorAnimation.value,
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Wrapper extends StatelessWidget {
  final double size;
  final Alignment? alignment;
  final BoxDecoration? decoration;
  final Widget? child;
  const Wrapper({
    super.key,
    required this.size,
    this.alignment = Alignment.center,
    this.decoration,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      alignment: alignment,
      decoration: decoration,
      child: child,
    );
  }
}
