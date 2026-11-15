import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loqma_food_delivery_app/core/extensions/context_extensions.dart';
import 'package:loqma_food_delivery_app/core/theme/app_colors.dart';
import 'package:loqma_food_delivery_app/core/theme/app_shadows.dart';
import 'package:loqma_food_delivery_app/core/theme/app_spacing.dart';
import 'package:loqma_food_delivery_app/core/widgets/app_icon.dart';
import 'package:loqma_food_delivery_app/core/widgets/app_network_image.dart';
import 'package:loqma_food_delivery_app/features/restaurants/domain/entities/restaurant_entity.dart';

// Restaurant card used in the home lists (and later in "See all")
class RestaurantCard extends StatelessWidget {
  const RestaurantCard({
    super.key,
    required this.restaurant,
    this.width,
    this.onTap,
  });

  final RestaurantEntity restaurant;
  final double? width;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final colors = context.loqma;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        decoration: BoxDecoration(
          color: colors.card,
          borderRadius: AppRadius.lgAll,
          boxShadow: AppShadows.card,
        ),
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildCover(context),
            Padding(
              padding: EdgeInsets.all(AppSpacing.s12.r),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          restaurant.name,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: context.text.titleMedium,
                        ),
                      ),
                      Icon(Icons.star_rounded, size: 16.r, color: colors.rating),
                      SizedBox(width: 2.w),
                      Text(
                        restaurant.rating.toStringAsFixed(1),
                        style: context.text.labelMedium?.copyWith(
                          color: colors.textPrimary,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 2.h),
                  Text(
                    restaurant.cuisine,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: context.text.bodySmall,
                  ),
                  SizedBox(height: AppSpacing.s8.h),
                  Row(
                    children: [
                      AppIcon('clock', size: 14.r, color: colors.textTertiary),
                      SizedBox(width: AppSpacing.s4.w),
                      Text(
                        context.s.minutesRange(
                          restaurant.minDeliveryTime,
                          restaurant.maxDeliveryTime,
                        ),
                        style: context.text.labelSmall,
                      ),
                      SizedBox(width: AppSpacing.s12.w),
                      AppIcon('bike', size: 14.r, color: colors.textTertiary),
                      SizedBox(width: AppSpacing.s4.w),
                      Flexible(
                        child: Text(
                          restaurant.hasFreeDelivery
                              ? context.s.freeDelivery
                              : context.s.deliveryFeeShort(restaurant.deliveryFee),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: context.text.labelSmall?.copyWith(
                            color: restaurant.hasFreeDelivery
                                ? colors.success
                                : null,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Cover image with the logo, the favorite icon and a "Closed" overlay
  Widget _buildCover(BuildContext context) {
    final colors = context.loqma;

    return SizedBox(
      height: 130.w,
      width: double.infinity,
      child: Stack(
        fit: StackFit.expand,
        children: [
          AppNetworkImage(url: restaurant.coverUrl),
          if (!restaurant.isOpen)
            Container(
              color: Colors.black.withValues(alpha: 0.5),
              alignment: Alignment.center,
              child: Text(
                context.s.closed,
                style: context.text.titleMedium?.copyWith(
                  color: colors.textOnPrimary,
                ),
              ),
            ),
          PositionedDirectional(
            start: AppSpacing.s12.w,
            bottom: AppSpacing.s8.h,
            child: Container(
              width: 40.r,
              height: 40.r,
              decoration: BoxDecoration(
                color: colors.card,
                borderRadius: AppRadius.smAll,
                border: Border.all(color: colors.card, width: 2),
              ),
              clipBehavior: Clip.antiAlias,
              child: AppNetworkImage(url: restaurant.logoUrl),
            ),
          ),
          PositionedDirectional(
            end: AppSpacing.s8.w,
            top: AppSpacing.s8.h,
            // TODO: toggle favorite
            child: Container(
              width: 32.r,
              height: 32.r,
              decoration: BoxDecoration(
                color: colors.card,
                shape: BoxShape.circle,
              ),
              alignment: Alignment.center,
              child: AppIcon(
                restaurant.isFavorite ? 'heart-fill' : 'heart',
                size: 16.r,
                color: restaurant.isFavorite
                    ? colors.danger
                    : colors.textSecondary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
