import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loqma_food_delivery_app/core/extensions/context_extensions.dart';
import 'package:loqma_food_delivery_app/core/theme/app_colors.dart';
import 'package:loqma_food_delivery_app/core/theme/app_spacing.dart';

// Delegate for the menu tabs, so they stick under the app bar while scrolling
class MenuTabsHeader extends SliverPersistentHeaderDelegate {
  MenuTabsHeader({
    required this.sections,
    required this.selectedIndex,
    required this.onTap,
  });

  final List<String> sections;
  final int selectedIndex;
  final ValueChanged<int> onTap;

  // Same value for min and max = the header never shrinks
  static double get height => 56.h;

  @override
  double get minExtent => height;

  @override
  double get maxExtent => height;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final colors = context.loqma;

    return Container(
      color: colors.background,
      alignment: Alignment.center,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: AppSpacing.s20.w),
        itemCount: sections.length,
        separatorBuilder: (_, _) => SizedBox(width: AppSpacing.s8.w),
        itemBuilder: (context, index) {
          final isSelected = index == selectedIndex;
          return Center(
            child: GestureDetector(
              onTap: () => onTap(index),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                padding: EdgeInsets.symmetric(
                  horizontal: AppSpacing.s16.w,
                  vertical: AppSpacing.s8.h,
                ),
                decoration: BoxDecoration(
                  color: isSelected ? colors.primary : colors.card,
                  borderRadius: AppRadius.fullAll,
                  border: Border.all(
                    color: isSelected ? colors.primary : colors.borderDefault,
                  ),
                ),
                child: Text(
                  sections[index],
                  style: context.text.labelMedium?.copyWith(
                    color: isSelected
                        ? colors.textOnPrimary
                        : colors.textPrimary,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  // Rebuild only when the selected tab or the sections change
  @override
  bool shouldRebuild(MenuTabsHeader oldDelegate) {
    return oldDelegate.selectedIndex != selectedIndex ||
        oldDelegate.sections != sections;
  }
}
