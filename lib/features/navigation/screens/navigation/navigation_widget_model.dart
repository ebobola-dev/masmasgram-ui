import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:masmasgram_ui/assets/strings/animations.dart';
import 'package:masmasgram_ui/features/navigation/domian/entity/sub_pages.dart';
import 'package:masmasgram_ui/features/navigation/screens/navigation/navigation_model.dart';
import 'package:masmasgram_ui/features/navigation/screens/navigation/navigation_screen.dart';
import 'package:masmasgram_ui/utils/screen_sizes.dart';

NavigationWM createNavigationWM(BuildContext context) => NavigationWM(
      NavigationModel(),
    );

class NavigationWM extends WidgetModel<NavigationScreen, NavigationModel>
    implements INavigationWM {
  late final PageController _pageController;
  late final StateNotifier<SubPages> _subPage;

  NavigationWM(super.model);

  @override
  void initWidgetModel() {
    _pageController = PageController(initialPage: model.page.index);
    _subPage = StateNotifier(initValue: model.page);

    super.initWidgetModel();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Size get screenSize => getScreenSize(context);

  @override
  double get topIndent => MediaQuery.of(context).padding.top;

  @override
  Color get primaryColor => Theme.of(context).primaryColor;

  @override
  Color get secondaryColor => Theme.of(context).colorScheme.secondary;

  @override
  Color get dividerColor => Theme.of(context).dividerColor;

  @override
  Color get textColor => Theme.of(context).textTheme.titleLarge!.color!;

  @override
  StateNotifier<SubPages> get subPage => _subPage;

  @override
  PageController get pageController => _pageController;

  @override
  Future<void> swipeTo(int index) async {
    model.setPage(index);
    _subPage.accept(SubPages.values[index]);
    _pageController.animateToPage(
      index,
      duration: Animations.mediumSpeed,
      curve: Animations.curve,
    );
  }
}

abstract class INavigationWM extends IWidgetModel {
  Size get screenSize;
  double get topIndent;
  Color get primaryColor;
  Color get secondaryColor;
  Color get dividerColor;
  Color get textColor;

  StateNotifier<SubPages> get subPage;
  PageController get pageController;

  Future<void> swipeTo(int index);
}
