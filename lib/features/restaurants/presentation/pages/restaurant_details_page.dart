import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loqma_food_delivery_app/core/extensions/context_extensions.dart';
import 'package:loqma_food_delivery_app/core/router/routes.dart';
import 'package:loqma_food_delivery_app/core/theme/app_colors.dart';
import 'package:loqma_food_delivery_app/core/theme/app_spacing.dart';
import 'package:loqma_food_delivery_app/core/widgets/app_error_view.dart';
import 'package:loqma_food_delivery_app/core/widgets/app_network_image.dart';
import 'package:loqma_food_delivery_app/features/cart/presentation/widgets/view_cart_bar.dart';
import 'package:loqma_food_delivery_app/features/restaurants/domain/entities/restaurant_details_entity.dart';
import 'package:loqma_food_delivery_app/features/restaurants/presentation/cubit/restaurant_details_cubit.dart';
import 'package:loqma_food_delivery_app/features/restaurants/presentation/cubit/restaurant_details_state.dart';
import 'package:loqma_food_delivery_app/features/restaurants/presentation/widgets/circle_icon_button.dart';
import 'package:loqma_food_delivery_app/features/restaurants/presentation/widgets/menu_dish_tile.dart';
import 'package:loqma_food_delivery_app/features/restaurants/presentation/widgets/menu_tabs_header.dart';
import 'package:loqma_food_delivery_app/features/restaurants/presentation/widgets/restaurant_details_skeleton.dart';
import 'package:loqma_food_delivery_app/features/restaurants/presentation/widgets/restaurant_info_section.dart';

class RestaurantDetailsPage extends StatelessWidget {
  const RestaurantDetailsPage({super.key, required this.restaurantId});

  final String restaurantId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.loqma.background,
      bottomNavigationBar: const ViewCartBar(),
      body: BlocBuilder<RestaurantDetailsCubit, RestaurantDetailsState>(
        builder: (context, state) {
          return AnimatedSwitcher(
            duration: const Duration(milliseconds: 350),
            child: switch (state) {
              RestaurantDetailsInitial() || RestaurantDetailsLoading() =>
                const RestaurantDetailsSkeleton(),
              RestaurantDetailsFailure() => SafeArea(
                child: AppErrorView(
                  onRetry: () => context
                      .read<RestaurantDetailsCubit>()
                      .getDetails(restaurantId),
                ),
              ),
              RestaurantDetailsSuccess(:final details) => _DetailsContent(
                details: details,
              ),
            },
          );
        },
      ),
    );
  }
}

// Stateful because it remembers the selected menu tab
class _DetailsContent extends StatefulWidget {
  const _DetailsContent({required this.details});

  final RestaurantDetailsEntity details;

  @override
  State<_DetailsContent> createState() => _DetailsContentState();
}

class _DetailsContentState extends State<_DetailsContent> {
  final _scrollController = ScrollController();

  // One key per menu section, so we can find its position and scroll to it
  late final List<GlobalKey> _sectionKeys = List.generate(
    widget.details.menu.length,
    (_) => GlobalKey(),
  );

  int _selectedIndex = 0;

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToSection(int index) {
    setState(() => _selectedIndex = index);

    final sectionContext = _sectionKeys[index].currentContext;
    if (sectionContext == null) return;

    // Where the section title is inside the scroll view
    final box = sectionContext.findRenderObject()!;
    final offset = RenderAbstractViewport.of(box).getOffsetToReveal(box, 0).offset;

    // The app bar and the tabs stay on top, so we stop before them
    final pinnedHeight =
        MediaQuery.paddingOf(context).top + kToolbarHeight + MenuTabsHeader.height;

    _scrollController.animateTo(
      (offset - pinnedHeight).clamp(0, _scrollController.position.maxScrollExtent),
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    final restaurant = widget.details.restaurant;
    final menu = widget.details.menu;
    final colors = context.loqma;

    return CustomScrollView(
      controller: _scrollController,
      slivers: [
        SliverAppBar(
          pinned: true,
          expandedHeight: 220.w,
          backgroundColor: colors.background,
          surfaceTintColor: Colors.transparent,
          automaticallyImplyLeading: false,
          leading: Padding(
            padding: EdgeInsetsDirectional.only(start: AppSpacing.s12.w),
            child: Center(
              child: CircleIconButton(
                // Back arrow points right in Arabic
                icon: Directionality.of(context) == TextDirection.rtl
                    ? 'right'
                    : 'left',
                onTap: () => Navigator.pop(context),
              ),
            ),
          ),
          actions: [
            // TODO: toggle favorite
            CircleIconButton(
              icon: restaurant.isFavorite ? 'heart-fill' : 'heart',
              iconColor: restaurant.isFavorite ? colors.danger : null,
              onTap: () {},
            ),
            SizedBox(width: AppSpacing.s12.w),
          ],
          flexibleSpace: FlexibleSpaceBar(
            background: Stack(
              fit: StackFit.expand,
              children: [
                AppNetworkImage(url: restaurant.coverUrl),
                if (!restaurant.isOpen)
                  Container(
                    color: Colors.black.withValues(alpha: 0.5),
                    alignment: Alignment.center,
                    child: Text(
                      context.s.closed,
                      style: context.text.titleLarge?.copyWith(
                        color: colors.textOnPrimary,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),

        SliverToBoxAdapter(child: RestaurantInfoSection(restaurant: restaurant)),

        if (menu.isNotEmpty)
          SliverPersistentHeader(
            pinned: true,
            delegate: MenuTabsHeader(
              sections: menu.map((s) => s.name).toList(),
              selectedIndex: _selectedIndex,
              onTap: _scrollToSection,
            ),
          ),

        // Each section: a title and its dishes.
        // The menu is small, so a Column is fine (and every section key exists)
        for (var i = 0; i < menu.length; i++)
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  key: _sectionKeys[i],
                  padding: EdgeInsets.fromLTRB(
                    AppSpacing.s20.w,
                    AppSpacing.s20.h,
                    AppSpacing.s20.w,
                    AppSpacing.s4.h,
                  ),
                  child: Text(menu[i].name, style: context.text.titleLarge),
                ),
                for (final dish in menu[i].items)
                  MenuDishTile(
                    dish: dish,
                    onTap: () => Navigator.pushNamed(
                      context,
                      Routes.dishDetails,
                      arguments: dish.id,
                    ),
                  ),
              ],
            ),
          ),

        SliverToBoxAdapter(child: SizedBox(height: AppSpacing.s32.h)),
      ],
    );
  }
}
