import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loqma_food_delivery_app/core/theme/app_colors.dart';
import 'package:loqma_food_delivery_app/core/theme/app_shadows.dart';
import 'package:loqma_food_delivery_app/core/widgets/loqma_logo.dart';

class AppLogoMark extends StatelessWidget {
  const AppLogoMark({super.key, this.size = 80});

  final double size;

  @override
  Widget build(BuildContext context) {
    final boxSize = size.r;
    // the word takes 60% of the box width, logo_ar.svg is 51 x 24
    final logoHeight = boxSize * 0.6 * 24 / 51;

    return Container(
      width: boxSize,
      height: boxSize,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [context.loqma.primary, context.loqma.primaryPressed],
        ),
        borderRadius: BorderRadius.circular(boxSize * 0.3),
        boxShadow: AppShadows.primaryGlow,
      ),
      child: LoqmaLogo.ar(height: logoHeight, color: Colors.white),
    );
  }
}
