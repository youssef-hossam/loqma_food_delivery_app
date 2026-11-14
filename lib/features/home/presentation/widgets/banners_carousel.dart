import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loqma_food_delivery_app/core/extensions/context_extensions.dart';
import 'package:loqma_food_delivery_app/core/theme/app_colors.dart';
import 'package:loqma_food_delivery_app/core/theme/app_spacing.dart';
import 'package:loqma_food_delivery_app/core/widgets/app_network_image.dart';
import 'package:loqma_food_delivery_app/features/home/domain/entities/banner_entity.dart';

// Swipeable promo banners with dots under them
class BannersCarousel extends StatefulWidget {
  const BannersCarousel({super.key, required this.banners});

  final List<BannerEntity> banners;

  @override
  State<BannersCarousel> createState() => _BannersCarouselState();
}

class _BannersCarouselState extends State<BannersCarousel> {
  // viewportFraction < 1 shows a small part of the next banner
  final _controller = PageController(viewportFraction: 0.9);
  int _currentPage = 0;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: AppSpacing.s20.h),
      child: Column(
        children: [
          SizedBox(
            height: 160.h,
            child: PageView.builder(
              controller: _controller,
              itemCount: widget.banners.length,
              onPageChanged: (index) => setState(() => _currentPage = index),
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.symmetric(horizontal: AppSpacing.s4.w),
                child: _BannerCard(banner: widget.banners[index]),
              ),
            ),
          ),
          SizedBox(height: AppSpacing.s12.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(widget.banners.length, (index) {
              final isActive = index == _currentPage;
              // The active dot is wider
              return AnimatedContainer(
                duration: const Duration(milliseconds: 250),
                margin: EdgeInsets.symmetric(horizontal: 3.w),
                width: isActive ? 20.w : 6.w,
                height: 6.h,
                decoration: BoxDecoration(
                  color: isActive
                      ? context.loqma.primary
                      : context.loqma.borderStrong,
                  borderRadius: AppRadius.fullAll,
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}

class _BannerCard extends StatelessWidget {
  const _BannerCard({required this.banner});

  final BannerEntity banner;

  @override
  Widget build(BuildContext context) {
    final white = context.loqma.textOnPrimary;

    return ClipRRect(
      borderRadius: AppRadius.xlAll,
      child: Stack(
        fit: StackFit.expand,
        children: [
          AppNetworkImage(url: banner.imageUrl),
          // Dark gradient so the white text is readable on any image
          DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: AlignmentDirectional.centerStart,
                end: AlignmentDirectional.centerEnd,
                colors: [
                  Colors.black.withValues(alpha: 0.7),
                  Colors.black.withValues(alpha: 0.0),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(AppSpacing.s20.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  banner.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: context.text.titleLarge?.copyWith(color: white),
                ),
                SizedBox(height: AppSpacing.s4.h),
                Text(
                  banner.subtitle,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: context.text.bodyMedium?.copyWith(color: white),
                ),
                if (banner.promoCode != null) ...[
                  SizedBox(height: AppSpacing.s12.h),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: AppSpacing.s12.w,
                      vertical: AppSpacing.s4.h,
                    ),
                    decoration: BoxDecoration(
                      color: context.loqma.primary,
                      borderRadius: AppRadius.fullAll,
                    ),
                    child: Text(
                      context.s.promoCode(banner.promoCode!),
                      style: context.text.labelMedium?.copyWith(color: white),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
