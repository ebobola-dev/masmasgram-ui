import 'package:flutter/material.dart';

class SplashBackgroundPainter extends CustomPainter {
  final Color mainColor;
  final Color divColor;

  const SplashBackgroundPainter({
    required this.mainColor,
    required this.divColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = mainColor;
    final path = Path();
    path.moveTo(0, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(SplashBackgroundPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(SplashBackgroundPainter oldDelegate) => false;
}
