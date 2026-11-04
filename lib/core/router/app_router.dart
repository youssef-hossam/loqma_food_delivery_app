import 'package:flutter/material.dart';
import 'package:loqma_food_delivery_app/core/router/router_transitions.dart';
import 'package:loqma_food_delivery_app/core/router/routes.dart';
import 'package:loqma_food_delivery_app/features/onboarding/domain/onboarding_repository.dart';
import 'package:loqma_food_delivery_app/features/onboarding/presentation/pages/on_boarding_page.dart';
import 'package:loqma_food_delivery_app/features/splash/presentation/pages/splash_page.dart';

class AppRouter {
  AppRouter({required this.onboardingRepository});

  final OnboardingRepository onboardingRepository;

  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return RouterTransitions.build(
          SplashPage(onboardingRepository: onboardingRepository),
          settings: settings,
        );
      case Routes.onboarding:
        return RouterTransitions.buildFade(
          OnBoardingPage(onboardingRepository: onboardingRepository),
        );
      case Routes.login:
        // TODO: replace with LoginView
        return RouterTransitions.buildFade(const _ComingSoon(title: 'Login'));
      case Routes.home:
        // TODO: replace with HomeView
        return RouterTransitions.buildHorizontal(
          const _ComingSoon(title: 'Home'),
        );
      default:
        return RouterTransitions.build(
          const Scaffold(body: Center(child: Text("No Route"))),
        );
    }
  }
}

class _ComingSoon extends StatelessWidget {
  const _ComingSoon({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(title, style: Theme.of(context).textTheme.headlineMedium),
      ),
    );
  }
}
