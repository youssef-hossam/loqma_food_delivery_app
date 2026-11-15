import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loqma_food_delivery_app/core/error/failure.dart';
import 'package:loqma_food_delivery_app/core/extensions/context_extensions.dart';
import 'package:loqma_food_delivery_app/core/theme/app_colors.dart';
import 'package:loqma_food_delivery_app/core/theme/app_shadows.dart';
import 'package:loqma_food_delivery_app/core/theme/app_spacing.dart';
import 'package:loqma_food_delivery_app/core/widgets/app_alert_dialog.dart';
import 'package:loqma_food_delivery_app/core/widgets/app_error_view.dart';
import 'package:loqma_food_delivery_app/core/widgets/app_network_image.dart';
import 'package:loqma_food_delivery_app/core/widgets/loqma_button.dart';
import 'package:loqma_food_delivery_app/core/widgets/quantity_stepper.dart';
import 'package:loqma_food_delivery_app/features/cart/presentation/cubit/cart_cubit.dart';
import 'package:loqma_food_delivery_app/features/restaurants/domain/entities/dish_details_entity.dart';
import 'package:loqma_food_delivery_app/features/restaurants/domain/entities/option_group_entity.dart';
import 'package:loqma_food_delivery_app/features/restaurants/presentation/cubit/dish_details_cubit.dart';
import 'package:loqma_food_delivery_app/features/restaurants/presentation/cubit/dish_details_state.dart';
import 'package:loqma_food_delivery_app/features/restaurants/presentation/widgets/circle_icon_button.dart';
import 'package:loqma_food_delivery_app/features/restaurants/presentation/widgets/option_group_section.dart';

class DishDetailsPage extends StatelessWidget {
  const DishDetailsPage({super.key, required this.dishId});

  final String dishId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.loqma.background,
      body: BlocBuilder<DishDetailsCubit, DishDetailsState>(
        builder: (context, state) {
          return AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            child: switch (state) {
              DishDetailsInitial() || DishDetailsLoading() => const Center(
                child: CircularProgressIndicator(),
              ),
              DishDetailsFailure() => SafeArea(
                child: AppErrorView(
                  onRetry: () => context.read<DishDetailsCubit>().getDish(dishId),
                ),
              ),
              DishDetailsSuccess(:final dish) => _DishContent(dish: dish),
            },
          );
        },
      ),
    );
  }
}

// Stateful because it keeps the user's choices and the quantity
class _DishContent extends StatefulWidget {
  const _DishContent({required this.dish});

  final DishDetailsEntity dish;

  @override
  State<_DishContent> createState() => _DishContentState();
}

class _DishContentState extends State<_DishContent> {
  // groupId -> selected option ids
  final Map<String, Set<String>> _selected = {};
  final _notesController = TextEditingController();
  int _quantity = 1;
  bool _isAdding = false;

  @override
  void initState() {
    super.initState();
    // Start with the default options already selected
    for (final group in widget.dish.optionGroups) {
      _selected[group.id] = group.options
          .where((o) => o.isDefault)
          .map((o) => o.id)
          .toSet();
    }
  }

  @override
  void dispose() {
    _notesController.dispose();
    super.dispose();
  }

  void _onOptionTap(OptionGroupEntity group, String optionId) {
    final selected = _selected[group.id]!;

    setState(() {
      if (group.isSingleChoice) {
        // Radio: replace the old choice. Optional groups can be unselected
        if (selected.contains(optionId) && !group.isRequired) {
          selected.clear();
        } else {
          selected
            ..clear()
            ..add(optionId);
        }
      } else if (selected.contains(optionId)) {
        selected.remove(optionId);
      } else if (selected.length < group.maxSelect) {
        // Checkbox: add only if we didn't reach the max
        selected.add(optionId);
      }
    });
  }

  // Every group must have at least its minimum number of choices
  bool get _isValid {
    for (final group in widget.dish.optionGroups) {
      final min = group.isRequired && group.minSelect == 0 ? 1 : group.minSelect;
      if (_selected[group.id]!.length < min) return false;
    }
    return true;
  }

  int get _totalPrice {
    var unitPrice = widget.dish.price;
    for (final group in widget.dish.optionGroups) {
      for (final option in group.options) {
        if (_selected[group.id]!.contains(option.id)) unitPrice += option.price;
      }
    }
    return unitPrice * _quantity;
  }

  Future<void> _addToCart({bool replace = false}) async {
    setState(() => _isAdding = true);

    final failure = await context.read<CartCubit>().addItem(
      dishId: widget.dish.id,
      quantity: _quantity,
      // All the selected option ids from every group
      optionIds: _selected.values.expand((ids) => ids).toList(),
      notes: _notesController.text,
      replace: replace,
    );

    if (!mounted) return;
    setState(() => _isAdding = false);

    if (failure == null) {
      Navigator.pop(context);
    } else if (failure is ServerFailure &&
        failure.code == 'CART_RESTAURANT_CONFLICT') {
      // The cart has dishes from another restaurant: ask before emptying it
      showAppAlert(
        context,
        AppAlertDialog(
          icon: 'alert',
          tone: AlertTone.warning,
          title: context.s.cartConflictTitle,
          message: context.s.cartConflictBody,
          primaryLabel: context.s.startNewCart,
          onPrimary: () => _addToCart(replace: true),
          secondaryLabel: context.s.cancel,
        ),
      );
    } else {
      showFailureDialog(context, failure);
    }
  }

  @override
  Widget build(BuildContext context) {
    final dish = widget.dish;
    final colors = context.loqma;

    return Column(
      children: [
        Expanded(
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                pinned: true,
                expandedHeight: 260.w,
                backgroundColor: colors.background,
                surfaceTintColor: Colors.transparent,
                automaticallyImplyLeading: false,
                leading: Padding(
                  padding: EdgeInsetsDirectional.only(start: AppSpacing.s12.w),
                  child: Center(
                    child: CircleIconButton(
                      icon: 'x',
                      onTap: () => Navigator.pop(context),
                    ),
                  ),
                ),
                flexibleSpace: FlexibleSpaceBar(
                  background: AppNetworkImage(url: dish.imageUrl),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(
                    AppSpacing.s20.w,
                    AppSpacing.s20.h,
                    AppSpacing.s20.w,
                    0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (dish.tag != null)
                        Text(
                          dish.tag!,
                          style: context.text.labelMedium?.copyWith(
                            color: colors.primary,
                          ),
                        ),
                      Text(dish.name, style: context.text.headlineMedium),
                      SizedBox(height: AppSpacing.s8.h),
                      Text(dish.description, style: context.text.bodyMedium),
                      SizedBox(height: AppSpacing.s12.h),
                      Text(
                        context.s.price(dish.price),
                        style: context.text.titleLarge?.copyWith(
                          color: colors.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              for (final group in dish.optionGroups)
                SliverToBoxAdapter(
                  child: OptionGroupSection(
                    group: group,
                    selectedIds: _selected[group.id]!,
                    onOptionTap: (optionId) => _onOptionTap(group, optionId),
                  ),
                ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.all(AppSpacing.s20.r),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        context.s.specialInstructions,
                        style: context.text.titleMedium,
                      ),
                      SizedBox(height: AppSpacing.s8.h),
                      TextField(
                        controller: _notesController,
                        maxLines: 3,
                        minLines: 2,
                        decoration: InputDecoration(
                          hintText: context.s.specialInstructionsHint,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        _buildBottomBar(context),
      ],
    );
  }

  Widget _buildBottomBar(BuildContext context) {
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
        child: Row(
          children: [
            QuantityStepper(
              quantity: _quantity,
              onChanged: (value) => setState(() => _quantity = value),
            ),
            SizedBox(width: AppSpacing.s12.w),
            Expanded(
              child: LoqmaButton(
                label: context.s.addToCartWithPrice(_totalPrice),
                isLoading: _isAdding,
                // Disabled until the required groups are picked
                onPressed: _isValid && widget.dish.isAvailable
                    ? _addToCart
                    : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
