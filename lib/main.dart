import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:masmasgram_ui/assets/themes/app_theme.dart';
import 'package:masmasgram_ui/features/splash/screens/splash/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Masmasgram UI',
      debugShowCheckedModeBanner: false,
      theme: getThemeData(context),
      home: const SplashScreen(),
    );
  }
}
