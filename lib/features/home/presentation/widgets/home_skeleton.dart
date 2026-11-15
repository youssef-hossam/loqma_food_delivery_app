import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loqma_food_delivery_app/core/theme/app_spacing.dart';
import 'package:loqma_food_delivery_app/core/widgets/loqma_shimmer.dart';

// Loading shape of the home page: same layout as the real content
class HomeSkeleton extends StatelessWidget {
  const HomeSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    final side = AppSpacing.s20.w;

    return LoqmaShimmer(
      child: SingleChildScrollView(
        // The skeleton is just a picture, the user can't scroll it
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.only(top: AppSpacing.s12.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Padding(
              padding: EdgeInsets.symmetric(horizontal: side),
              child: Row(
                children: [
                  SkeletonBox(width: 40.r, height: 40.r, isCircle: true),
                  SizedBox(width: AppSpacing.s12.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SkeletonBox(width: 70.w, height: 10.r),
                      SizedBox(height: AppSpacing.s8.h),
                      SkeletonBox(width: 130.w, height: 14.r),
                    ],
                  ),
                  const Spacer(),
                  SkeletonBox(width: 44.r, height: 44.r, isCircle: true),
                ],
              ),
            ),
            SizedBox(height: AppSpacing.s20.h),

            // Search bar
            Padding(
              padding: EdgeInsets.symmetric(horizontal: side),
              child: SkeletonBox(
                width: double.infinity,
                height: 52.r,
                radius: AppRadius.lg,
              ),
            ),
            SizedBox(height: AppSpacing.s20.h),

            // Banner
            Padding(
              padding: EdgeInsets.symmetric(horizontal: side),
              child: SkeletonBox(
                width: double.infinity,
                height: 160.w,
                radius: AppRadius.xl,
              ),
            ),

            // Categories
            _title(side),
            _horizontal(
              side,
              List.generate(
                5,
                (_) => Column(
                  children: [
                    SkeletonBox(width: 68.r, height: 68.r, isCircle: true),
                    SizedBox(height: AppSpacing.s8.h),
                    SkeletonBox(width: 50.w, height: 10.r),
                  ],
                ),
              ),
            ),

            // Restaurants
            _title(side),
            _horizontal(side, List.generate(2, (_) => _restaurantCard())),
          ],
        ),
      ),
    );
  }

  Widget _title(double side) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        side,
        AppSpacing.s24.h,
        side,
        AppSpacing.s12.h,
      ),
      child: SkeletonBox(width: 140.w, height: 18.r),
    );
  }

  // Horizontal row that goes past the screen edge like the real lists
  Widget _horizontal(double side, List<Widget> children) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: side),
      child: Row(spacing: AppSpacing.s16.w, children: children),
    );
  }

  Widget _restaurantCard() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SkeletonBox(width: 260.w, height: 130.w, radius: AppRadius.lg),
        SizedBox(height: AppSpacing.s12.h),
        SkeletonBox(width: 160.w, height: 14.r),
        SizedBox(height: AppSpacing.s8.h),
        SkeletonBox(width: 110.w, height: 10.r),
        SizedBox(height: AppSpacing.s8.h),
        SkeletonBox(width: 190.w, height: 10.r),
      ],
    );
  }
}
