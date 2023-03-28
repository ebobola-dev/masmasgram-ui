import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:masmasgram_ui/assets/strings/image_paths.dart';
import 'package:masmasgram_ui/features/auth/screens/auth/auth_widget_model.dart';
import 'package:masmasgram_ui/features/common/widgets/custom_text_field.dart';

class PasswordEye extends StatelessWidget {
  final IAuthWM authWM;
  const PasswordEye({super.key, required this.authWM});

  @override
  Widget build(BuildContext context) {
    return StateNotifierBuilder<bool>(
      listenableState: authWM.passwordIsEmpty,
      builder: (context, passwordIsEmpty) {
        return SuffixIconButton(
          show: !passwordIsEmpty!,
          onTap: authWM.tapOnPasswordEye,
          icon: AnimatedBuilder(
              animation: authWM.passwordEyeLineAnimation,
              builder: (context, _) {
                return CustomPaint(
                  painter: EyeLinePainter(
                    color: Theme.of(context).dividerColor,
                    indent: authWM.passwordEyeLineIndent,
                    value: authWM.passwordEyeLineAnimation.value,
                  ),
                  child: SvgPicture.asset(
                    IconPaths.eye,
                    colorFilter: ColorFilter.mode(
                      Theme.of(context).dividerColor,
                      BlendMode.srcIn,
                    ),
                  ),
                );
              }),
        );
      },
    );
  }
}

class EyeLinePainter extends CustomPainter {
  final Color color;
  final double indent;
  final double value;

  const EyeLinePainter({
    required this.color,
    required this.value,
    this.indent = 2.0,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final startPoint = Offset(indent, indent);
    final endPoint = Offset(size.width - indent, size.height - indent);
    final paint = Paint()
      ..color = color
      ..strokeWidth = 3
      ..strokeCap = StrokeCap.round;
    if (value > 0.0) {
      canvas.drawLine(
        startPoint,
        endPoint * value,
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(EyeLinePainter oldDelegate) => true;

  @override
  bool shouldRebuildSemantics(EyeLinePainter oldDelegate) => true;
}
