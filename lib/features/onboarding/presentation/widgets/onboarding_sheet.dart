import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loqma_food_delivery_app/core/extensions/context_extensions.dart';
import 'package:loqma_food_delivery_app/core/theme/app_colors.dart';
import 'package:loqma_food_delivery_app/core/theme/app_shadows.dart';
import 'package:loqma_food_delivery_app/core/widgets/highlighted_text.dart';
import 'package:loqma_food_delivery_app/core/widgets/loqma_button.dart';
import 'package:loqma_food_delivery_app/features/onboarding/presentation/widgets/pager_dots.dart';

class OnboardingSheet extends StatelessWidget {
  const OnboardingSheet({
    super.key,
    required this.index,
    required this.count,
    required this.title,
    required this.body,
    required this.cta,
    required this.onPressed,
  });

  final int index;
  final int count;
  final String title;
  final String body;
  final String cta;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(24.w, 28.h, 24.w, 20.h + MediaQuery.paddingOf(context).bottom),
      decoration: BoxDecoration(
        color: context.loqma.sheet,
        borderRadius: BorderRadius.vertical(top: Radius.circular(32.r)),
        boxShadow: AppShadows.float,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          PagerDots(count: count, index: index),
          SizedBox(height: 22.h),
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 350),
            switchInCurve: Curves.easeOutCubic,
            switchOutCurve: Curves.easeInCubic,
            layoutBuilder: (current, previous) => Stack(
              alignment: Alignment.topCenter,
              children: [...previous, if (current != null) current],
            ),
            transitionBuilder: (child, animation) => FadeTransition(
              opacity: animation,
              child: SlideTransition(
                position: Tween(begin: const Offset(0, 0.12), end: Offset.zero).animate(animation),
                child: child,
              ),
            ),
            child: Column(
              key: ValueKey(index),
              mainAxisSize: MainAxisSize.min,
              children: [
                HighlightedText(
                  title,
                  style: context.text.displayLarge?.copyWith(fontSize: 32.sp),
                  highlightColor: context.loqma.primary,
                ),
                SizedBox(height: 12.h),
                ConstrainedBox(
                  constraints: BoxConstraints(minHeight: 44.h, maxWidth: 300.w),
                  child: Text(body, textAlign: TextAlign.center, style: context.text.bodySmall?.copyWith(fontSize: 14.sp)),
                ),
              ],
            ),
          ),
          SizedBox(height: 24.h),
          LoqmaButton(label: cta, onPressed: onPressed),
        ],
      ),
    );
  }
}
