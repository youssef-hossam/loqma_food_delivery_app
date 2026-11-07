import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loqma_food_delivery_app/core/theme/app_colors.dart';

class PagerDots extends StatelessWidget {
  const PagerDots({super.key, required this.count, required this.index});

  final int count;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(count, (i) {
        final active = i == index;
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOutCubic,
          margin: EdgeInsets.symmetric(horizontal: 3.w),
          width: active ? 28.w : 8.w,
          height: 8.w,
          decoration: BoxDecoration(
            color: active ? context.loqma.primary : context.loqma.borderStrong,
            borderRadius: BorderRadius.circular(8),
          ),
        );
      }),
    );
  }
}
