import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:masmasgram_ui/assets/strings/animations.dart';
import 'package:masmasgram_ui/features/auth/domian/entity/auth_mode.dart';
import 'package:masmasgram_ui/features/auth/screens/auth/auth_widget_model.dart';
import 'package:masmasgram_ui/features/auth/widgets/field_additional_label.dart';
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              child: StateNotifierBuilder<AuthMode>(
                listenableState: authWM.authMode,
                builder: (_, authMode) {
                  return AnimatedSwitcher(
                    duration: Animations.mediumSpeed,
                    reverseDuration: Animations.mediumSpeed,
                    switchInCurve: Animations.curve,
                    switchOutCurve: Animations.curve,
                    transitionBuilder: (child, animation) {
                      return ScaleTransition(scale: animation, child: child);
                    },
                    child: Text(
                      authMode!.name,
                      key: ValueKey(authMode),
                      style: authWM.authModeTitleStyle,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        const SizedBox(height: 8.0),
        MultiListenerRebuilder(
          listenableList: [
            authWM.authMode,
            authWM.modelsSettings,
            authWM.authInProgress,
          ],
          builder: (context) {
            final authMode = authWM.authMode.value!;
            final modelsSettings = authWM.modelsSettings.value;
            final authInProgress = authWM.authInProgress.value!;
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 8.0),
                AuthField(
                  labelText: "Username",
                  labelStyle: authWM.fieldLabelStyle,
                  labelPadding: authWM.fieldLabelPadding,
                  controller: authWM.usernameFieldController,
                  maxLength: modelsSettings?.username.maxLen,
                  textInputAction: TextInputAction.next,
                  enabled: !authInProgress,
                  additionalLabel:
                      authMode == AuthMode.signUp && modelsSettings != null
                          ? FieldAdditionalLabel(
                              listenableState: authWM.usernameTooShort,
                              textStyle: authWM.fieldLabelStyle,
                              minLen: modelsSettings.username.minLen,
                              maxLen: modelsSettings.username.maxLen,
                            )
                          : null,
                ),
                StateNotifierBuilder<bool>(
                  listenableState: authWM.showPassword,
                  builder: (_, showPassword) {
                    return AuthField(
                      labelText: "Password",
                      labelStyle: authWM.fieldLabelStyle,
                      labelPadding: authWM.fieldLabelPadding,
                      controller: authWM.passwordFieldController,
                      enabled: !authInProgress,
                      additionalSuffixWidget: PasswordEye(authWM: authWM),
                      obscureText: !showPassword!,
                      maxLength: modelsSettings?.password.maxLen,
                      onSubmitted: authMode == AuthMode.signIn
                          ? (_) => authWM.tapOnAuthButton()
                          : null,
                      textInputAction: authMode == AuthMode.signUp
                          ? TextInputAction.next
                          : TextInputAction.done,
                      additionalLabel:
                          authMode == AuthMode.signUp && modelsSettings != null
                              ? FieldAdditionalLabel(
                                  listenableState: authWM.passwordTooShort,
                                  textStyle: authWM.fieldLabelStyle,
                                  minLen: modelsSettings.password.minLen,
                                  maxLen: modelsSettings.password.maxLen,
                                )
                              : null,
                    );
                  },
                ),
                AnimatedSize(
                  duration: Animations.mediumSpeed,
                  reverseDuration: Animations.mediumSpeed,
                  curve: Animations.curve,
                  child: authMode == AuthMode.signUp
                      ? AuthField(
                          labelText: "Full Name",
                          labelStyle: authWM.fieldLabelStyle,
                          labelPadding: authWM.fieldLabelPadding,
                          controller: authWM.fullnameFieldController,
                          maxLength: modelsSettings?.password.maxLen,
                          textInputAction: TextInputAction.done,
                          enabled: !authInProgress,
                          onSubmitted: authMode == AuthMode.signUp
                              ? (_) => authWM.tapOnAuthButton()
                              : null,
                          bottomPadding: 0.0,
                          additionalLabel: authMode == AuthMode.signUp &&
                                  modelsSettings != null
                              ? Text(
                                  ' (max. ${modelsSettings.fullname.maxLen} of characters)',
                                  style: authWM.fieldLabelStyle,
                                )
                              : null,
                        )
                      : SizedBox(),
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}

class AuthField extends StatelessWidget {
  final String labelText;
  final TextStyle labelStyle;
  final Widget? additionalLabel;
  final TextEditingController controller;
  final double labelPadding;
  final Widget? additionalSuffixWidget;
  final double bottomPadding;
  final bool obscureText;
  final List<TextInputFormatter> inputFormatters;
  final int? maxLength;
  final TextInputAction? textInputAction;
  final void Function(String)? onSubmitted;
  final bool enabled;
  const AuthField({
    super.key,
    required this.labelText,
    required this.labelStyle,
    required this.controller,
    required this.labelPadding,
    this.additionalLabel = const SizedBox(),
    this.additionalSuffixWidget,
    this.bottomPadding = 16.0,
    this.obscureText = false,
    this.inputFormatters = const [],
    this.maxLength,
    this.textInputAction,
    this.onSubmitted,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              labelText,
              style: labelStyle,
            ),
            AnimatedSize(
              duration: Animations.mediumSpeed,
              curve: Animations.curve,
              child: additionalLabel ?? SizedBox(),
            ),
          ],
        ),
        SizedBox(height: labelPadding),
        CustomTextField(
          controller: controller,
          additionalSuffixWidget: additionalSuffixWidget,
          obscureText: obscureText,
          maxLength: maxLength,
          inputFormatters: inputFormatters,
          textInputAction: textInputAction,
          onSubmitted: onSubmitted,
          enabled: enabled,
        ),
        if (bottomPadding > 0) SizedBox(height: bottomPadding),
      ],
    );
  }
}
