import 'dart:developer';

import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:masmasgram_ui/assets/strings/animations.dart';
import 'package:masmasgram_ui/assets/strings/next_button.dart';
import 'package:masmasgram_ui/features/splash/screens/splash/splash_screen.dart';
import 'package:masmasgram_ui/features/splash/screens/splash/splash_screen_model.dart';
import 'package:masmasgram_ui/utils/screen_sizes.dart';

SplashScreenWM createSplashScreenWM(BuildContext context) =>
    SplashScreenWM(SplashScreenModel());

class SplashScreenWM extends WidgetModel<SplashScreen, SplashScreenModel>
    with SingleTickerProviderWidgetModelMixin
    implements ISplashScreenWM {
  late final StateNotifier<int> _pageState;
  late final PageController _logoController;
  late final AnimationController _buttonTextColorController;
  late final Animation<Color?> _buttonTextColorAnimation;

  SplashScreenWM(super.model);

  @override
  void initWidgetModel() {
    _pageState = StateNotifier<int>(initValue: model.page);
    _logoController = PageController(initialPage: model.page);
    _buttonTextColorController = AnimationController(
      vsync: this,
      duration: animationDuration,
    );
    _buttonTextColorAnimation = ColorTween(
      begin: Theme.of(context).colorScheme.background,
      end: Theme.of(context).textTheme.titleLarge!.color!,
    ).animate(_buttonTextColorController);
    super.initWidgetModel();
  }

  @override
  void dispose() {
    _pageState.dispose();
    _logoController.dispose();
    _buttonTextColorController.dispose();
    super.dispose();
  }

  @override
  Size get screenSize => getScreenSize(context);

  @override
  double get nextButtonOuterSize => screenSize.width * .7;

  @override
  double get nextButtonInnerSize => nextButtonOuterSize - 14;

  @override
  BorderRadius get nextButtonOuterRadius =>
      BorderRadius.circular(NextButtonSizes.bigWrapperRadius);

  @override
  BorderRadius get nextButtonInnerRadius =>
      BorderRadius.circular(NextButtonSizes.smallWrapperRadius);

  @override
  double get topIndent => MediaQuery.of(context).padding.top;

  @override
  Color get primaryColor => Theme.of(context).primaryColor;

  @override
  Color get dividerColor => Theme.of(context).dividerColor;

  @override
  Color get textColor => Theme.of(context).textTheme.titleLarge!.color!;

  @override
  PageController get logoController => _logoController;

  @override
  StateNotifier<int> get pageState => _pageState;

  @override
  Animation<Color?> get buttonTextColorAnimation => _buttonTextColorAnimation;

  @override
  void tapOnNext() {
    final newPage = model.swipe();
    log('swiped to page -> $newPage');
    if (newPage == -1) {
      //? swipe failed
      return;
    }
    _swipe(newPage);
  }

  void _swipe(int newPage) {
    //* change logo
    if (newPage == 1) {
      _logoController.animateToPage(
        newPage,
        duration: animationDuration,
        curve: animationCurve,
      );
    }

    //* change tap selector
    _pageState.accept(newPage);
    //* change next button background
    //* change next button text color
    if (newPage == 2) {
      _buttonTextColorController.forward();
    }
  }
}

abstract class ISplashScreenWM extends IWidgetModel {
  Size get screenSize;
  double get nextButtonOuterSize;
  double get nextButtonInnerSize;
  BorderRadius get nextButtonOuterRadius;
  BorderRadius get nextButtonInnerRadius;
  double get topIndent;
  Color get primaryColor;
  Color get dividerColor;
  Color get textColor;

  PageController get logoController;
  StateNotifier<int> get pageState;
  Animation<Color?> get buttonTextColorAnimation;

  void tapOnNext();
}
