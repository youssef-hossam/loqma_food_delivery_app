import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loqma_food_delivery_app/core/extensions/context_extensions.dart';
import 'package:loqma_food_delivery_app/core/theme/app_colors.dart';
import 'package:loqma_food_delivery_app/core/widgets/app_icon.dart';

// سطر الخطأ اللي بيظهر تحت أي field (أيقونة + نص أحمر)
class FieldErrorText extends StatelessWidget {
  const FieldErrorText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 6.h),
      child: Row(
        children: [
          AppIcon('alert', size: 14.r, color: context.loqma.danger),
          SizedBox(width: 6.w),
          Expanded(
            child: Text(
              text,
              style: context.text.labelSmall?.copyWith(
                color: context.loqma.danger,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
