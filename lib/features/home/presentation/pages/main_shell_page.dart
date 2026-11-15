import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loqma_food_delivery_app/core/di/service_locator.dart';
import 'package:loqma_food_delivery_app/core/extensions/context_extensions.dart';
import 'package:loqma_food_delivery_app/core/theme/app_colors.dart';
import 'package:loqma_food_delivery_app/core/widgets/loqma_bottom_nav.dart';
import 'package:loqma_food_delivery_app/features/cart/presentation/cubit/cart_cubit.dart';
import 'package:loqma_food_delivery_app/features/cart/presentation/widgets/view_cart_bar.dart';
import 'package:loqma_food_delivery_app/features/home/presentation/cubit/home_cubit.dart';
import 'package:loqma_food_delivery_app/features/home/presentation/pages/home_page.dart';

// The screen after login: holds the 4 tabs and the bottom nav bar
class MainShellPage extends StatefulWidget {
  const MainShellPage({super.key});

  @override
  State<MainShellPage> createState() => _MainShellPageState();
}

class _MainShellPageState extends State<MainShellPage> {
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    // The user is logged in here, so it's safe to load the cart
    context.read<CartCubit>().loadCart();
  }

  @override
  Widget build(BuildContext context) {
    final items = [
      LoqmaNavItem(icon: 'home', label: context.s.navHome),
      LoqmaNavItem(icon: 'search', label: context.s.navSearch),
      LoqmaNavItem(icon: 'receipt', label: context.s.navOrders),
      LoqmaNavItem(icon: 'user', label: context.s.navProfile),
    ];

    return Scaffold(
      backgroundColor: context.loqma.background,
      // Lets the tab content scroll behind the floating bar
      extendBody: true,
      // IndexedStack keeps every tab alive, so switching tabs doesn't reload them
      body: IndexedStack(
        index: _currentIndex,
        children: [
          BlocProvider(
            create: (context) => sl<HomeCubit>()..getHome(),
            child: const HomePage(),
          ),
          _TabPlaceholder(title: context.s.navSearch),
          _TabPlaceholder(title: context.s.navOrders),
          _TabPlaceholder(title: context.s.navProfile),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Shows only when the cart has items
          const ViewCartBar(useSafeArea: false),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.fromLTRB(24.w, 0, 24.w, 12.h),
              child: LoqmaBottomNav(
                items: items,
                currentIndex: _currentIndex,
                onTap: (index) => setState(() => _currentIndex = index),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// TODO: replace with the real Search / Orders / Profile pages
class _TabPlaceholder extends StatelessWidget {
  const _TabPlaceholder({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(title, style: context.text.headlineMedium));
  }
}
