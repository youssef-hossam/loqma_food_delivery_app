import 'package:flutter/material.dart';

@immutable
class LoqmaColors extends ThemeExtension<LoqmaColors> {
  const LoqmaColors({
    required this.primary,
    required this.primaryPressed,
    required this.primarySoft,
    required this.primaryTint,
    required this.night,
    required this.accent,
    required this.textPrimary,
    required this.textSecondary,
    required this.textTertiary,
    required this.textOnPrimary,
    required this.background,
    required this.card,
    required this.muted,
    required this.sheet,
    required this.borderDefault,
    required this.borderStrong,
    required this.success,
    required this.successSoft,
    required this.warning,
    required this.danger,
    required this.dangerSoft,
    required this.info,
    required this.rating,
    required this.mapLand,
    required this.mapRoad,
    required this.mapPark,
    required this.mapWater,
  });

  final Color primary;
  final Color primaryPressed;
  final Color primarySoft;
  final Color primaryTint;
  final Color night;
  final Color accent;
  final Color textPrimary;
  final Color textSecondary;
  final Color textTertiary;
  final Color textOnPrimary;
  final Color background;
  final Color card;
  final Color muted;
  final Color sheet;
  final Color borderDefault;
  final Color borderStrong;
  final Color success;
  final Color successSoft;
  final Color warning;
  final Color danger;
  final Color dangerSoft;
  final Color info;
  final Color rating;
  final Color mapLand;
  final Color mapRoad;
  final Color mapPark;
  final Color mapWater;

  static const LoqmaColors light = LoqmaColors(
    primary: Color(0xFFFF5A1F),
    primaryPressed: Color(0xFFE2470F),
    primarySoft: Color(0xFFFFF0E8),
    primaryTint: Color(0xFFFFDCCB),
    night: Color(0xFF1A1625),
    accent: Color(0xFFFFC145),
    textPrimary: Color(0xFF17151F),
    textSecondary: Color(0xFF6B6878),
    textTertiary: Color(0xFFA3A0AE),
    textOnPrimary: Color(0xFFFFFFFF),
    background: Color(0xFFFAF7F4),
    card: Color(0xFFFFFFFF),
    muted: Color(0xFFF2EEEA),
    sheet: Color(0xFFFFFFFF),
    borderDefault: Color(0xFFECE7E2),
    borderStrong: Color(0xFFD9D3CC),
    success: Color(0xFF12B76A),
    successSoft: Color(0xFFE7F8EF),
    warning: Color(0xFFF79009),
    danger: Color(0xFFF04438),
    dangerSoft: Color(0xFFFEECEB),
    info: Color(0xFF2E90FA),
    rating: Color(0xFFFFB020),
    mapLand: Color(0xFFEEF0EB),
    mapRoad: Color(0xFFFFFFFF),
    mapPark: Color(0xFFD7EBCF),
    mapWater: Color(0xFFCFE3F5),
  );

  static const LoqmaColors dark = LoqmaColors(
    primary: Color(0xFFFF6A33),
    primaryPressed: Color(0xFFFF835A),
    primarySoft: Color(0xFF3A2118),
    primaryTint: Color(0xFF5A2A18),
    night: Color(0xFF2A2635),
    accent: Color(0xFFFFC145),
    textPrimary: Color(0xFFF5F3F7),
    textSecondary: Color(0xFFA9A6B5),
    textTertiary: Color(0xFF7D7A89),
    textOnPrimary: Color(0xFFFFFFFF),
    background: Color(0xFF121018),
    card: Color(0xFF1C1924),
    muted: Color(0xFF25222E),
    sheet: Color(0xFF1C1924),
    borderDefault: Color(0xFF2E2A38),
    borderStrong: Color(0xFF3E3949),
    success: Color(0xFF32D583),
    successSoft: Color(0xFF11291E),
    warning: Color(0xFFFDB022),
    danger: Color(0xFFF97066),
    dangerSoft: Color(0xFF3A1614),
    info: Color(0xFF53B1FD),
    rating: Color(0xFFFFB020),
    mapLand: Color(0xFF1E2220),
    mapRoad: Color(0xFF2B302D),
    mapPark: Color(0xFF1F3324),
    mapWater: Color(0xFF17283A),
  );

  @override
  LoqmaColors copyWith({
    Color? primary,
    Color? primaryPressed,
    Color? primarySoft,
    Color? primaryTint,
    Color? night,
    Color? accent,
    Color? textPrimary,
    Color? textSecondary,
    Color? textTertiary,
    Color? textOnPrimary,
    Color? background,
    Color? card,
    Color? muted,
    Color? sheet,
    Color? borderDefault,
    Color? borderStrong,
    Color? success,
    Color? successSoft,
    Color? warning,
    Color? danger,
    Color? dangerSoft,
    Color? info,
    Color? rating,
    Color? mapLand,
    Color? mapRoad,
    Color? mapPark,
    Color? mapWater,
  }) {
    return LoqmaColors(
      primary: primary ?? this.primary,
      primaryPressed: primaryPressed ?? this.primaryPressed,
      primarySoft: primarySoft ?? this.primarySoft,
      primaryTint: primaryTint ?? this.primaryTint,
      night: night ?? this.night,
      accent: accent ?? this.accent,
      textPrimary: textPrimary ?? this.textPrimary,
      textSecondary: textSecondary ?? this.textSecondary,
      textTertiary: textTertiary ?? this.textTertiary,
      textOnPrimary: textOnPrimary ?? this.textOnPrimary,
      background: background ?? this.background,
      card: card ?? this.card,
      muted: muted ?? this.muted,
      sheet: sheet ?? this.sheet,
      borderDefault: borderDefault ?? this.borderDefault,
      borderStrong: borderStrong ?? this.borderStrong,
      success: success ?? this.success,
      successSoft: successSoft ?? this.successSoft,
      warning: warning ?? this.warning,
      danger: danger ?? this.danger,
      dangerSoft: dangerSoft ?? this.dangerSoft,
      info: info ?? this.info,
      rating: rating ?? this.rating,
      mapLand: mapLand ?? this.mapLand,
      mapRoad: mapRoad ?? this.mapRoad,
      mapPark: mapPark ?? this.mapPark,
      mapWater: mapWater ?? this.mapWater,
    );
  }

  @override
  LoqmaColors lerp(ThemeExtension<LoqmaColors>? other, double t) {
    if (other is! LoqmaColors) return this;
    return LoqmaColors(
      primary: Color.lerp(primary, other.primary, t)!,
      primaryPressed: Color.lerp(primaryPressed, other.primaryPressed, t)!,
      primarySoft: Color.lerp(primarySoft, other.primarySoft, t)!,
      primaryTint: Color.lerp(primaryTint, other.primaryTint, t)!,
      night: Color.lerp(night, other.night, t)!,
      accent: Color.lerp(accent, other.accent, t)!,
      textPrimary: Color.lerp(textPrimary, other.textPrimary, t)!,
      textSecondary: Color.lerp(textSecondary, other.textSecondary, t)!,
      textTertiary: Color.lerp(textTertiary, other.textTertiary, t)!,
      textOnPrimary: Color.lerp(textOnPrimary, other.textOnPrimary, t)!,
      background: Color.lerp(background, other.background, t)!,
      card: Color.lerp(card, other.card, t)!,
      muted: Color.lerp(muted, other.muted, t)!,
      sheet: Color.lerp(sheet, other.sheet, t)!,
      borderDefault: Color.lerp(borderDefault, other.borderDefault, t)!,
      borderStrong: Color.lerp(borderStrong, other.borderStrong, t)!,
      success: Color.lerp(success, other.success, t)!,
      successSoft: Color.lerp(successSoft, other.successSoft, t)!,
      warning: Color.lerp(warning, other.warning, t)!,
      danger: Color.lerp(danger, other.danger, t)!,
      dangerSoft: Color.lerp(dangerSoft, other.dangerSoft, t)!,
      info: Color.lerp(info, other.info, t)!,
      rating: Color.lerp(rating, other.rating, t)!,
      mapLand: Color.lerp(mapLand, other.mapLand, t)!,
      mapRoad: Color.lerp(mapRoad, other.mapRoad, t)!,
      mapPark: Color.lerp(mapPark, other.mapPark, t)!,
      mapWater: Color.lerp(mapWater, other.mapWater, t)!,
    );
  }
}


extension LoqmaColorsX on BuildContext {
  LoqmaColors get loqma => Theme.of(this).extension<LoqmaColors>()!;
}
