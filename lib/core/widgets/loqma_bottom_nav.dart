import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loqma_food_delivery_app/core/extensions/context_extensions.dart';
import 'package:loqma_food_delivery_app/core/theme/app_colors.dart';
import 'package:loqma_food_delivery_app/core/widgets/app_icon.dart';

class LoqmaNavItem {
  const LoqmaNavItem({required this.icon, required this.label});

  final String icon;
  final String label;
}

// Floating dark bottom bar. The active tab grows into an orange pill with its label.
class LoqmaBottomNav extends StatelessWidget {
  const LoqmaBottomNav({
    super.key,
    required this.items,
    required this.currentIndex,
    required this.onTap,
  });

  final List<LoqmaNavItem> items;
  final int currentIndex;
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 68.h,
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      decoration: BoxDecoration(
        color: context.loqma.night,
        borderRadius: BorderRadius.circular(34.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.18),
            blurRadius: 24,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(items.length, (index) {
          return _NavTab(
            item: items[index],
            isActive: index == currentIndex,
            onTap: () => onTap(index),
          );
        }),
      ),
    );
  }
}

class _NavTab extends StatelessWidget {
  const _NavTab({
    required this.item,
    required this.isActive,
    required this.onTap,
  });

  final LoqmaNavItem item;
  final bool isActive;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOutCubic,
        height: 48.h,
        padding: EdgeInsets.symmetric(horizontal: isActive ? 16.w : 13.w),
        decoration: BoxDecoration(
          color: isActive ? context.loqma.primary : Colors.transparent,
          borderRadius: BorderRadius.circular(24.r),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppIcon(
              item.icon,
              size: 22.r,
              color: isActive
                  ? context.loqma.textOnPrimary
                  : context.loqma.textTertiary,
            ),
            // The label slides in only for the active tab
            AnimatedSize(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeOutCubic,
              child: isActive
                  ? Padding(
                      padding: EdgeInsetsDirectional.only(start: 8.w),
                      child: Text(
                        item.label,
                        style: context.text.labelMedium?.copyWith(
                          color: context.loqma.textOnPrimary,
                        ),
                      ),
                    )
                  : const SizedBox.shrink(),
            ),
          ],
        ),
      ),
    );
  }
}
