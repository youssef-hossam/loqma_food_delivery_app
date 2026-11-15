import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loqma_food_delivery_app/core/error/failure.dart';
import 'package:loqma_food_delivery_app/core/extensions/context_extensions.dart';
import 'package:loqma_food_delivery_app/core/theme/app_colors.dart';
import 'package:loqma_food_delivery_app/core/theme/app_shadows.dart';
import 'package:loqma_food_delivery_app/core/theme/app_spacing.dart';
import 'package:loqma_food_delivery_app/core/widgets/app_alert_dialog.dart';
import 'package:loqma_food_delivery_app/core/widgets/app_icon.dart';
import 'package:loqma_food_delivery_app/core/widgets/loqma_button.dart';
import 'package:loqma_food_delivery_app/features/cart/domain/entities/cart_entity.dart';
import 'package:loqma_food_delivery_app/features/cart/presentation/cubit/cart_cubit.dart';
import 'package:loqma_food_delivery_app/features/cart/presentation/cubit/cart_state.dart';
import 'package:loqma_food_delivery_app/features/cart/presentation/widgets/cart_item_tile.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  // Shows a dialog when a cart change fails
  Future<void> _handle(BuildContext context, Future<Failure?> request) async {
    final failure = await request;
    if (failure != null && context.mounted) showFailureDialog(context, failure);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.loqma.background,
      appBar: AppBar(
        title: Text(context.s.myCart),
        backgroundColor: context.loqma.background,
        surfaceTintColor: Colors.transparent,
      ),
      body: BlocBuilder<CartCubit, CartState>(
        builder: (context, state) {
          final cart = state.cart;
          if (cart == null || cart.isEmpty) return const _EmptyCart();

          final cubit = context.read<CartCubit>();

          return Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    if (cart.restaurantName != null)
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                          AppSpacing.s20.w,
                          AppSpacing.s8.h,
                          AppSpacing.s20.w,
                          0,
                        ),
                        child: Text(
                          cart.restaurantName!,
                          style: context.text.titleLarge,
                        ),
                      ),
                    for (final item in cart.items)
                      CartItemTile(
                        item: item,
                        // Lock the buttons while a change is running
                        enabled: !state.isLoading,
                        onQuantityChanged: (quantity) => _handle(
                          context,
                          cubit.updateQuantity(item.id, quantity),
                        ),
                        onRemove: () =>
                            _handle(context, cubit.removeItem(item.id)),
                      ),
                    _CartSummary(cart: cart),
                  ],
                ),
              ),
              _buildCheckoutBar(context, state.isLoading),
            ],
          );
        },
      ),
    );
  }

  Widget _buildCheckoutBar(BuildContext context, bool isLoading) {
    return Container(
      padding: EdgeInsets.fromLTRB(
        AppSpacing.s20.w,
        AppSpacing.s12.h,
        AppSpacing.s20.w,
        AppSpacing.s12.h,
      ),
      decoration: BoxDecoration(
        color: context.loqma.card,
        boxShadow: AppShadows.float,
      ),
      child: SafeArea(
        top: false,
        child: LoqmaButton(
          label: context.s.goToCheckout,
          // TODO: open the checkout page
          onPressed: isLoading ? null : () {},
        ),
      ),
    );
  }
}

class _CartSummary extends StatelessWidget {
  const _CartSummary({required this.cart});

  final CartEntity cart;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(AppSpacing.s20.r),
      padding: EdgeInsets.all(AppSpacing.s16.r),
      decoration: BoxDecoration(
        color: context.loqma.card,
        borderRadius: AppRadius.lgAll,
        boxShadow: AppShadows.card,
      ),
      child: Column(
        children: [
          _row(context, context.s.subtotal, context.s.price(cart.subtotal)),
          SizedBox(height: AppSpacing.s8.h),
          _row(
            context,
            context.s.deliveryFee,
            cart.deliveryFee == 0
                ? context.s.freeDelivery
                : context.s.price(cart.deliveryFee),
          ),
          Divider(height: AppSpacing.s24.h),
          _row(
            context,
            context.s.total,
            context.s.price(cart.total),
            isBold: true,
          ),
        ],
      ),
    );
  }

  Widget _row(
    BuildContext context,
    String label,
    String value, {
    bool isBold = false,
  }) {
    final style = isBold ? context.text.titleMedium : context.text.bodyMedium;
    return Row(
      children: [
        Expanded(child: Text(label, style: style)),
        Text(value, style: style),
      ],
    );
  }
}

class _EmptyCart extends StatelessWidget {
  const _EmptyCart();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(AppSpacing.s24.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 96.r,
              height: 96.r,
              decoration: BoxDecoration(
                color: context.loqma.primarySoft,
                shape: BoxShape.circle,
              ),
              alignment: Alignment.center,
              child: AppIcon('receipt', size: 40.r, color: context.loqma.primary),
            ),
            SizedBox(height: AppSpacing.s16.h),
            Text(context.s.cartEmpty, style: context.text.titleMedium),
            SizedBox(height: AppSpacing.s24.h),
            LoqmaButton(
              label: context.s.addItems,
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}
