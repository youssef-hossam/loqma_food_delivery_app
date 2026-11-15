import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loqma_food_delivery_app/core/extensions/context_extensions.dart';
import 'package:loqma_food_delivery_app/core/theme/app_colors.dart';
import 'package:loqma_food_delivery_app/core/theme/app_spacing.dart';
import 'package:loqma_food_delivery_app/core/widgets/app_icon.dart';
import 'package:loqma_food_delivery_app/core/widgets/app_network_image.dart';
import 'package:loqma_food_delivery_app/core/widgets/quantity_stepper.dart';
import 'package:loqma_food_delivery_app/features/cart/domain/entities/cart_item_entity.dart';

// One line in the cart: image, name, options, price and quantity
class CartItemTile extends StatelessWidget {
  const CartItemTile({
    super.key,
    required this.item,
    required this.onQuantityChanged,
    required this.onRemove,
    this.enabled = true,
  });

  final CartItemEntity item;
  final ValueChanged<int> onQuantityChanged;
  final VoidCallback onRemove;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    final colors = context.loqma;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppSpacing.s20.w,
        vertical: AppSpacing.s12.h,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: AppRadius.mdAll,
            child: AppNetworkImage(url: item.imageUrl, width: 72.r, height: 72.r),
          ),
          SizedBox(width: AppSpacing.s12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        item.name,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: context.text.titleMedium,
                      ),
                    ),
                    GestureDetector(
                      onTap: enabled ? onRemove : null,
                      child: Padding(
                        padding: EdgeInsetsDirectional.only(
                          start: AppSpacing.s8.w,
                        ),
                        child: AppIcon('x', size: 18.r, color: colors.textTertiary),
                      ),
                    ),
                  ],
                ),
                if (item.optionNames.isNotEmpty) ...[
                  SizedBox(height: 2.h),
                  Text(item.optionNames.join(' · '), style: context.text.bodySmall),
                ],
                if (item.notes != null) ...[
                  SizedBox(height: 2.h),
                  Text(
                    '"${item.notes}"',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: context.text.labelSmall,
                  ),
                ],
                SizedBox(height: AppSpacing.s8.h),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        context.s.price(item.total),
                        style: context.text.titleMedium?.copyWith(
                          color: colors.primary,
                        ),
                      ),
                    ),
                    QuantityStepper(
                      quantity: item.quantity,
                      enabled: enabled,
                      onChanged: onQuantityChanged,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
