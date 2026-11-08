import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loqma_food_delivery_app/core/extensions/context_extensions.dart';
import 'package:loqma_food_delivery_app/core/theme/app_colors.dart';
import 'package:loqma_food_delivery_app/core/widgets/field_error_text.dart';
import 'package:loqma_food_delivery_app/core/widgets/highlighted_text.dart';

// FormField عشان الـ checkbox يدخل في _formKey.validate() زي باقي الـ fields
class TermsCheckbox extends StatelessWidget {
  const TermsCheckbox({super.key, this.onChanged});

  final ValueChanged<bool>? onChanged;

  @override
  Widget build(BuildContext context) {
    return FormField<bool>(
      initialValue: false,
      validator: (value) => value == true ? null : context.s.validationTerms,
      builder: (field) {
        final checked = field.value ?? false;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                field.didChange(!checked);
                if (field.hasError) field.validate(); // يشيل الـ error أول ما يوافق
                onChanged?.call(!checked);
              },
              behavior: HitTestBehavior.opaque,
              child: Row(
                children: [
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    width: 22.r,
                    height: 22.r,
                    decoration: BoxDecoration(
                      color: checked ? context.loqma.primary : context.loqma.card,
                      borderRadius: BorderRadius.circular(7.r),
                      border: Border.all(
                        color: checked
                            ? context.loqma.primary
                            : field.hasError
                            ? context.loqma.danger
                            : context.loqma.borderStrong,
                        width: field.hasError ? 2 : 1,
                      ),
                    ),
                    child: checked
                        ? Icon(
                            Icons.check_rounded,
                            size: 16.r,
                            color: context.loqma.textOnPrimary,
                          )
                        : null,
                  ),
                  SizedBox(width: 10.w),
                  Expanded(
                    child: HighlightedText(
                      context.s.termsAgreement(
                        '*${context.s.termsOfService}*',
                        '*${context.s.privacyPolicy}*',
                      ),
                      style: context.text.labelSmall?.copyWith(
                        color: context.loqma.textSecondary,
                      ),
                      highlightColor: context.loqma.primary,
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
            ),
            if (field.hasError) FieldErrorText(field.errorText!),
          ],
        );
      },
    );
  }
}
