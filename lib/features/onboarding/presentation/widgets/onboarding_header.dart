import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loqma_food_delivery_app/core/extensions/context_extensions.dart';
import 'package:loqma_food_delivery_app/core/theme/app_colors.dart';
import 'package:loqma_food_delivery_app/core/widgets/language_toggle.dart';
import 'package:loqma_food_delivery_app/core/widgets/loqma_logo.dart';

class OnboardingHeader extends StatelessWidget {
  const OnboardingHeader({super.key, required this.onSkip});

  final VoidCallback onSkip;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Row(
        children: [
          LoqmaLogo.en(height: 22.r, color: context.loqma.primaryPressed),
          SizedBox(width: 8.w),
          LoqmaLogo.ar(height: 20.r, color: context.loqma.primaryPressed),
          const Spacer(),
          const LanguageToggle(),
          SizedBox(width: 4.w),
          TextButton(
            onPressed: onSkip,
            style: TextButton.styleFrom(
              foregroundColor: context.loqma.textSecondary,
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              minimumSize: Size(0, 34.h),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  context.s.skip,
                  style: context.text.labelLarge?.copyWith(
                        color: context.loqma.textSecondary,
                        fontSize: 14.sp,
                      ),
                ),
                SizedBox(width: 4.w),
                Icon(Icons.arrow_forward_ios_rounded, size: 12.r, color: context.loqma.textSecondary),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
