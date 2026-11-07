import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loqma_food_delivery_app/core/router/routes.dart';
import 'package:loqma_food_delivery_app/core/theme/app_colors.dart';
import 'package:loqma_food_delivery_app/core/theme/app_shadows.dart';
import 'package:loqma_food_delivery_app/core/widgets/language_toggle.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({super.key});

  void _goBack(BuildContext context) {
    if (Navigator.canPop(context)) {
      Navigator.pop(context);
    } else {
      // login opened from onboarding with pushReplacement, so go back to it
      Navigator.pushReplacementNamed(context, Routes.onboarding);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 44.r,
          height: 44.r,
          decoration: BoxDecoration(
            color: context.loqma.card,
            shape: BoxShape.circle,
            boxShadow: AppShadows.card,
          ),
          child: IconButton(
            onPressed: () => _goBack(context),
            icon: Icon(Icons.arrow_back_ios_new_rounded, size: 18.r, color: context.loqma.textPrimary),
          ),
        ),
        const Spacer(),
        const LanguageToggle(),
      ],
    );
  }
}
