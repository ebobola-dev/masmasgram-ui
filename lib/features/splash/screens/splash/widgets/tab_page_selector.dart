import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:masmasgram_ui/assets/strings/animations.dart';
import 'package:masmasgram_ui/features/splash/screens/splash/splash_screen_widget_model.dart';

class SplashTabPageSelector extends StatelessWidget {
  final ISplashScreenWM splashWM;
  const SplashTabPageSelector({super.key, required this.splashWM});

  @override
  Widget build(BuildContext context) {
    return StateNotifierBuilder(
      listenableState: splashWM.pageState,
      builder: (_, page) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            3,
            (tabIndex) => AnimatedBuilder(
                animation: splashWM.startAnimations.dots[tabIndex],
                builder: (context, _) {
                  return SlideTransition(
                    position: splashWM.startAnimations.dots[tabIndex],
                    child: TabItem(
                      splashWM: splashWM,
                      tabNumber: tabIndex,
                    ),
                  );
                }),
          ),
          // children: [
          //   TabItem(splashWM: splashWM, tabNumber: 0),
          //   const SizedBox(width: 8),
          //   TabItem(splashWM: splashWM, tabNumber: 1),
          //   const SizedBox(width: 8),
          //   TabItem(splashWM: splashWM, tabNumber: 2),
          // ],
        );
      },
    );
  }
}

const lrCoordsPageCases = [
  [
    [0.0, null], //? tab 0 [left, right]
    [-12.0, null], //? tab 1 [left, right]
    [-12.0, null], //? tab 2 [left, right]
  ], //? case 1 - page is 0
  [
    [null, 12.0],
    [0.0, null],
    [-12.0, null],
  ], //? case 2 - page is 1
  [
    [null, 12.0],
    [null, 12.0],
    [0.0, null],
  ], //? case 3 - page is 2
];

class TabItem extends StatelessWidget {
  final ISplashScreenWM splashWM;
  final int tabNumber;
  const TabItem({
    super.key,
    required this.splashWM,
    required this.tabNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: StateNotifierBuilder<int>(
          listenableState: splashWM.pageState,
          builder: (context, page) {
            return Stack(
              children: [
                Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: splashWM.textColor,
                    ),
                  ),
                ),
                AnimatedPositioned(
                  duration: animationDuration,
                  curve: animationCurve,
                  left: lrCoordsPageCases[page!][tabNumber][0],
                  right: lrCoordsPageCases[page][tabNumber][1],
                  child: Container(
                    width: 12,
                    height: 12,
                    decoration: BoxDecoration(
                      color: splashWM.textColor,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: splashWM.textColor,
                      ),
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }
}
