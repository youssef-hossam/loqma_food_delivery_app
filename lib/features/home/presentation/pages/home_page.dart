import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loqma_food_delivery_app/core/extensions/context_extensions.dart';
import 'package:loqma_food_delivery_app/core/router/routes.dart';
import 'package:loqma_food_delivery_app/core/theme/app_colors.dart';
import 'package:loqma_food_delivery_app/core/theme/app_spacing.dart';
import 'package:loqma_food_delivery_app/core/widgets/loqma_button.dart';
import 'package:loqma_food_delivery_app/features/home/domain/entities/home_entity.dart';
import 'package:loqma_food_delivery_app/features/home/presentation/cubit/home_cubit.dart';
import 'package:loqma_food_delivery_app/features/home/presentation/cubit/home_state.dart';
import 'package:loqma_food_delivery_app/features/home/presentation/widgets/banners_carousel.dart';
import 'package:loqma_food_delivery_app/features/home/presentation/widgets/categories_list.dart';
import 'package:loqma_food_delivery_app/features/home/presentation/widgets/home_header.dart';
import 'package:loqma_food_delivery_app/features/home/presentation/widgets/home_search_bar.dart';
import 'package:loqma_food_delivery_app/features/home/presentation/widgets/home_skeleton.dart';
import 'package:loqma_food_delivery_app/features/home/presentation/widgets/section_header.dart';
import 'package:loqma_food_delivery_app/features/restaurants/presentation/widgets/dish_card.dart';
import 'package:loqma_food_delivery_app/features/restaurants/presentation/widgets/restaurant_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          // AnimatedSwitcher fades between skeleton, error and content
          return AnimatedSwitcher(
            duration: const Duration(milliseconds: 350),
            // sealed class: the compiler makes sure we handle every state
            child: switch (state) {
              HomeInitial() || HomeLoading() => const HomeSkeleton(),
              HomeFailure() => _HomeError(
                onRetry: () => context.read<HomeCubit>().getHome(),
              ),
              HomeSuccess(:final home) => _HomeContent(home: home),
            },
          );
        },
      ),
    );
  }
}

class _HomeContent extends StatelessWidget {
  const _HomeContent({required this.home});

  final HomeEntity home;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      // Pull down to reload the home data
      onRefresh: () => context.read<HomeCubit>().getHome(),
      child: CustomScrollView(
        // Lets pull to refresh work even when the content is short
        physics: const AlwaysScrollableScrollPhysics(),
        slivers: [
          const SliverToBoxAdapter(child: HomeHeader()),
          // TODO: open the search tab
          const SliverToBoxAdapter(child: HomeSearchBar()),

          if (home.banners.isNotEmpty)
            SliverToBoxAdapter(child: BannersCarousel(banners: home.banners)),

          if (home.categories.isNotEmpty) ...[
            SliverToBoxAdapter(
              child: SectionHeader(title: context.s.categories),
            ),
            SliverToBoxAdapter(
              child: CategoriesList(categories: home.categories),
            ),
          ],

          // TODO: open the restaurants list when "See all" is tapped
          if (home.featured.isNotEmpty) ...[
            SliverToBoxAdapter(
              child: SectionHeader(
                title: context.s.popularNearYou,
                onSeeAll: () {},
              ),
            ),
            SliverToBoxAdapter(
              child: _HorizontalList(
                itemCount: home.featured.length,
                itemBuilder: (index) => RestaurantCard(
                  restaurant: home.featured[index],
                  width: 260.w,
                  onTap: () => Navigator.pushNamed(
                    context,
                    Routes.restaurantDetails,
                    arguments: home.featured[index].id,
                  ),
                ),
              ),
            ),
          ],

          if (home.topRated.isNotEmpty) ...[
            SliverToBoxAdapter(
              child: SectionHeader(title: context.s.topRated, onSeeAll: () {}),
            ),
            SliverToBoxAdapter(
              child: _HorizontalList(
                itemCount: home.topRated.length,
                itemBuilder: (index) => RestaurantCard(
                  restaurant: home.topRated[index],
                  width: 260.w,
                  onTap: () => Navigator.pushNamed(
                    context,
                    Routes.restaurantDetails,
                    arguments: home.topRated[index].id,
                  ),
                ),
              ),
            ),
          ],

          if (home.popularDishes.isNotEmpty) ...[
            SliverToBoxAdapter(
              child: SectionHeader(title: context.s.trendingNow),
            ),
            SliverToBoxAdapter(
              child: _HorizontalList(
                itemCount: home.popularDishes.length,
                itemBuilder: (index) => DishCard(
                  dish: home.popularDishes[index],
                  onTap: () => Navigator.pushNamed(
                    context,
                    Routes.dishDetails,
                    arguments: home.popularDishes[index].id,
                  ),
                ),
              ),
            ),
          ],

          // Space so the last section isn't hidden behind the floating nav bar
          SliverToBoxAdapter(child: SizedBox(height: 110.h)),
        ],
      ),
    );
  }
}

// Horizontal list with the same padding and spacing for every section.
// The home lists are short (max ~10 items), so a Row is fine and
// the list height comes from the cards instead of a fixed number.
class _HorizontalList extends StatelessWidget {
  const _HorizontalList({required this.itemCount, required this.itemBuilder});

  final int itemCount;
  final Widget Function(int index) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      // Vertical padding so the card shadows don't get cut
      padding: EdgeInsets.symmetric(
        horizontal: AppSpacing.s20.w,
        vertical: AppSpacing.s4.h,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: AppSpacing.s16.w,
        children: List.generate(itemCount, itemBuilder),
      ),
    );
  }
}

class _HomeError extends StatelessWidget {
  const _HomeError({required this.onRetry});

  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(AppSpacing.s24.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              context.s.errorGenericTitle,
              textAlign: TextAlign.center,
              style: context.text.titleMedium,
            ),
            SizedBox(height: AppSpacing.s8.h),
            Text(
              context.s.errorGeneric,
              textAlign: TextAlign.center,
              style: context.text.bodyMedium?.copyWith(
                color: context.loqma.textSecondary,
              ),
            ),
            SizedBox(height: AppSpacing.s24.h),
            LoqmaButton(label: context.s.retry, onPressed: onRetry),
          ],
        ),
      ),
    );
  }
}
