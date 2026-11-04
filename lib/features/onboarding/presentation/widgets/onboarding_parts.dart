import 'package:flutter/material.dart';
import 'package:loqma_food_delivery_app/core/theme/app_colors.dart';
import 'package:loqma_food_delivery_app/core/theme/app_shadows.dart';

/// Every illustration is drawn on the Figma canvas (390 × 426, between the
/// header and the bottom sheet) and scaled to the available space.
class IllustrationCanvas extends StatelessWidget {
  const IllustrationCanvas({super.key, required this.children});

  static const width = 390.0;
  static const height = 426.0;

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: SizedBox(
        width: width,
        height: height,
        child: Stack(clipBehavior: Clip.none, children: children),
      ),
    );
  }
}

/// Round food photo with a white rim and soft shadow.
class FoodBubble extends StatelessWidget {
  const FoodBubble({super.key, required this.image, required this.size});

  final String image;
  final double size;

  @override
  Widget build(BuildContext context) {
    final dpr = MediaQuery.devicePixelRatioOf(context);
    return Container(
      width: size,
      height: size,
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: context.loqma.card,
        shape: BoxShape.circle,
        boxShadow: AppShadows.float,
      ),
      child: ClipOval(
        child: Image.asset(
          image,
          fit: BoxFit.cover,
          cacheWidth: (size * dpr).round(), // decode at display size, not 1024px
        ),
      ),
    );
  }
}

/// White pill used for "+500 restaurants" and "Arriving in 12 min".
class FloatingChip extends StatelessWidget {
  const FloatingChip({super.key, required this.label, this.leading});

  final String label;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    final c = context.loqma;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: c.card,
        borderRadius: BorderRadius.circular(999),
        boxShadow: AppShadows.card,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (leading != null) ...[leading!, const SizedBox(width: 6)],
          Text(label, style: Theme.of(context).textTheme.labelMedium?.copyWith(color: c.textPrimary)),
        ],
      ),
    );
  }
}
