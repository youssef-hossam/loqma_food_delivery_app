import 'package:flutter/material.dart';
import 'package:loqma_food_delivery_app/core/extensions/context_extensions.dart';
import 'package:loqma_food_delivery_app/core/theme/app_colors.dart';
import 'package:loqma_food_delivery_app/core/theme/app_shadows.dart';

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
          cacheWidth: (size * dpr).round(),
        ),
      ),
    );
  }
}

class FloatingChip extends StatelessWidget {
  const FloatingChip({super.key, required this.label, this.leading});

  final String label;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: context.loqma.card,
        borderRadius: BorderRadius.circular(999),
        boxShadow: AppShadows.card,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (leading != null) ...[leading!, const SizedBox(width: 6)],
          Text(label, style: context.text.labelMedium?.copyWith(color: context.loqma.textPrimary)),
        ],
      ),
    );
  }
}
