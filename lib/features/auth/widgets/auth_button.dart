import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:masmasgram_ui/assets/strings/animations.dart';
import 'package:masmasgram_ui/features/auth/screens/auth/auth_widget_model.dart';
import 'package:masmasgram_ui/utils/animated_switcher_transition.dart';
import 'dart:math' show pi;

class AuthButton extends StatelessWidget {
  final IAuthWM authWM;
  const AuthButton({
    super.key,
    required this.authWM,
  });

  @override
  Widget build(BuildContext context) {
    final borderRadiusValue = 7.5;
    return MultiListenerRebuilder(
      listenableList: [authWM.canAuth, authWM.authMode, authWM.authInProgress],
      builder: (context) {
        final canAuth = authWM.canAuth.value!;
        final authMode = authWM.authMode.value!;
        final authInProgress = authWM.authInProgress.value!;
        final canTap = canAuth && !authInProgress;
        return SizedBox(
          height: 60,
          width: authWM.screenSize.width,
          child: Stack(
            children: [
              Positioned.fill(
                child: AnimatedBuilder(
                  animation: authWM.authButtonBorderAnimation,
                  builder: (context, _) {
                    return CustomPaint(
                      foregroundPainter: authInProgress
                          ? AuthButtonBorderPainter(
                              color: Theme.of(context).colorScheme.secondary,
                              borderRadiusValue: borderRadiusValue,
                              value: authWM.authButtonBorderAnimation.value,
                            )
                          : null,
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          color:
                              canTap ? authWM.textColor : authWM.dividerColor,
                          borderRadius:
                              BorderRadius.circular(borderRadiusValue),
                        ),
                        child: AnimatedSwitcher(
                          duration: Animations.mediumSpeed,
                          reverseDuration: Animations.mediumSpeed,
                          switchInCurve: Animations.curve,
                          switchOutCurve: Animations.curve,
                          transitionBuilder: (child, animation) =>
                              slideTransitionBuilder(
                            child: child,
                            animation: animation,
                          ),
                          child: Text(
                            authMode.name,
                            key: ValueKey(authMode),
                            style: canTap
                                ? authWM.authButtonStyle
                                : authWM.authButtonStyle
                                    .copyWith(color: Colors.blueGrey),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Material(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(7.5),
                child: InkWell(
                  onTap: canTap ? authWM.tapOnAuthButton : null,
                  borderRadius: BorderRadius.circular(7.5),
                  splashColor: authWM.secondaryColor,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

//* Реализация взята у mohit-chauhan-98
//* https://github.com/mohit-chauhan-98/animated_loading_border
class AuthButtonBorderPainter extends CustomPainter {
  final Color color;
  final double borderRadiusValue;
  final double value;

  const AuthButtonBorderPainter({
    required this.color,
    required this.borderRadiusValue,
    required this.value,
  });

  @override
  void paint(Canvas canvas, Size size) {
    if (value > 0.0) {
      final rect = Offset.zero & size;
      final paint = Paint()
        ..color = color
        ..strokeWidth = 3
        ..style = PaintingStyle.stroke
        ..strokeCap = StrokeCap.round;
      paint.shader = SweepGradient(
        colors: [
          color.withOpacity(0.1),
          color,
          Colors.transparent,
        ],
        stops: const [
          0.0,
          1.0,
          1.0,
        ],
        startAngle: pi / 8,
        endAngle: pi / 2,
        transform: GradientRotation(pi * 2 * value),
      ).createShader(rect);

      var rRect = RRect.fromRectAndRadius(
        rect,
        Radius.circular(borderRadiusValue),
      );

      final path = Path()..addRRect(rRect);

      canvas.drawRRect(
        rRect,
        paint
          ..strokeWidth = 3
          ..style = PaintingStyle.stroke
          ..strokeCap = StrokeCap.round,
      );

      canvas.drawPath(path, paint);
    }
    // canvas.drawRRect(
    //   RRect.fromRectAndRadius(
    //     Rect.fromCenter(
    //       center: Offset(size.width * 0.5, size.height * 0.5),
    //       width: size.width,
    //       height: size.height,
    //     ),
    //     Radius.circular(borderRadiusValue),
    //   ),
    //   paint,
    // );
    // //? Start on middle left side point
    // canvas.drawLine(
    //   Offset(0.0, size.height * 0.5),
    //   Offset(0.0, borderRadiusValue),
    //   paint,
    // );
    // //? Draw top left angle
    // canvas.drawArc(
    //   Rect.fromCenter(
    //     center: Offset(borderRadiusValue, borderRadiusValue),
    //     width: borderRadiusValue * 2,
    //     height: borderRadiusValue * 2,
    //   ),
    //   pi,
    //   pi / 2,
    //   false,
    //   paint,
    // );
    // //? Draw top side
    // canvas.drawLine(
    //   Offset(borderRadiusValue, 0.0),
    //   Offset(size.width - borderRadiusValue, 0.0),
    //   paint,
    // );
    // //? Draw top right angle
    // canvas.drawArc(
    //   Rect.fromCenter(
    //     center: Offset(
    //       size.width - borderRadiusValue,
    //       borderRadiusValue,
    //     ),
    //     width: borderRadiusValue * 2,
    //     height: borderRadiusValue * 2,
    //   ),
    //   3 * pi / 2,
    //   pi / 2,
    //   false,
    //   paint,
    // );
    // //? Draw left side
    // canvas.drawLine(
    //   Offset(size.width, borderRadiusValue),
    //   Offset(size.width, size.height - borderRadiusValue),
    //   paint,
    // );
    // //? Draw bottom right angle
    // canvas.drawArc(
    //   Rect.fromCenter(
    //     center: Offset(
    //       size.width - borderRadiusValue,
    //       size.height - borderRadiusValue,
    //     ),
    //     width: borderRadiusValue * 2,
    //     height: borderRadiusValue * 2,
    //   ),
    //   0,
    //   pi / 2,
    //   false,
    //   paint,
    // );
    // //? Draw bottom side
    // canvas.drawLine(
    //   Offset(size.width - borderRadiusValue, size.height),
    //   Offset(borderRadiusValue, size.height),
    //   paint,
    // );
    // //? Draw bottom left angle
    // canvas.drawArc(
    //   Rect.fromCenter(
    //     center: Offset(
    //       borderRadiusValue,
    //       size.height - borderRadiusValue,
    //     ),
    //     width: borderRadiusValue * 2,
    //     height: borderRadiusValue * 2,
    //   ),
    //   pi / 2,
    //   pi / 2,
    //   false,
    //   paint,
    // );
    // //? Finish draw left side
    // canvas.drawLine(
    //   Offset(0.0, size.height - borderRadiusValue),
    //   Offset(0.0, size.height * 0.5),
    //   paint,
    // );
  }

  @override
  bool shouldRepaint(AuthButtonBorderPainter oldDelegate) => true;

  @override
  bool shouldRebuildSemantics(AuthButtonBorderPainter oldDelegate) =>
      oldDelegate != this;
}
