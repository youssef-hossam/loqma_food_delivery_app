import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loqma_food_delivery_app/core/extensions/context_extensions.dart';
import 'package:loqma_food_delivery_app/core/router/routes.dart';
import 'package:loqma_food_delivery_app/core/theme/app_colors.dart';
import 'package:loqma_food_delivery_app/core/widgets/highlighted_text.dart';
import 'package:loqma_food_delivery_app/core/widgets/loqma_button.dart';
import 'package:loqma_food_delivery_app/features/auth/presentation/widgets/auth_background.dart';
import 'package:loqma_food_delivery_app/features/auth/presentation/widgets/auth_body.dart';
import 'package:loqma_food_delivery_app/features/auth/presentation/widgets/auth_header.dart';
import 'package:loqma_food_delivery_app/features/auth/presentation/widgets/auth_switch_text.dart';
import 'package:loqma_food_delivery_app/features/auth/presentation/widgets/auth_text_field.dart';
import 'package:loqma_food_delivery_app/features/auth/presentation/widgets/password_rules.dart';
import 'package:loqma_food_delivery_app/core/widgets/app_logo_mark.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String _password = '';
  bool _acceptTerms = false;

  void _goToLogin() {
    if (Navigator.canPop(context)) {
      Navigator.pop(context);
    } else {
      Navigator.pushReplacementNamed(context, Routes.login);
    }
  }

  @override
  Widget build(BuildContext context) {
    return AuthBackground(
      child: AuthBody(
        children: [
          const AuthHeader(),
          SizedBox(height: 12.h),
          const AppLogoMark(),
          SizedBox(height: 16.h),
          Text(context.s.createYourAccount, style: context.text.headlineMedium),
          SizedBox(height: 6.h),
          Text(
            context.s.registerSubtitle('LOQMA50'),
            style: context.text.bodySmall,
          ),
          SizedBox(height: 20.h),
          AuthTextField(
            hint: context.s.fullName,
            icon: 'user',
            keyboardType: TextInputType.name,
          ),
          SizedBox(height: 12.h),
          AuthTextField(
            hint: context.s.emailHint,
            icon: 'mail',
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(height: 12.h),
          AuthTextField(
            hint: context.s.phoneNumber,
            keyboardType: TextInputType.phone,
            prefix: const _CountryCode(),
          ),
          SizedBox(height: 12.h),
          AuthTextField(
            hint: context.s.password,
            icon: 'lock',
            isPassword: true,
            textInputAction: TextInputAction.done,
            onChanged: (value) => setState(() => _password = value),
          ),
          SizedBox(height: 20.h),
          PasswordRules(password: _password),
          SizedBox(height: 20.h),
          GestureDetector(
            onTap: () => setState(() => _acceptTerms = !_acceptTerms),
            behavior: HitTestBehavior.opaque,
            child: Row(
              children: [
                AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  width: 22.r,
                  height: 22.r,
                  decoration: BoxDecoration(
                    color: _acceptTerms
                        ? context.loqma.primary
                        : context.loqma.card,
                    borderRadius: BorderRadius.circular(7.r),
                    border: Border.all(
                      color: _acceptTerms
                          ? context.loqma.primary
                          : context.loqma.borderStrong,
                    ),
                  ),
                  child: _acceptTerms
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
          SizedBox(height: 20.h),
          LoqmaButton(label: context.s.createAccount, onPressed: () {}),
        ],
        footer: AuthSwitchText(
          question: context.s.alreadyHaveAccount,
          action: context.s.logIn,
          onTap: _goToLogin,
        ),
      ),
    );
  }
}

class _CountryCode extends StatelessWidget {
  const _CountryCode();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: 16.w, end: 12.w),
      child: Container(
        padding: EdgeInsetsDirectional.only(end: 10.w),
        decoration: BoxDecoration(
          border: BorderDirectional(
            end: BorderSide(color: context.loqma.borderDefault),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('🇪🇬 +20', style: context.text.bodyLarge),
            Icon(
              Icons.keyboard_arrow_down_rounded,
              size: 18.r,
              color: context.loqma.textTertiary,
            ),
          ],
        ),
      ),
    );
  }
}
