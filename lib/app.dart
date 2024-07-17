import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytekmobile/utils/theme/theme.dart';
import 'package:mytekmobile/features/authentification/screens/onboarding/onboarding.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system, // Force dark theme
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}
