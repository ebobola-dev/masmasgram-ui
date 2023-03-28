import 'package:flutter/material.dart';
import 'dart:math' show pi;

import 'package:masmasgram_ui/assets/strings/animations.dart';

class SplashStartAnimations {
  late final AnimationController _mainController;
  final List<AnimationController> _dotsControllers = [];
  final List<Animation<Offset>> _dots = [];
  late final Animation<Offset> _backgroundRect;
  late final Animation<double> _welcomeText;
  late final Animation<Offset> _logo;
  late final Animation<double> _nextButton;

  SplashStartAnimations({
    required TickerProvider vsync,
  }) {
    _mainController = AnimationController(
      vsync: vsync,
      duration: Animations.mediumSpeed,
    );
    final curvedController = CurvedAnimation(
      parent: _mainController,
      curve: Animations.curve,
    );
    for (var i = 0; i < 3; i++) {
      _dotsControllers.add(AnimationController(
        vsync: vsync,
        duration: Animations.mediumSpeed,
      ));
    }
    for (var i = 0; i < 3; i++) {
      _dots.add(
        Tween(
          begin: const Offset(5.0, 0.0),
          end: Offset.zero,
        ).animate(CurvedAnimation(
          parent: _dotsControllers[i],
          curve: Animations.curve,
        )),
      );
    }
    _backgroundRect = Tween(
      begin: const Offset(-1.0, 0.0),
      end: Offset.zero,
    ).animate(curvedController);
    _welcomeText = Tween(
      begin: 0.5,
      end: 1.0,
    ).animate(curvedController);
    _logo = Tween(
      begin: const Offset(1.0, 0.0),
      end: Offset.zero,
    ).animate(curvedController);
    _nextButton = Tween(
      begin: 0.0,
      end: pi / 4,
    ).animate(curvedController);
  }

  Animation<Offset> get backgroundRect => _backgroundRect;
  List<Animation<Offset>> get dots => _dots;
  Animation<double> get welcomeText => _welcomeText;
  Animation<Offset> get logo => _logo;
  Animation<double> get nextButton => _nextButton;

  Future<void> forward() async {
    _mainController.forward();
    await Future.delayed(const Duration(milliseconds: 100));
    for (var dotsController in _dotsControllers) {
      dotsController.forward();
      await Future.delayed(const Duration(milliseconds: 100));
    }
  }

  void dispose() {
    _mainController.dispose();
    for (var dotsController in _dotsControllers) {
      dotsController.dispose();
    }
  }
}
