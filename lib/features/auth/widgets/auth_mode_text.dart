import 'package:elementary/elementary.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:masmasgram_ui/features/auth/domian/entity/auth_mode.dart';
import 'package:masmasgram_ui/features/auth/screens/auth/auth_widget_model.dart';

class AuthModeText extends StatelessWidget {
  final IAuthWM authWM;
  const AuthModeText({super.key, required this.authWM});

  @override
  Widget build(BuildContext context) {
    return StateNotifierBuilder<AuthMode>(
        listenableState: authWM.authMode,
        builder: (context, authMode) {
          return RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: authMode! == AuthMode.signUp
                      ? 'Already have an account, '
                      : "Don't have an account yet, ",
                  style: authWM.changeAuthModeStyle,
                ),
                TextSpan(
                  text: authMode == AuthMode.signUp ? 'log in' : 'register',
                  style: authWM.changeAuthModeButtonStyle,
                  recognizer: TapGestureRecognizer()
                    ..onTap = authWM.changeAuthMode,
                ),
                TextSpan(
                  text: '?',
                  style: authWM.changeAuthModeStyle,
                ),
              ],
            ),
          );
        });
  }
}
