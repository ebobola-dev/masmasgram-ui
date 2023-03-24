import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:masmasgram_ui/features/auth/domian/entity/auth_mode.dart';
import 'package:masmasgram_ui/features/auth/screens/auth/auth_widget_model.dart';
import 'package:masmasgram_ui/features/auth/widgets/password_eye.dart';
import 'package:masmasgram_ui/features/common/widgets/custom_text_field.dart';

class AuthFields extends StatelessWidget {
  final IAuthWM authWM;
  const AuthFields({super.key, required this.authWM});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            StateNotifierBuilder<AuthMode>(
              listenableState: authWM.authMode,
              builder: (_, authMode) {
                return Text(
                  authMode!.name,
                  style: authWM.authModeStyle,
                );
              },
            ),
          ],
        ),
        const SizedBox(height: 8.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8.0),
            AuthField(
              labelText: "Username",
              labelStyle: authWM.fieldLabelStyle,
              labelPadding: authWM.fieldLabelPadding,
              controller: authWM.usernameFieldController,
            ),
            StateNotifierBuilder<bool>(
              listenableState: authWM.showPassword,
              builder: (_, showPassword) {
                return AuthField(
                  labelText: "Password",
                  labelStyle: authWM.fieldLabelStyle,
                  labelPadding: authWM.fieldLabelPadding,
                  controller: authWM.passwordFieldController,
                  additionalSuffixWidget: PasswordEye(authWM: authWM),
                  obscureText: !showPassword!,
                );
              },
            ),
            AuthField(
              labelText: "Full Name",
              labelStyle: authWM.fieldLabelStyle,
              labelPadding: authWM.fieldLabelPadding,
              controller: authWM.fullnameFieldController,
              bottomPadding: 0.0,
            ),
          ],
        ),
      ],
    );
  }
}

class AuthField extends StatelessWidget {
  final String labelText;
  final TextStyle labelStyle;
  final TextEditingController controller;
  final double labelPadding;
  final Widget? additionalSuffixWidget;
  final double bottomPadding;
  final bool obscureText;
  const AuthField({
    super.key,
    required this.labelText,
    required this.labelStyle,
    required this.controller,
    required this.labelPadding,
    this.additionalSuffixWidget,
    this.bottomPadding = 16.0,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: labelStyle,
        ),
        SizedBox(height: labelPadding),
        CustomTextField(
          controller: controller,
          additionalSuffixWidget: additionalSuffixWidget,
          obscureText: obscureText,
        ),
        if (bottomPadding > 0) SizedBox(height: bottomPadding),
      ],
    );
  }
}
