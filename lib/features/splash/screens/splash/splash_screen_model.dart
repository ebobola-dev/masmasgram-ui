import 'package:elementary/elementary.dart';

class SplashScreenModel extends ElementaryModel {
  int _page;

  SplashScreenModel({
    int page = 0,
  }) : _page = page;

  int get page => _page;

  int swipe() {
    if (_page == 2) {
      return -1;
    } else {
      return ++_page;
    }
  }
}
