import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loqma_food_delivery_app/core/extensions/context_extensions.dart';
import 'package:loqma_food_delivery_app/core/theme/app_colors.dart';
import 'package:loqma_food_delivery_app/core/theme/app_spacing.dart';
import 'package:loqma_food_delivery_app/core/widgets/loqma_button.dart';

// Full page error with a retry button
class AppErrorView extends StatelessWidget {
  const AppErrorView({super.key, required this.onRetry});

  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(AppSpacing.s24.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              context.s.errorGenericTitle,
              textAlign: TextAlign.center,
              style: context.text.titleMedium,
            ),
            SizedBox(height: AppSpacing.s8.h),
            Text(
              context.s.errorGeneric,
              textAlign: TextAlign.center,
              style: context.text.bodyMedium?.copyWith(
                color: context.loqma.textSecondary,
              ),
            ),
            SizedBox(height: AppSpacing.s24.h),
            LoqmaButton(label: context.s.retry, onPressed: onRetry),
          ],
        ),
      ),
    );
  }
}
