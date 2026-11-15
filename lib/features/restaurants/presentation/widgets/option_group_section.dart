import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loqma_food_delivery_app/core/extensions/context_extensions.dart';
import 'package:loqma_food_delivery_app/core/theme/app_colors.dart';
import 'package:loqma_food_delivery_app/core/theme/app_spacing.dart';
import 'package:loqma_food_delivery_app/core/widgets/app_icon.dart';
import 'package:loqma_food_delivery_app/features/restaurants/domain/entities/option_group_entity.dart';

// One option group (like "Size" or "Extras") with its options
class OptionGroupSection extends StatelessWidget {
  const OptionGroupSection({
    super.key,
    required this.group,
    required this.selectedIds,
    required this.onOptionTap,
  });

  final OptionGroupEntity group;
  final Set<String> selectedIds;
  final ValueChanged<String> onOptionTap;

  @override
  Widget build(BuildContext context) {
    final colors = context.loqma;

    return Padding(
      padding: EdgeInsets.fromLTRB(
        AppSpacing.s20.w,
        AppSpacing.s24.h,
        AppSpacing.s20.w,
        0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(group.name, style: context.text.titleMedium),
                    SizedBox(height: 2.h),
                    Text(
                      group.isSingleChoice
                          ? context.s.pickCount(1)
                          : context.s.upToCount(group.maxSelect),
                      style: context.text.labelSmall,
                    ),
                  ],
                ),
              ),
              // "Required" is orange, "Optional" is gray
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSpacing.s8.w,
                  vertical: AppSpacing.s4.h,
                ),
                decoration: BoxDecoration(
                  color: group.isRequired ? colors.primarySoft : colors.muted,
                  borderRadius: AppRadius.fullAll,
                ),
                child: Text(
                  group.isRequired
                      ? context.s.requiredLabel
                      : context.s.optionalLabel,
                  style: context.text.labelSmall?.copyWith(
                    color: group.isRequired
                        ? colors.primary
                        : colors.textSecondary,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: AppSpacing.s8.h),
          for (final option in group.options)
            InkWell(
              onTap: () => onOptionTap(option.id),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: AppSpacing.s12.h),
                child: Row(
                  children: [
                    _SelectIndicator(
                      isSelected: selectedIds.contains(option.id),
                      isCircle: group.isSingleChoice,
                    ),
                    SizedBox(width: AppSpacing.s12.w),
                    Expanded(
                      child: Text(
                        option.name,
                        style: context.text.bodyLarge,
                      ),
                    ),
                    if (option.price > 0)
                      Text(
                        context.s.extraPrice(option.price),
                        style: context.text.labelMedium,
                      ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}

// Circle = radio (pick one), rounded square = checkbox (pick many)
class _SelectIndicator extends StatelessWidget {
  const _SelectIndicator({required this.isSelected, required this.isCircle});

  final bool isSelected;
  final bool isCircle;

  @override
  Widget build(BuildContext context) {
    final colors = context.loqma;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      width: 22.r,
      height: 22.r,
      decoration: BoxDecoration(
        color: isSelected ? colors.primary : Colors.transparent,
        shape: isCircle ? BoxShape.circle : BoxShape.rectangle,
        borderRadius: isCircle ? null : BorderRadius.circular(6),
        border: Border.all(
          color: isSelected ? colors.primary : colors.borderStrong,
          width: 2,
        ),
      ),
      alignment: Alignment.center,
      child: isSelected
          ? AppIcon('check', size: 14.r, color: colors.textOnPrimary)
          : null,
    );
  }
}
