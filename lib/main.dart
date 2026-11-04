import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:loqma_food_delivery_app/app.dart';
import 'package:loqma_food_delivery_app/core/localization/locale_controller.dart';
import 'package:loqma_food_delivery_app/core/router/app_router.dart';
import 'package:loqma_food_delivery_app/core/utils/cache/cache_helper.dart';
import 'package:loqma_food_delivery_app/features/onboarding/data/onboarding_repository_impl.dart';

Future<void> main() async {
  final binding = WidgetsFlutterBinding.ensureInitialized();

  // Keep the native (system) splash on screen until SplashPage draws its first frame.
  FlutterNativeSplash.preserve(widgetsBinding: binding);

  await CacheHelper.init();

  runApp(
    LoqmaApp(
      appRouter: AppRouter(onboardingRepository: const OnboardingRepositoryImpl()),
      localeController: LocaleController(),
    ),
  );
}
