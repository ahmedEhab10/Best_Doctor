import 'package:best_doctor_app/core/routing/routes.dart';
import 'package:best_doctor_app/featuers/onboarding/ui/on_boarding_Screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? genreatorRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => Placeholder(),
        );

      default:
        return null;
    }
  }
}
