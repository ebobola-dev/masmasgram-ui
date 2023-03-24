import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:masmasgram_ui/assets/themes/paddings.dart';
import 'package:masmasgram_ui/features/auth/screens/auth/auth_widget_model.dart';
import 'package:masmasgram_ui/features/auth/widgets/auth_fields.dart';
import 'package:masmasgram_ui/features/common/widgets/background.dart';

class AuthScreen extends ElementaryWidget<AuthWM> {
  const AuthScreen({
    super.key,
    WidgetModelFactory wmFactory = createAuthWM,
  }) : super(wmFactory);

  @override
  Widget build(IAuthWM wm) {
    final screenSize = wm.screenSize;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Stack(
          children: [
            //? Background
            AnimatedBuilder(
              animation: wm.startAnimations.backgroundRect,
              builder: (context, _) {
                //? Пожилые гениальные вычисления
                final backroundRectSize = Size.square(screenSize.width * 1.5);
                return BackgroundRectangle(
                  bottom: -screenSize.height * .3,
                  left: -(backroundRectSize.width - screenSize.width) * 0.5,
                  outerSize: backroundRectSize,
                  positionAnimation: wm.startAnimations.backgroundRect,
                );
              },
            ),
            //
            Padding(
              padding: EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  SizedBox(height: screenSize.height * .15),
                  AuthFields(authWM: wm),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
