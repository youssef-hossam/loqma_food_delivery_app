import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:loqma_food_delivery_app/core/theme/app_colors.dart';

void main() {
  test('brand primary color matches the Figma token', () {
    expect(LoqmaColors.light.primary, const Color(0xFFFF5A1F));
  });
}
