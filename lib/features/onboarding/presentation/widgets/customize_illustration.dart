import 'package:flutter/material.dart';
import 'package:loqma_food_delivery_app/core/theme/app_colors.dart';
import 'package:loqma_food_delivery_app/core/theme/app_shadows.dart';
import 'package:loqma_food_delivery_app/core/widgets/app_icon.dart';
import 'package:loqma_food_delivery_app/features/onboarding/presentation/widgets/onboarding_animations.dart';
import 'package:loqma_food_delivery_app/features/onboarding/presentation/widgets/onboarding_parts.dart';
import 'package:loqma_food_delivery_app/generated/l10n.dart';

/// Page 2 · "00 · Onboarding 2 · Customize"
class CustomizeIllustration extends StatelessWidget {
  const CustomizeIllustration({super.key});

  @override
  Widget build(BuildContext context) {
    final c = context.loqma;
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
              decoration: BoxDecoration(color: c.primary, shape: BoxShape.circle, boxShadow: AppShadows.primaryGlow),
              alignment: Alignment.center,
              child: AppIcon('check', size: 26, color: c.textOnPrimary),
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
    final c = context.loqma;
    final t = Theme.of(context).textTheme;
    final s = S.of(context);
    return Container(
      width: 300,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(color: c.card, borderRadius: BorderRadius.circular(20), boxShadow: AppShadows.card),
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
              Expanded(child: Text(s.onboardingDemoDish, style: t.titleMedium?.copyWith(color: c.textPrimary))),
              Text(s.price('300'), style: t.titleMedium?.copyWith(color: c.primary)),
            ],
          ),
          const SizedBox(height: 10),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              _Option(s.onboardingDemoDouble, background: c.primary, foreground: c.textOnPrimary),
              _Option(s.onboardingDemoCheddar, background: c.primarySoft, foreground: c.primary),
              _Option(s.onboardingDemoBacon, background: c.primarySoft, foreground: c.primary),
              _Option(s.onboardingDemoNoPickles, background: c.muted, foreground: c.textSecondary),
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
      child: Text(label, style: Theme.of(context).textTheme.labelSmall?.copyWith(color: foreground)),
    );
  }
}
