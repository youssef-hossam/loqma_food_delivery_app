import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loqma_food_delivery_app/core/extensions/context_extensions.dart';
import 'package:loqma_food_delivery_app/core/router/routes.dart';
import 'package:loqma_food_delivery_app/core/theme/app_colors.dart';
import 'package:loqma_food_delivery_app/features/onboarding/domain/onboarding_repository.dart';
import 'package:loqma_food_delivery_app/features/onboarding/presentation/cubit/onboarding_cubit.dart';
import 'package:loqma_food_delivery_app/features/onboarding/presentation/widgets/customize_illustration.dart';
import 'package:loqma_food_delivery_app/features/onboarding/presentation/widgets/discover_illustration.dart';
import 'package:loqma_food_delivery_app/features/onboarding/presentation/widgets/onboarding_header.dart';
import 'package:loqma_food_delivery_app/features/onboarding/presentation/widgets/onboarding_sheet.dart';
import 'package:loqma_food_delivery_app/features/onboarding/presentation/widgets/track_illustration.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key, required this.onboardingRepository});

  final OnboardingRepository onboardingRepository;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => OnboardingCubit(onboardingRepository),
      child: const _OnBoardingView(),
    );
  }
}

class _OnBoardingView extends StatefulWidget {
  const _OnBoardingView();

  @override
  State<_OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<_OnBoardingView> {
  final _pageController = PageController();
  bool _precached = false;

  static const _images = [
    'assets/images/food/burger.png',
    'assets/images/food/pizza.png',
    'assets/images/food/sushi.png',
    'assets/images/food/koshari.png',
    'assets/images/food/kunafa.png',
  ];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_precached) return;
    _precached = true;
    // load images early
    for (final image in _images) {
      precacheImage(AssetImage(image), context);
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Future<void> _finish() async {
    await context.read<OnboardingCubit>().complete();
    if (!mounted) return;
    Navigator.pushReplacementNamed(context, Routes.login);
  }

  void _next() {
    if (context.read<OnboardingCubit>().isLast) {
      _finish();
      return;
    }
    _pageController.nextPage(duration: const Duration(milliseconds: 450), curve: Curves.easeOutCubic);
  }

  @override
  Widget build(BuildContext context) {
    final slides = [
      (context.s.onboardingDiscoverTitle, context.s.onboardingDiscoverBody),
      (context.s.onboardingCustomizeTitle, context.s.onboardingCustomizeBody),
      (context.s.onboardingTrackTitle, context.s.onboardingTrackBody),
    ];
    final dark = Theme.of(context).brightness == Brightness.dark;

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: dark ? SystemUiOverlayStyle.light : SystemUiOverlayStyle.dark,
      child: Scaffold(
        body: DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [context.loqma.primarySoft, context.loqma.background],
            ),
          ),
          child: Column(
            children: [
              SafeArea(
                bottom: false,
                child: Padding(
                  padding: EdgeInsets.only(top: 8.h),
                  child: OnboardingHeader(onSkip: _finish),
                ),
              ),
              Expanded(
                child: PageView(
                  controller: _pageController,
                  onPageChanged: context.read<OnboardingCubit>().pageChanged,
                  children: const [
                    DiscoverIllustration(),
                    CustomizeIllustration(),
                    TrackIllustration(),
                  ],
                ),
              ),
              BlocBuilder<OnboardingCubit, int>(
                builder: (context, index) => OnboardingSheet(
                  index: index,
                  count: OnboardingCubit.pagesCount,
                  title: slides[index].$1,
                  body: slides[index].$2,
                  cta: index == OnboardingCubit.pagesCount - 1 ? context.s.getStarted : context.s.next,
                  onPressed: _next,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
