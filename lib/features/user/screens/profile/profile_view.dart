import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:masmasgram_ui/assets/themes/paddings.dart';
import 'package:masmasgram_ui/features/common/widgets/background.dart';
import 'package:masmasgram_ui/features/user/screens/profile/profile_widget_model.dart';
import 'package:masmasgram_ui/features/user/widgets/avatar.dart';
import 'package:masmasgram_ui/features/user/widgets/header.dart';
import 'package:masmasgram_ui/features/user/widgets/name.dart';

class ProfileView extends ElementaryWidget<ProfileWM> {
  const ProfileView({
    super.key,
    WidgetModelFactory wmFactory = createProfileWM,
  }) : super(wmFactory);

  @override
  Widget build(IProfileWM wm) {
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
                  top: -screenSize.height * .3,
                  left: -(backroundRectSize.width - screenSize.width) * 0.5,
                  outerSize: backroundRectSize,
                  positionAnimation: wm.startAnimations.backgroundRect,
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: defaultPadding / 2,
                horizontal: defaultPadding / 2,
              ),
              child: Column(
                children: [
                  UserHeader(profileWM: wm),
                  const SizedBox(height: 12),
                  Flexible(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          AvatarWidget(profileWM: wm),
                          const SizedBox(height: 12),
                          NameWidget(profileWM: wm),
                          const SizedBox(height: 12),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
