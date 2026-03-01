import 'package:flutter/material.dart';

import 'home/home_screen.dart';
import 'home/onboarding/onboarding_screen.dart';
import 'utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.onboardingRouteName,
      // ✅ set onboarding as initial
      routes: {
        AppRoutes.onboardingRouteName: (context) => const OnboardingScreen(),
        AppRoutes.homeRouteName: (context) => const HomeScreen(),
      },
    );
  }
}