import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_spacing.dart';
import 'app_typography.dart';

class LoqmaTheme {
  static ThemeData light({bool arabic = false}) =>
      _build(LoqmaColors.light, Brightness.light, arabic);

  static ThemeData dark({bool arabic = false}) =>
      _build(LoqmaColors.dark, Brightness.dark, arabic);

  static ThemeData _build(LoqmaColors c, Brightness brightness, bool arabic) {
    final typo = arabic ? LoqmaTypography.ar() : LoqmaTypography.en();
    final scheme = ColorScheme.fromSeed(seedColor: c.primary, brightness: brightness).copyWith(
      primary: c.primary,
      onPrimary: c.textOnPrimary,
      surface: c.background,
      onSurface: c.textPrimary,
      error: c.danger,
      outline: c.borderStrong,
    );

    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      colorScheme: scheme,
      scaffoldBackgroundColor: c.background,
      textTheme: typo.toTextTheme(c),
      extensions: <ThemeExtension<dynamic>>[c],
      appBarTheme: AppBarTheme(
        backgroundColor: c.background,
        foregroundColor: c.textPrimary,
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: false,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: c.primary,
          foregroundColor: c.textOnPrimary,
          minimumSize: const Size.fromHeight(52),
          shape: RoundedRectangleBorder(borderRadius: AppRadius.mdAll),
        ),
      ),
    );
  }
}
