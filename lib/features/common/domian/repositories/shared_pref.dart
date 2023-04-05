import 'package:masmasgram_ui/assets/strings/local_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefRepository {
  static Future<void> setFirstLaunch() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(LocalKeys.firstLaunch, false);
  }

  static Future<bool> getFirstLaunch() async {
    final prefs = await SharedPreferences.getInstance();
    return await prefs.getBool(LocalKeys.firstLaunch) ?? true;
  }
}
