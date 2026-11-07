import 'package:flutter/material.dart';
import 'package:loqma_food_delivery_app/generated/l10n.dart';

extension ContextExtensions on BuildContext {
  S get s => S.of(this);

  TextTheme get text => Theme.of(this).textTheme;

  // screen size
  Size get screenSize => MediaQuery.sizeOf(this);
  double get screenWidth => screenSize.width;
  double get screenHeight => screenSize.height;



  
}
