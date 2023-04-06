import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:masmasgram_ui/features/navigation/screens/navigation/navigation_widget_model.dart';
import 'package:masmasgram_ui/features/navigation/widgets/nav_bar.dart';
import 'package:masmasgram_ui/features/user/screens/profile/profile_view.dart';

class NavigationScreen extends ElementaryWidget<NavigationWM> {
  const NavigationScreen({
    super.key,
    WidgetModelFactory wmFactory = createNavigationWM,
  }) : super(wmFactory);

  @override
  Widget build(INavigationWM wm) {
    final screenSize = wm.screenSize;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Padding(
          padding: EdgeInsets.only(top: wm.topIndent),
          child: PageView(
            controller: wm.pageController,
            children: [
              Text('HOME'),
              Text('MESSAGES'),
              Text('NOTIFICATIONS'),
              ProfileView(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: MyNavigationBar(navigationWM: wm),
    );
  }
}
