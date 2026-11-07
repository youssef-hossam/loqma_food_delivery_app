import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loqma_food_delivery_app/core/localization/locale_controller.dart';
import 'package:loqma_food_delivery_app/core/theme/app_colors.dart';

class LanguageToggle extends StatelessWidget {
  const LanguageToggle({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = LocaleScope.of(context);
    final isArabic = controller.isArabic;

    return Container(
      height: 34.h,
      padding: EdgeInsets.all(3.r),
      decoration: BoxDecoration(
        color: context.loqma.card,
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(color: context.loqma.borderDefault),
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: AnimatedAlign(
              duration: const Duration(milliseconds: 250),
              curve: Curves.easeOut,
              alignment: isArabic ? AlignmentDirectional.centerEnd : AlignmentDirectional.centerStart,
              child: Container(
                width: 40.w,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: context.loqma.primary,
                  borderRadius: BorderRadius.circular(16.r),
                ),
              ),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              _LanguageItem(
                label: 'EN',
                selected: !isArabic,
                onTap: () => controller.setLocale(const Locale('en')),
              ),
              _LanguageItem(
                label: 'ع',
                selected: isArabic,
                onTap: () => controller.setLocale(const Locale('ar')),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _LanguageItem extends StatelessWidget {
  const _LanguageItem({required this.label, required this.selected, required this.onTap});

  final String label;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: SizedBox(
        width: 40.w,
        child: Center(
          child: AnimatedDefaultTextStyle(
            duration: const Duration(milliseconds: 250),
            style: GoogleFonts.cairo(
              fontSize: 13.sp,
              fontWeight: FontWeight.w700,
              color: selected ? context.loqma.textOnPrimary : context.loqma.textSecondary,
            ),
            child: Text(label),
          ),
        ),
      ),
    );
  }
}
