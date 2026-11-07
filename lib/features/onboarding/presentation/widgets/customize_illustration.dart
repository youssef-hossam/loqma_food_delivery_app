import 'package:flutter/material.dart';
import 'package:loqma_food_delivery_app/core/extensions/context_extensions.dart';
import 'package:loqma_food_delivery_app/core/theme/app_colors.dart';
import 'package:loqma_food_delivery_app/core/theme/app_shadows.dart';
import 'package:loqma_food_delivery_app/core/widgets/app_icon.dart';
import 'package:loqma_food_delivery_app/core/widgets/app_animations.dart';
import 'package:loqma_food_delivery_app/features/onboarding/presentation/widgets/onboarding_parts.dart';

class CustomizeIllustration extends StatelessWidget {
  const CustomizeIllustration({super.key});

  @override
  Widget build(BuildContext context) {
    return IllustrationCanvas(
      children: [
        const Positioned(
          left: 45,
          top: 50,
          child: PopIn(
            fromScale: 0.9,
            fromOffset: Offset(0, 40),
            child: Floating(distance: 5, child: _DishCard()),
          ),
        ),
        Positioned(
          left: 270,
          top: 28,
          child: PopIn(
            delay: const Duration(milliseconds: 450),
            fromScale: 0.2,
            child: Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(color: context.loqma.primary, shape: BoxShape.circle, boxShadow: AppShadows.primaryGlow),
              alignment: Alignment.center,
              child: AppIcon('check', size: 26, color: context.loqma.textOnPrimary),
            ),
          ),
        ),
      ],
    );
  }
}

class _DishCard extends StatelessWidget {
  const _DishCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(color: context.loqma.card, borderRadius: BorderRadius.circular(20), boxShadow: AppShadows.card),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: Image.asset(
              'assets/images/food/burger.png',
              width: 276,
              height: 150,
              fit: BoxFit.cover,
              cacheWidth: (276 * MediaQuery.devicePixelRatioOf(context)).round(),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(child: Text(context.s.onboardingDemoDish, style: context.text.titleMedium?.copyWith(color: context.loqma.textPrimary))),
              Text(context.s.price('300'), style: context.text.titleMedium?.copyWith(color: context.loqma.primary)),
            ],
          ),
          const SizedBox(height: 10),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              _Option(context.s.onboardingDemoDouble, background: context.loqma.primary, foreground: context.loqma.textOnPrimary),
              _Option(context.s.onboardingDemoCheddar, background: context.loqma.primarySoft, foreground: context.loqma.primary),
              _Option(context.s.onboardingDemoBacon, background: context.loqma.primarySoft, foreground: context.loqma.primary),
              _Option(context.s.onboardingDemoNoPickles, background: context.loqma.muted, foreground: context.loqma.textSecondary),
            ],
          ),
        ],
      ),
    );
  }
}

class _Option extends StatelessWidget {
  const _Option(this.label, {required this.background, required this.foreground});

  final String label;
  final Color background;
  final Color foreground;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
      decoration: BoxDecoration(color: background, borderRadius: BorderRadius.circular(999)),
      child: Text(label, style: context.text.labelSmall?.copyWith(color: foreground)),
    );
  }
}
