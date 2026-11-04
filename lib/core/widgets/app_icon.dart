import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// Icon from assets/icons (exported from Figma), tinted with [color].
class AppIcon extends StatelessWidget {
  const AppIcon(this.name, {super.key, this.size = 20, this.color});

  final String name;
  final double size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/icons/$name.svg',
      width: size,
      height: size,
      colorFilter: color == null ? null : ColorFilter.mode(color!, BlendMode.srcIn),
    );
  }
}
