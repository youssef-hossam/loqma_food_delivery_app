import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loqma_food_delivery_app/core/theme/app_colors.dart';
import 'package:loqma_food_delivery_app/core/theme/app_shadows.dart';
import 'package:loqma_food_delivery_app/core/widgets/app_icon.dart';

// White round button used on top of the cover image (back, favorite)
class CircleIconButton extends StatelessWidget {
  const CircleIconButton({
    super.key,
    required this.icon,
    required this.onTap,
    this.iconColor,
  });

  final String icon;
  final VoidCallback onTap;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 40.r,
        height: 40.r,
        decoration: BoxDecoration(
          color: context.loqma.card,
          shape: BoxShape.circle,
          boxShadow: AppShadows.card,
        ),
        alignment: Alignment.center,
        child: AppIcon(
          icon,
          size: 20.r,
          color: iconColor ?? context.loqma.textPrimary,
        ),
      ),
    );
  }
}
