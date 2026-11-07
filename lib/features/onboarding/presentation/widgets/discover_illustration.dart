import 'package:flutter/material.dart';
import 'package:loqma_food_delivery_app/core/extensions/context_extensions.dart';
import 'package:loqma_food_delivery_app/core/theme/app_colors.dart';
import 'package:loqma_food_delivery_app/core/widgets/app_animations.dart';
import 'package:loqma_food_delivery_app/features/onboarding/presentation/widgets/onboarding_parts.dart';

class DiscoverIllustration extends StatelessWidget {
  const DiscoverIllustration({super.key});

  static const _food = 'assets/images/food';

  @override
  Widget build(BuildContext context) {
    return IllustrationCanvas(
      children: [
        Positioned(
          left: 65,
          top: 60,
          child: PopIn(
            fromScale: 0.6,
            child: Container(
              width: 260,
              height: 260,
              decoration: BoxDecoration(color: context.loqma.primarySoft, shape: BoxShape.circle),
            ),
          ),
        ),
        _bubble(left: 105, top: 90, size: 180, image: '$_food/burger.png', delay: 80, phase: 0.0),
        _bubble(left: 24, top: 30, size: 104, image: '$_food/pizza.png', delay: 180, phase: 0.35),
        _bubble(left: 262, top: 50, size: 96, image: '$_food/sushi.png', delay: 240, phase: 0.7),
        _bubble(left: 40, top: 260, size: 92, image: '$_food/koshari.png', delay: 300, phase: 0.85),
        _bubble(left: 266, top: 250, size: 100, image: '$_food/kunafa.png', delay: 360, phase: 0.15),
        Positioned(
          left: 0,
          right: 0,
          top: 330,
          child: Center(
            child: PopIn(
              delay: const Duration(milliseconds: 450),
              fromScale: 0.8,
              fromOffset: const Offset(0, 24),
              child: FloatingChip(label: context.s.onboardingRestaurantsCount(500)),
            ),
          ),
        ),
      ],
    );
  }

  Widget _bubble({
    required double left,
    required double top,
    required double size,
    required String image,
    required int delay,
    required double phase,
  }) {
    return Positioned(
      left: left,
      top: top,
      child: PopIn(
        delay: Duration(milliseconds: delay),
        child: Floating(phase: phase, child: FoodBubble(image: image, size: size)),
      ),
    );
  }
}
