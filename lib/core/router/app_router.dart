import 'package:flutter/material.dart';
import 'package:loqma_food_delivery_app/core/extensions/context_extensions.dart';
import 'package:loqma_food_delivery_app/core/router/router_transitions.dart';
import 'package:loqma_food_delivery_app/core/router/routes.dart';
import 'package:loqma_food_delivery_app/features/auth/presentation/pages/login_page.dart';
import 'package:loqma_food_delivery_app/features/auth/presentation/pages/register_page.dart';
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
        return RouterTransitions.buildFade(const LoginPage());
      case Routes.register:
        return RouterTransitions.buildHorizontal(const RegisterPage());
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
        child: Text(title, style: context.text.headlineMedium),
      ),
    );
  }
}
