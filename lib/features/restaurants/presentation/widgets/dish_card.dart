import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loqma_food_delivery_app/core/extensions/context_extensions.dart';
import 'package:loqma_food_delivery_app/core/theme/app_colors.dart';
import 'package:loqma_food_delivery_app/core/theme/app_shadows.dart';
import 'package:loqma_food_delivery_app/core/theme/app_spacing.dart';
import 'package:loqma_food_delivery_app/core/widgets/app_icon.dart';
import 'package:loqma_food_delivery_app/core/widgets/app_network_image.dart';
import 'package:loqma_food_delivery_app/features/restaurants/domain/entities/dish_entity.dart';

// Small dish card: image, name, restaurant and price with an add button
class DishCard extends StatelessWidget {
  const DishCard({super.key, required this.dish, this.onTap});

  final DishEntity dish;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final colors = context.loqma;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 160.w,
        decoration: BoxDecoration(
          color: colors.card,
          borderRadius: AppRadius.lgAll,
          boxShadow: AppShadows.card,
        ),
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 110.w,
              width: double.infinity,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  AppNetworkImage(url: dish.imageUrl),
                  if (dish.tag != null)
                    PositionedDirectional(
                      start: AppSpacing.s8.w,
                      top: AppSpacing.s8.h,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: AppSpacing.s8.w,
                          vertical: 2.h,
                        ),
                        decoration: BoxDecoration(
                          color: colors.primary,
                          borderRadius: AppRadius.fullAll,
                        ),
                        child: Text(
                          dish.tag!,
                          style: context.text.labelSmall?.copyWith(
                            color: colors.textOnPrimary,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(AppSpacing.s12.r),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    dish.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: context.text.titleMedium,
                  ),
                  if (dish.restaurantName != null)
                    Text(
                      dish.restaurantName!,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: context.text.bodySmall,
                    ),
                  SizedBox(height: AppSpacing.s8.h),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          context.s.price(dish.price),
                          style: context.text.titleMedium?.copyWith(
                            color: colors.primary,
                          ),
                        ),
                      ),
                      // TODO: add to cart
                      Container(
                        width: 28.r,
                        height: 28.r,
                        decoration: BoxDecoration(
                          color: colors.primary,
                          shape: BoxShape.circle,
                        ),
                        alignment: Alignment.center,
                        child: AppIcon(
                          'plus',
                          size: 16.r,
                          color: colors.textOnPrimary,
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
}
