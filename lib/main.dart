import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:masmasgram_ui/app_providers.dart';
import 'package:masmasgram_ui/assets/themes/app_theme.dart';
import 'package:masmasgram_ui/features/auth/screens/auth/auth_screen.dart';
import 'package:masmasgram_ui/features/common/domian/repositories/shared_pref.dart';
import 'package:masmasgram_ui/features/splash/screens/splash/splash_screen.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  await Hive.initFlutter();
  final firstLaunch = await SharedPrefRepository.getFirstLaunch();
  runApp(AppProviders(
    child: MyApp(firstLaunch: firstLaunch),
  ));
}

class MyApp extends StatelessWidget {
  final bool firstLaunch;
  const MyApp({
    Key? key,
    required this.firstLaunch,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Masmasgram UI',
      debugShowCheckedModeBanner: false,
      theme: getThemeData(context),
      home: firstLaunch ? SplashScreen() : AuthScreen(),
    );
  }
}
