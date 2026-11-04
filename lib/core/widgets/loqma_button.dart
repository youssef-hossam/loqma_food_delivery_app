import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loqma_food_delivery_app/core/theme/app_colors.dart';
import 'package:loqma_food_delivery_app/core/theme/app_shadows.dart';

/// Primary pill button from Figma ("Button / Variant=Primary"): 56 high, orange glow.
class LoqmaButton extends StatelessWidget {
  const LoqmaButton({super.key, required this.label, required this.onPressed});

  final String label;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final c = context.loqma;
    return DecoratedBox(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(999)),
        boxShadow: AppShadows.primaryGlow,
      ),
      child: SizedBox(
        width: double.infinity,
        height: 56.h,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: c.primary,
            foregroundColor: c.textOnPrimary,
            elevation: 0,
            shape: const StadiumBorder(),
          ),
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 250),
            child: Text(label, key: ValueKey(label)),
          ),
        ),
      ),
    );
  }
}
