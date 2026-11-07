import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class LoqmaTypography {
  const LoqmaTypography._({
    required this.display,
    required this.h1,
    required this.h2,
    required this.h3,
    required this.bodyLarge,
    required this.body,
    required this.bodyRegular,
    required this.label,
    required this.caption,
    required this.button,
    required this.overline,
  });

  final TextStyle display;
  final TextStyle h1;
  final TextStyle h2;
  final TextStyle h3;
  final TextStyle bodyLarge;
  final TextStyle body;
  final TextStyle bodyRegular;
  final TextStyle label;
  final TextStyle caption;
  final TextStyle button;
  final TextStyle overline;

  factory LoqmaTypography.en() => LoqmaTypography._(
    display: GoogleFonts.plusJakartaSans(
      fontWeight: FontWeight.w800,
      fontSize: 32,
      height: 1.2,
      letterSpacing: -0.64,
    ),
    h1: GoogleFonts.plusJakartaSans(
      fontWeight: FontWeight.w800,
      fontSize: 26,
      height: 1.25,
      letterSpacing: -0.39,
    ),
    h2: GoogleFonts.plusJakartaSans(
      fontWeight: FontWeight.w700,
      fontSize: 20,
      height: 1.3,
      letterSpacing: -0.2,
    ),
    h3: GoogleFonts.plusJakartaSans(
      fontWeight: FontWeight.w700,
      fontSize: 17,
      height: 1.35,
      letterSpacing: -0.085,
    ),
    bodyLarge: GoogleFonts.plusJakartaSans(
      fontWeight: FontWeight.w500,
      fontSize: 16,
      height: 1.5,
      letterSpacing: 0.0,
    ),
    body: GoogleFonts.plusJakartaSans(
      fontWeight: FontWeight.w500,
      fontSize: 14,
      height: 1.5,
      letterSpacing: 0.0,
    ),
    bodyRegular: GoogleFonts.plusJakartaSans(
      fontWeight: FontWeight.w400,
      fontSize: 14,
      height: 1.5,
      letterSpacing: 0.0,
    ),
    label: GoogleFonts.plusJakartaSans(
      fontWeight: FontWeight.w600,
      fontSize: 13,
      height: 1.4,
      letterSpacing: 0.0,
    ),
    caption: GoogleFonts.plusJakartaSans(
      fontWeight: FontWeight.w500,
      fontSize: 12,
      height: 1.4,
      letterSpacing: 0.0,
    ),
    button: GoogleFonts.plusJakartaSans(
      fontWeight: FontWeight.w700,
      fontSize: 16,
      height: 1.2,
      letterSpacing: 0.0,
    ),
    overline: GoogleFonts.plusJakartaSans(
      fontWeight: FontWeight.w700,
      fontSize: 11,
      height: 1.2,
      letterSpacing: 0.66,
    ),
  );

  factory LoqmaTypography.ar() => LoqmaTypography._(
    display: GoogleFonts.cairo(
      fontWeight: FontWeight.w800,
      fontSize: 30,
      height: 1.4,
      letterSpacing: 0.0,
    ),
    h1: GoogleFonts.cairo(
      fontWeight: FontWeight.w800,
      fontSize: 24,
      height: 1.45,
      letterSpacing: 0.0,
    ),
    h2: GoogleFonts.cairo(
      fontWeight: FontWeight.w700,
      fontSize: 19,
      height: 1.5,
      letterSpacing: 0.0,
    ),
    h3: GoogleFonts.cairo(
      fontWeight: FontWeight.w700,
      fontSize: 16,
      height: 1.5,
      letterSpacing: 0.0,
    ),
    bodyLarge: GoogleFonts.cairo(
      fontWeight: FontWeight.w500,
      fontSize: 16,
      height: 1.6,
      letterSpacing: 0.0,
    ),
    body: GoogleFonts.cairo(
      fontWeight: FontWeight.w500,
      fontSize: 14,
      height: 1.6,
      letterSpacing: 0.0,
    ),
    bodyRegular: GoogleFonts.cairo(
      fontWeight: FontWeight.w500,
      fontSize: 14,
      height: 1.6,
      letterSpacing: 0.0,
    ),
    label: GoogleFonts.cairo(
      fontWeight: FontWeight.w700,
      fontSize: 13,
      height: 1.4,
      letterSpacing: 0.0,
    ),
    caption: GoogleFonts.cairo(
      fontWeight: FontWeight.w500,
      fontSize: 12,
      height: 1.5,
      letterSpacing: 0.0,
    ),
    button: GoogleFonts.cairo(
      fontWeight: FontWeight.w700,
      fontSize: 16,
      height: 1.3,
      letterSpacing: 0.0,
    ),
    overline: GoogleFonts.cairo(
      fontWeight: FontWeight.w500,
      fontSize: 11,
      height: 1.5,
      letterSpacing: 0.0,
    ),
  );

  TextTheme toTextTheme(LoqmaColors c) {
    return TextTheme(
      displayLarge: display.copyWith(color: c.textPrimary),
      headlineMedium: h1.copyWith(color: c.textPrimary),
      titleLarge: h2.copyWith(color: c.textPrimary),
      titleMedium: h3.copyWith(color: c.textPrimary),
      bodyLarge: bodyLarge.copyWith(color: c.textPrimary),
      bodyMedium: body.copyWith(color: c.textSecondary),
      bodySmall: bodyRegular.copyWith(color: c.textSecondary),
      labelLarge: button.copyWith(color: c.textOnPrimary),
      labelMedium: label.copyWith(color: c.textSecondary),
      labelSmall: caption.copyWith(color: c.textTertiary),
    );
  }
}
