import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:masmasgram_ui/assets/strings/animations.dart';
import 'package:masmasgram_ui/features/auth/screens/auth/auth_widget_model.dart';
import 'package:masmasgram_ui/utils/animated_switcher_transition.dart';

class AuthButton extends StatelessWidget {
  final IAuthWM authWM;
  const AuthButton({
    super.key,
    required this.authWM,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: authWM.screenSize.width,
      child: MultiListenerRebuilder(
        listenableList: [authWM.canAuth, authWM.authMode],
        builder: (context) {
          final canAuth = authWM.canAuth.value!;
          final authMode = authWM.authMode.value!;
          return ElevatedButton(
            onPressed: canAuth ? authWM.tapOnAuthButton : null,
            clipBehavior: Clip.hardEdge,
            child: AnimatedSwitcher(
              duration: Animations.mediumSpeed,
              reverseDuration: Animations.mediumSpeed,
              switchInCurve: Animations.curve,
              switchOutCurve: Animations.curve,
              transitionBuilder: (child, animation) => slideTransitionBuilder(
                child: child,
                animation: animation,
              ),
              child: Text(
                authMode.name,
                key: ValueKey(authMode),
                style: canAuth
                    ? authWM.authButtonStyle
                    : authWM.authButtonStyle.copyWith(color: Colors.blueGrey),
              ),
            ),
          );
        },
      ),
    );
  }
}
