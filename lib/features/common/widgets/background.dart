import 'package:flutter/material.dart';
import 'package:masmasgram_ui/utils/screen_sizes.dart';
import 'dart:math' show pi;

class BackgroundRectangle extends StatelessWidget {
  final Animation<Offset> positionAnimation;
  final double rotateAngle;
  final double? left;
  final double? right;
  final double? top;
  final double? bottom;
  final Size? outerSize;
  const BackgroundRectangle({
    super.key,
    required this.positionAnimation,
    this.rotateAngle = -pi / 4,
    this.left,
    this.right,
    this.top,
    this.bottom,
    this.outerSize,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = getScreenSize(context);
    final _outerSize =
        outerSize ?? Size(screenSize.width * 2.4, screenSize.height * .6);
    return Positioned(
      left: left,
      right: right,
      top: top,
      bottom: bottom,
      child: SlideTransition(
        position: positionAnimation,
        child: Transform.rotate(
          angle: rotateAngle,
          child: Container(
            width: _outerSize.width,
            height: _outerSize.height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(155.0),
              border: Border.all(color: Theme.of(context).dividerColor),
            ),
            padding: const EdgeInsets.all(48.0),
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(152.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
