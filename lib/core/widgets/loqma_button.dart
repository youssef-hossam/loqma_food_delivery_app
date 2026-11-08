import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loqma_food_delivery_app/core/theme/app_colors.dart';
import 'package:loqma_food_delivery_app/core/theme/app_shadows.dart';
import 'package:loqma_food_delivery_app/core/widgets/bouncing_dots.dart';

class LoqmaButton extends StatelessWidget {
  const LoqmaButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.isLoading = false,
  });

  final String label;
  final VoidCallback? onPressed;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18.r),
        boxShadow: AppShadows.primaryGlow,
      ),
      child: SizedBox(
        width: double.infinity,
        height: 56.h,
        child: ElevatedButton(
          onPressed: isLoading ? null : onPressed, // يتقفل وهو بيحمّل
          style: ElevatedButton.styleFrom(
            backgroundColor: context.loqma.primary,
            foregroundColor: context.loqma.textOnPrimary,
            // نفس اللون وهو loading بدل لون الـ disabled الرمادي
            disabledBackgroundColor: context.loqma.primary,
            disabledForegroundColor: context.loqma.textOnPrimary,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.r),
            ),
          ),
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 250),
            child: isLoading
                ? BouncingDots(
                    key: const ValueKey('loading'),
                    color: context.loqma.textOnPrimary,
                    size: 8.r,
                  )
                : Text(label, key: ValueKey(label)),
          ),
        ),
      ),
    );
  }
}
