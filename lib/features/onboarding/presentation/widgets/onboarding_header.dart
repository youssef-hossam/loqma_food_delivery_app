import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loqma_food_delivery_app/core/theme/app_colors.dart';
import 'package:loqma_food_delivery_app/core/widgets/language_toggle.dart';
import 'package:loqma_food_delivery_app/core/widgets/loqma_logo.dart';
import 'package:loqma_food_delivery_app/generated/l10n.dart';

/// "loqma. لُقْمَة" · language toggle · Skip  (flips automatically in RTL)
class OnboardingHeader extends StatelessWidget {
  const OnboardingHeader({super.key, required this.onSkip});

  final VoidCallback onSkip;

  @override
  Widget build(BuildContext context) {
    final c = context.loqma;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Row(
        children: [
          LoqmaLogo.en(height: 22.r, color: c.primaryPressed),
          SizedBox(width: 8.w),
          LoqmaLogo.ar(height: 20.r, color: c.primaryPressed),
          const Spacer(),
          const LanguageToggle(),
          SizedBox(width: 8.w),
          Material(
            color: c.card,
            shape: const StadiumBorder(),
            child: InkWell(
              customBorder: const StadiumBorder(),
              onTap: onSkip,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 8.h),
                child: Text(
                  S.of(context).skip,
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(color: c.textSecondary),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
