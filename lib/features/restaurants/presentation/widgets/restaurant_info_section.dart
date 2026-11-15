import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loqma_food_delivery_app/core/extensions/context_extensions.dart';
import 'package:loqma_food_delivery_app/core/theme/app_colors.dart';
import 'package:loqma_food_delivery_app/core/theme/app_shadows.dart';
import 'package:loqma_food_delivery_app/core/theme/app_spacing.dart';
import 'package:loqma_food_delivery_app/core/widgets/app_icon.dart';
import 'package:loqma_food_delivery_app/core/widgets/app_network_image.dart';
import 'package:loqma_food_delivery_app/features/restaurants/domain/entities/restaurant_entity.dart';

// Logo, name, rating and delivery info under the cover
class RestaurantInfoSection extends StatelessWidget {
  const RestaurantInfoSection({super.key, required this.restaurant});

  final RestaurantEntity restaurant;

  @override
  Widget build(BuildContext context) {
    final colors = context.loqma;

    return Padding(
      padding: EdgeInsets.fromLTRB(
        AppSpacing.s20.w,
        AppSpacing.s16.h,
        AppSpacing.s20.w,
        AppSpacing.s8.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 56.r,
                height: 56.r,
                decoration: BoxDecoration(
                  color: colors.card,
                  borderRadius: AppRadius.mdAll,
                  boxShadow: AppShadows.card,
                ),
                clipBehavior: Clip.antiAlias,
                child: AppNetworkImage(url: restaurant.logoUrl),
              ),
              SizedBox(width: AppSpacing.s12.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      restaurant.name,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: context.text.titleLarge,
                    ),
                    SizedBox(height: 2.h),
                    Text(
                      restaurant.cuisine,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: context.text.bodySmall,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: AppSpacing.s16.h),
          // Wrap moves the chips to a new line on small screens
          Wrap(
            spacing: AppSpacing.s8.w,
            runSpacing: AppSpacing.s8.h,
            children: [
              _InfoChip(
                leading: Icon(
                  Icons.star_rounded,
                  size: 16.r,
                  color: colors.rating,
                ),
                text:
                    '${restaurant.rating.toStringAsFixed(1)} · ${context.s.reviewsCount(restaurant.ratingCount)}',
              ),
              _InfoChip(
                leading: AppIcon(
                  'clock',
                  size: 14.r,
                  color: colors.textSecondary,
                ),
                text: context.s.minutesRange(
                  restaurant.minDeliveryTime,
                  restaurant.maxDeliveryTime,
                ),
              ),
              _InfoChip(
                leading: AppIcon(
                  'bike',
                  size: 14.r,
                  color: colors.textSecondary,
                ),
                text: restaurant.hasFreeDelivery
                    ? context.s.freeDelivery
                    : context.s.deliveryFeeShort(restaurant.deliveryFee),
              ),
            ],
          ),
          if (restaurant.description != null &&
              restaurant.description!.isNotEmpty) ...[
            SizedBox(height: AppSpacing.s12.h),
            Text(restaurant.description!, style: context.text.bodyMedium),
          ],
        ],
      ),
    );
  }
}

class _InfoChip extends StatelessWidget {
  const _InfoChip({required this.leading, required this.text});

  final Widget leading;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppSpacing.s12.w,
        vertical: AppSpacing.s8.h,
      ),
      decoration: BoxDecoration(
        color: context.loqma.card,
        borderRadius: AppRadius.fullAll,
        border: Border.all(color: context.loqma.borderDefault),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          leading,
          SizedBox(width: AppSpacing.s4.w),
          Text(
            text,
            style: context.text.labelMedium?.copyWith(
              color: context.loqma.textPrimary,
            ),
          ),
        ],
      ),
    );
  }
}
