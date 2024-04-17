import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:sammy_flutter/src/features/authentication/screens/splash_screen.dart';
import 'package:sammy_flutter/src/utils/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.light,
      home: SplashScreen()
    );
  }
}

