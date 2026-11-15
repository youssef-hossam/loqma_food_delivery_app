import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loqma_food_delivery_app/core/di/service_locator.dart';
import 'package:loqma_food_delivery_app/core/extensions/context_extensions.dart';
import 'package:loqma_food_delivery_app/core/localization/locale_controller.dart';
import 'package:loqma_food_delivery_app/core/router/app_router.dart';
import 'package:loqma_food_delivery_app/core/router/routes.dart';
import 'package:loqma_food_delivery_app/core/theme/app_theme.dart';
import 'package:loqma_food_delivery_app/features/cart/presentation/cubit/cart_cubit.dart';
import 'package:loqma_food_delivery_app/generated/l10n.dart';

class LoqmaApp extends StatelessWidget {
  const LoqmaApp({
    super.key,
    required this.appRouter,
    required this.localeController,
  });

  final AppRouter appRouter;
  final LocaleController localeController;

  @override
  Widget build(BuildContext context) {
    // The cart is above MaterialApp so every page shares the same CartCubit.
    // We don't load it here: the user may not be logged in yet.
    return BlocProvider(
      create: (context) => sl<CartCubit>(),
      child: ScreenUtilInit(
        designSize: const Size(390, 844),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) => LocaleScope(
          controller: localeController,
          child: ValueListenableBuilder<Locale?>(
            valueListenable: localeController,
            builder: (context, locale, _) {
              final arabic = localeController.isArabic;
              return MaterialApp(
                navigatorKey: AppRouter.navigatorKey,
                onGenerateTitle: (context) => context.s.appName,
                debugShowCheckedModeBanner: false,
                locale: locale,
                supportedLocales: S.delegate.supportedLocales,
                localizationsDelegates: const [
                  S.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                theme: LoqmaTheme.light(arabic: arabic),
                darkTheme: LoqmaTheme.dark(arabic: arabic),
                themeMode: ThemeMode.system,
                initialRoute: Routes.splash,
                onGenerateRoute: appRouter.onGenerateRoute,
              );
            },
          ),
        ),
      ),
    );
  }
}
