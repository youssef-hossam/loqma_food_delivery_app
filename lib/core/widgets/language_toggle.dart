import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loqma_food_delivery_app/core/localization/locale_controller.dart';
import 'package:loqma_food_delivery_app/core/theme/app_colors.dart';
import 'package:loqma_food_delivery_app/generated/l10n.dart';

/// Pill button from Figma ("LanguageToggle"): globe + the language you switch TO.
class LanguageToggle extends StatelessWidget {
  const LanguageToggle({super.key});

  @override
  Widget build(BuildContext context) {
    final c = context.loqma;
    final controller = LocaleScope.of(context);
    return Material(
      color: c.card,
      shape: StadiumBorder(side: BorderSide(color: c.borderDefault)),
      child: InkWell(
        customBorder: const StadiumBorder(),
        onTap: controller.toggle,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(
                'assets/icons/globe.svg',
                width: 16.r,
                height: 16.r,
                colorFilter: ColorFilter.mode(c.textSecondary, BlendMode.srcIn),
              ),
              SizedBox(width: 6.w),
              Text(
                S.of(context).languageSwitchLabel,
                style: Theme.of(context).textTheme.labelMedium?.copyWith(color: c.textPrimary),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
