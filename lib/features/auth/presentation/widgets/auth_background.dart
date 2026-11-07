import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loqma_food_delivery_app/core/theme/app_colors.dart';

class AuthBackground extends StatelessWidget {
  const AuthBackground({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final dark = Theme.of(context).brightness == Brightness.dark;

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: dark ? SystemUiOverlayStyle.light : SystemUiOverlayStyle.dark,
      child: Scaffold(
        backgroundColor: context.loqma.background,
        body: Stack(
          children: [
            PositionedDirectional(
              top: -170.h,
              end: -130.w,
              child: Container(
                width: 360.r,
                height: 360.r,
                decoration: BoxDecoration(
                  color: context.loqma.primary.withValues(alpha: 0.10),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Padding(
              child: child,
              padding: EdgeInsets.only(top: 45.h),
            ),
          ],
        ),
      ),
    );
  }
}
