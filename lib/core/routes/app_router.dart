import 'package:flutter/material.dart';
import 'package:movies_app/core/routes/routes.dart';
import 'package:movies_app/features/onboarding/presentation/view/get_started_screen.dart';
import 'package:movies_app/features/onboarding/presentation/view/onboarding_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    String? routeName = settings.name;

    switch (routeName) {
      case Routes.onboardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );

      case Routes.getStartedScreen:
        return MaterialPageRoute(
          builder: (_) => const GetStartedScreen(),
        );
    }
    return null;
  }
}
