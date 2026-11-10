import 'package:flutter/material.dart';
import 'package:loqma_food_delivery_app/core/extensions/context_extensions.dart';

// TODO: build the home content (header, search, banners, categories, restaurants)
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Text(context.s.navHome, style: context.text.headlineMedium),
      ),
    );
  }
}
