import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// Brand wordmark from Figma (SVG). Pass [color] to tint it (e.g. white on orange).
class LoqmaLogo extends StatelessWidget {
  const LoqmaLogo.en({super.key, this.height = 20, this.color}) : asset = 'assets/logo/logo_en.svg';
  const LoqmaLogo.ar({super.key, this.height = 20, this.color}) : asset = 'assets/logo/logo_ar.svg';

  final String asset;
  final double height;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      asset,
      height: height,
      colorFilter: color == null ? null : ColorFilter.mode(color!, BlendMode.srcIn),
    );
  }
}
