import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loqma_food_delivery_app/core/di/service_locator.dart';
import 'package:loqma_food_delivery_app/core/router/router_transitions.dart';
import 'package:loqma_food_delivery_app/core/router/routes.dart';
import 'package:loqma_food_delivery_app/features/auth/domain/repositories/auth_repository.dart';
import 'package:loqma_food_delivery_app/features/auth/presentation/cubits/login/login_cubit.dart';
import 'package:loqma_food_delivery_app/features/auth/presentation/cubits/register/register_cubit.dart';
import 'package:loqma_food_delivery_app/features/auth/presentation/pages/login_page.dart';
import 'package:loqma_food_delivery_app/features/auth/presentation/pages/register_page.dart';
import 'package:loqma_food_delivery_app/features/home/presentation/pages/main_shell_page.dart';
import 'package:loqma_food_delivery_app/features/onboarding/domain/onboarding_repository.dart';
import 'package:loqma_food_delivery_app/features/restaurants/presentation/cubit/dish_details_cubit.dart';
import 'package:loqma_food_delivery_app/features/restaurants/presentation/cubit/restaurant_details_cubit.dart';
import 'package:loqma_food_delivery_app/features/restaurants/presentation/pages/dish_details_page.dart';
import 'package:loqma_food_delivery_app/features/restaurants/presentation/pages/restaurant_details_page.dart';
import 'package:loqma_food_delivery_app/features/onboarding/presentation/pages/on_boarding_page.dart';
import 'package:loqma_food_delivery_app/features/splash/presentation/pages/splash_page.dart';

class AppRouter {
  AppRouter({required this.onboardingRepository});

  // Lets us navigate from places that have no BuildContext (like the AuthInterceptor)
  static final navigatorKey = GlobalKey<NavigatorState>();

  final OnboardingRepository onboardingRepository;

  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return RouterTransitions.build(
          SplashPage(
            onboardingRepository: onboardingRepository,
            authRepository: sl<AuthRepository>(),
          ),
          settings: settings,
        );
      case Routes.onboarding:
        return RouterTransitions.buildFade(
          OnBoardingPage(onboardingRepository: onboardingRepository),
        );
      case Routes.login:
        return RouterTransitions.buildFade(
          BlocProvider(
            create: (context) => sl<LoginCubit>(),
            child: const LoginPage(),
          ),
        );
      case Routes.register:
        return RouterTransitions.buildHorizontal(
          BlocProvider(
            create: (context) => sl<RegisterCubit>(),
            child: const RegisterPage(),
          ),
        );
      case Routes.home:
        return RouterTransitions.buildFade(const MainShellPage());
      case Routes.restaurantDetails:
        // The restaurant id comes from the card that was tapped
        final restaurantId = settings.arguments as String;
        return RouterTransitions.buildHorizontal(
          BlocProvider(
            create: (context) =>
                sl<RestaurantDetailsCubit>()..getDetails(restaurantId),
            child: RestaurantDetailsPage(restaurantId: restaurantId),
          ),
        );
      case Routes.dishDetails:
        final dishId = settings.arguments as String;
        // Opens from the bottom like a sheet
        return RouterTransitions.buildVertical(
          BlocProvider(
            create: (context) => sl<DishDetailsCubit>()..getDish(dishId),
            child: DishDetailsPage(dishId: dishId),
          ),
        );
      default:
        return RouterTransitions.build(
          const Scaffold(body: Center(child: Text('No Route'))),
        );
    }
  }
}
