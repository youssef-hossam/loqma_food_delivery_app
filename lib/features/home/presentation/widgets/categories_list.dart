import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loqma_food_delivery_app/core/extensions/context_extensions.dart';
import 'package:loqma_food_delivery_app/core/theme/app_colors.dart';
import 'package:loqma_food_delivery_app/core/theme/app_shadows.dart';
import 'package:loqma_food_delivery_app/core/theme/app_spacing.dart';
import 'package:loqma_food_delivery_app/core/widgets/app_network_image.dart';
import 'package:loqma_food_delivery_app/features/restaurants/domain/entities/category_entity.dart';

// Horizontal list of round category images
class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key, required this.categories});

  final List<CategoryEntity> categories;

  @override
  Widget build(BuildContext context) {
    // Few items, so a Row is fine and its height comes from the content
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.symmetric(horizontal: AppSpacing.s20.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: AppSpacing.s16.w,
        children: categories.map((category) {
          // TODO: open the restaurants list filtered by this category
          return SizedBox(
            width: 68.w,
            child: Column(
              children: [
                Container(
                  width: 68.r,
                  height: 68.r,
                  decoration: BoxDecoration(
                    color: context.loqma.card,
                    shape: BoxShape.circle,
                    boxShadow: AppShadows.card,
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: AppNetworkImage(url: category.imageUrl),
                ),
                SizedBox(height: AppSpacing.s8.h),
                Text(
                  category.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: context.text.labelMedium?.copyWith(
                    color: context.loqma.textPrimary,
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
