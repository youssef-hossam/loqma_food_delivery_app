import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loqma_food_delivery_app/core/extensions/context_extensions.dart';
import 'package:loqma_food_delivery_app/core/theme/app_colors.dart';
import 'package:loqma_food_delivery_app/core/theme/app_spacing.dart';
import 'package:loqma_food_delivery_app/core/widgets/app_icon.dart';
import 'package:loqma_food_delivery_app/core/widgets/app_network_image.dart';
import 'package:loqma_food_delivery_app/features/restaurants/domain/entities/dish_entity.dart';

// One dish row in the menu: text on the start side, image on the end side
class MenuDishTile extends StatelessWidget {
  const MenuDishTile({super.key, required this.dish, this.onTap});

  final DishEntity dish;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final colors = context.loqma;

    return GestureDetector(
      onTap: dish.isAvailable ? onTap : null,
      behavior: HitTestBehavior.opaque,
      // Unavailable dishes look faded
      child: Opacity(
        opacity: dish.isAvailable ? 1 : 0.45,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppSpacing.s20.w,
            vertical: AppSpacing.s12.h,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (dish.tag != null) ...[
                      Text(
                        dish.tag!,
                        style: context.text.labelSmall?.copyWith(
                          color: colors.primary,
                        ),
                      ),
                      SizedBox(height: 2.h),
                    ],
                    Text(
                      dish.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: context.text.titleMedium,
                    ),
                    SizedBox(height: AppSpacing.s4.h),
                    Text(
                      dish.description,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: context.text.bodySmall,
                    ),
                    SizedBox(height: AppSpacing.s8.h),
                    Text(
                      context.s.price(dish.price),
                      style: context.text.titleMedium?.copyWith(
                        color: colors.primary,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: AppSpacing.s12.w),
              SizedBox(
                width: 96.r,
                height: 96.r,
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: AppRadius.mdAll,
                      child: AppNetworkImage(
                        url: dish.imageUrl,
                        width: 96.r,
                        height: 96.r,
                      ),
                    ),
                    // TODO: add to cart
                    PositionedDirectional(
                      end: 6.r,
                      bottom: 6.r,
                      child: Container(
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
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
