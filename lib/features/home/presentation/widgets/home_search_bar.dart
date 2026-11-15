import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loqma_food_delivery_app/core/extensions/context_extensions.dart';
import 'package:loqma_food_delivery_app/core/theme/app_colors.dart';
import 'package:loqma_food_delivery_app/core/theme/app_shadows.dart';
import 'package:loqma_food_delivery_app/core/theme/app_spacing.dart';
import 'package:loqma_food_delivery_app/core/widgets/app_icon.dart';

// Not a real text field: tapping it will open the search tab
class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key, this.onTap});

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        AppSpacing.s20.w,
        AppSpacing.s20.h,
        AppSpacing.s20.w,
        0,
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 52.r,
          padding: EdgeInsets.symmetric(horizontal: AppSpacing.s16.w),
          decoration: BoxDecoration(
            color: context.loqma.card,
            borderRadius: AppRadius.lgAll,
            boxShadow: AppShadows.card,
          ),
          child: Row(
            children: [
              AppIcon('search', size: 20.r, color: context.loqma.textTertiary),
              SizedBox(width: AppSpacing.s12.w),
              Expanded(
                child: Text(
                  context.s.searchHint,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: context.text.bodyMedium?.copyWith(
                    color: context.loqma.textTertiary,
                  ),
                ),
              ),
              AppIcon('filter', size: 20.r, color: context.loqma.primary),
            ],
          ),
        ),
      ),
    );
  }
}
