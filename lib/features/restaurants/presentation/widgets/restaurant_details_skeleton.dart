import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loqma_food_delivery_app/core/theme/app_spacing.dart';
import 'package:loqma_food_delivery_app/core/widgets/loqma_shimmer.dart';

// Loading shape of the restaurant page
class RestaurantDetailsSkeleton extends StatelessWidget {
  const RestaurantDetailsSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    final side = AppSpacing.s20.w;

    return LoqmaShimmer(
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Cover
            SkeletonBox(width: double.infinity, height: 220.w, radius: 0),
            Padding(
              padding: EdgeInsets.all(side),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SkeletonBox(
                        width: 56.r,
                        height: 56.r,
                        radius: AppRadius.md,
                      ),
                      SizedBox(width: AppSpacing.s12.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SkeletonBox(width: 160.w, height: 18.r),
                          SizedBox(height: AppSpacing.s8.h),
                          SkeletonBox(width: 100.w, height: 12.r),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: AppSpacing.s16.h),
                  Row(
                    spacing: AppSpacing.s8.w,
                    children: [
                      SkeletonBox(width: 110.w, height: 34.r, radius: AppRadius.full),
                      SkeletonBox(width: 90.w, height: 34.r, radius: AppRadius.full),
                      SkeletonBox(width: 90.w, height: 34.r, radius: AppRadius.full),
                    ],
                  ),
                  SizedBox(height: AppSpacing.s24.h),
                  // Dish rows
                  for (var i = 0; i < 4; i++) ...[
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SkeletonBox(width: 140.w, height: 14.r),
                              SizedBox(height: AppSpacing.s8.h),
                              SkeletonBox(width: double.infinity, height: 10.r),
                              SizedBox(height: AppSpacing.s4.h),
                              SkeletonBox(width: 120.w, height: 10.r),
                              SizedBox(height: AppSpacing.s8.h),
                              SkeletonBox(width: 60.w, height: 14.r),
                            ],
                          ),
                        ),
                        SizedBox(width: AppSpacing.s12.w),
                        SkeletonBox(width: 96.r, height: 96.r, radius: AppRadius.md),
                      ],
                    ),
                    SizedBox(height: AppSpacing.s24.h),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
