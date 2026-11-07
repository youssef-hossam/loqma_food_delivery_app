import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loqma_food_delivery_app/core/extensions/context_extensions.dart';
import 'package:loqma_food_delivery_app/core/theme/app_colors.dart';

class PasswordRules extends StatelessWidget {
  const PasswordRules({super.key, required this.password});

  final String password;

  @override
  Widget build(BuildContext context) {
    final hasLength = password.length >= 8;
    final hasLetter = RegExp(r'[a-zA-Z]').hasMatch(password);
    final hasNumber = RegExp(r'[0-9]').hasMatch(password);

    int strength = 0;
    if (hasLength) strength++;
    if (hasLetter) strength++;
    if (hasNumber) strength++;
    if (strength == 3 && password.length >= 12) strength++;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: List.generate(4, (i) {
            return Expanded(
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 250),
                height: 4.h,
                margin: EdgeInsetsDirectional.only(end: i == 3 ? 0 : 6.w),
                decoration: BoxDecoration(
                  color: i < strength ? context.loqma.success : context.loqma.borderDefault,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            );
          }),
        ),
        SizedBox(height: 8.h),
        Wrap(
          spacing: 12.w,
          runSpacing: 4.h,
          children: [
            _Rule(text: context.s.passwordRuleLength, done: hasLength),
            _Rule(text: context.s.passwordRuleLetter, done: hasLetter),
            _Rule(text: context.s.passwordRuleNumber, done: hasNumber),
          ],
        ),
      ],
    );
  }
}

class _Rule extends StatelessWidget {
  const _Rule({required this.text, required this.done});

  final String text;
  final bool done;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          done ? Icons.check_circle_rounded : Icons.circle_outlined,
          size: 14.r,
          color: done ? context.loqma.success : context.loqma.textTertiary,
        ),
        SizedBox(width: 4.w),
        Text(text, style: context.text.labelSmall?.copyWith(color: context.loqma.textSecondary)),
      ],
    );
  }
}
