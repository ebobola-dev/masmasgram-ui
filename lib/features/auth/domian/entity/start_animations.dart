import 'package:flutter/material.dart';

import 'package:masmasgram_ui/assets/strings/animations.dart';

class AuthStartAnimations {
  late final AnimationController _mainController;
  late final Animation<Offset> _backgroundRect;

  AuthStartAnimations({
    required TickerProvider vsync,
  }) {
    _mainController = AnimationController(
      vsync: vsync,
      duration: animationDuration,
    );
    final curvedController = CurvedAnimation(
      parent: _mainController,
      curve: animationCurve,
    );
    _backgroundRect = Tween(
      begin: const Offset(0.0, -1.0),
      end: Offset.zero,
    ).animate(curvedController);
  }

  Animation<Offset> get backgroundRect => _backgroundRect;

  Future<void> forward() async {
    _mainController.forward();
    await Future.delayed(const Duration(milliseconds: 100));
  }

  void dispose() {
    _mainController.dispose();
  }
}
