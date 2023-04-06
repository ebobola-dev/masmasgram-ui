import 'package:elementary/elementary.dart';
import 'package:masmasgram_ui/features/navigation/domian/entity/sub_pages.dart';

class NavigationModel extends ElementaryModel {
  SubPages _subPage = SubPages.defaultPage;

  SubPages get page => _subPage;

  void setPage(int index) {
    _subPage = SubPages.values[index];
  }
}
