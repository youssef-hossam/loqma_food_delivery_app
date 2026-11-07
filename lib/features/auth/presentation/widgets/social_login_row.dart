import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loqma_food_delivery_app/core/extensions/context_extensions.dart';
import 'package:loqma_food_delivery_app/core/theme/app_colors.dart';
import 'package:loqma_food_delivery_app/core/widgets/app_icon.dart';

class SocialLoginRow extends StatelessWidget {
  const SocialLoginRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: Divider(color: context.loqma.borderStrong)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Text(
                context.s.orContinueWith,
                style: context.text.labelSmall?.copyWith(color: context.loqma.textTertiary),
              ),
            ),
            Expanded(child: Divider(color: context.loqma.borderStrong)),
          ],
        ),
        SizedBox(height: 24.h),
        Row(
          children: [
            Expanded(
              child: _SocialButton(
                label: context.s.continueWithGoogle,
                icon: Text(
                  'G',
                  style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w800, color: const Color(0xFF4285F4)),
                ),
              ),
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: _SocialButton(
                label: context.s.continueWithApple,
                icon: AppIcon('apple', size: 20.r, color: context.loqma.textPrimary),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _SocialButton extends StatelessWidget {
  const _SocialButton({required this.label, required this.icon});

  final String label;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56.h,
      child: OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          backgroundColor: context.loqma.card,
          side: BorderSide(color: context.loqma.borderDefault),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            SizedBox(width: 10.w),
            Text(label, style: context.text.labelMedium?.copyWith(color: context.loqma.textPrimary)),
          ],
        ),
      ),
    );
  }
}
