import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loqma_food_delivery_app/core/extensions/context_extensions.dart';
import 'package:loqma_food_delivery_app/core/theme/app_colors.dart';
import 'package:loqma_food_delivery_app/core/theme/app_shadows.dart';
import 'package:loqma_food_delivery_app/core/theme/app_spacing.dart';
import 'package:loqma_food_delivery_app/core/widgets/app_icon.dart';

// Top bar: delivery address on the start side, notifications on the end side
class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        AppSpacing.s20.w,
        AppSpacing.s12.h,
        AppSpacing.s20.w,
        0,
      ),
      child: Row(
        children: [
          Container(
            width: 40.r,
            height: 40.r,
            decoration: BoxDecoration(
              color: context.loqma.primarySoft,
              shape: BoxShape.circle,
            ),
            alignment: Alignment.center,
            child: AppIcon('pin', size: 20.r, color: context.loqma.primary),
          ),
          SizedBox(width: AppSpacing.s12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(context.s.deliverTo, style: context.text.labelSmall),
                SizedBox(height: 2.h),
                // TODO: show the saved address when we build the addresses feature
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        context.s.appName,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: context.text.titleMedium,
                      ),
                    ),
                    SizedBox(width: AppSpacing.s4.w),
                    AppIcon(
                      'down',
                      size: 16.r,
                      color: context.loqma.textPrimary,
                    ),
                  ],
                ),
              ],
            ),
          ),
          // TODO: open the notifications page
          Container(
            width: 44.r,
            height: 44.r,
            decoration: BoxDecoration(
              color: context.loqma.card,
              shape: BoxShape.circle,
              boxShadow: AppShadows.card,
            ),
            alignment: Alignment.center,
            child: AppIcon('bell', size: 22.r, color: context.loqma.textPrimary),
          ),
        ],
      ),
    );
  }
}
