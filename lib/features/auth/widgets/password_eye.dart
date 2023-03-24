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
          icon: SvgPicture.asset(
            IconPaths.eye,
            colorFilter: ColorFilter.mode(
              Theme.of(context).dividerColor,
              BlendMode.srcIn,
            ),
          ),
        );
      },
    );
  }
}
