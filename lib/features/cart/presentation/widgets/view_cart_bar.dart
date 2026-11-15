import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loqma_food_delivery_app/core/extensions/context_extensions.dart';
import 'package:loqma_food_delivery_app/core/router/routes.dart';
import 'package:loqma_food_delivery_app/core/theme/app_colors.dart';
import 'package:loqma_food_delivery_app/core/theme/app_shadows.dart';
import 'package:loqma_food_delivery_app/core/theme/app_spacing.dart';
import 'package:loqma_food_delivery_app/features/cart/presentation/cubit/cart_cubit.dart';
import 'package:loqma_food_delivery_app/features/cart/presentation/cubit/cart_state.dart';

// Orange bar at the bottom: "2 items · View cart · EGP 370"
// Hidden when the cart is empty
class ViewCartBar extends StatelessWidget {
  const ViewCartBar({super.key, this.useSafeArea = true});

  // False when something else under it already handles the bottom inset
  final bool useSafeArea;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      builder: (context, state) {
        final cart = state.cart;
        if (cart == null || cart.isEmpty) return const SizedBox.shrink();

        final colors = context.loqma;
        final white = colors.textOnPrimary;

        return SafeArea(
          top: false,
          bottom: useSafeArea,
          child: Padding(
            padding: EdgeInsets.fromLTRB(
              AppSpacing.s20.w,
              AppSpacing.s8.h,
              AppSpacing.s20.w,
              AppSpacing.s12.h,
            ),
            child: GestureDetector(
              onTap: () => Navigator.pushNamed(context, Routes.cart),
              child: Container(
                height: 56.r,
                padding: EdgeInsets.symmetric(horizontal: AppSpacing.s16.w),
                decoration: BoxDecoration(
                  color: colors.primary,
                  borderRadius: AppRadius.lgAll,
                  boxShadow: AppShadows.primaryGlow,
                ),
                child: Row(
                  children: [
                    // Items count in a small box
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: AppSpacing.s8.w,
                        vertical: AppSpacing.s4.h,
                      ),
                      decoration: BoxDecoration(
                        color: white.withValues(alpha: 0.2),
                        borderRadius: AppRadius.smAll,
                      ),
                      child: Text(
                        '${cart.itemsCount}',
                        style: context.text.labelMedium?.copyWith(color: white),
                      ),
                    ),
                    SizedBox(width: AppSpacing.s12.w),
                    Expanded(
                      child: Text(
                        context.s.viewCart,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: context.text.titleMedium?.copyWith(color: white),
                      ),
                    ),
                    Text(
                      context.s.price(cart.total),
                      style: context.text.titleMedium?.copyWith(color: white),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
