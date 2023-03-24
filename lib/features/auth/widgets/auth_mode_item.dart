import 'package:flutter/material.dart';
import 'package:masmasgram_ui/features/auth/domian/entity/auth_mode.dart';
import 'package:masmasgram_ui/features/auth/screens/auth/auth_widget_model.dart';

class AuthModeItem extends StatelessWidget {
  final IAuthWM authWM;
  final AuthMode itemMode;
  final VoidCallback onTap;
  const AuthModeItem({
    super.key,
    required this.authWM,
    required this.itemMode,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: authWM.primaryColor,
      borderRadius: authWM.fieldsBorderRadius,
      child: InkWell(
        onTap: onTap,
        borderRadius: authWM.fieldsBorderRadius,
        splashColor: authWM.secondaryColor,
        child: Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            borderRadius: authWM.fieldsBorderRadius,
          ),
          alignment: Alignment.center,
          child: Text(
            itemMode.name,
            style: authWM.authModeStyle,
          ),
        ),
      ),
    );
  }
}
