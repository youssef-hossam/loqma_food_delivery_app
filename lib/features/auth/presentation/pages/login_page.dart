import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loqma_food_delivery_app/core/extensions/context_extensions.dart';
import 'package:loqma_food_delivery_app/core/router/routes.dart';
import 'package:loqma_food_delivery_app/core/theme/app_colors.dart';
import 'package:loqma_food_delivery_app/core/theme/app_shadows.dart';
import 'package:loqma_food_delivery_app/core/widgets/loqma_button.dart';
import 'package:loqma_food_delivery_app/features/auth/presentation/widgets/auth_background.dart';
import 'package:loqma_food_delivery_app/features/auth/presentation/widgets/auth_body.dart';
import 'package:loqma_food_delivery_app/features/auth/presentation/widgets/auth_header.dart';
import 'package:loqma_food_delivery_app/features/auth/presentation/widgets/auth_switch_text.dart';
import 'package:loqma_food_delivery_app/features/auth/presentation/widgets/auth_text_field.dart';
import 'package:loqma_food_delivery_app/features/auth/presentation/widgets/social_login_row.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthBackground(
      child: AuthBody(
        children: [
          AuthHeader(),
          SizedBox(height: 55.h),
          Container(
            width: 56.r,
            height: 56.r,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: context.loqma.primary,
              borderRadius: BorderRadius.circular(18.r),
              boxShadow: AppShadows.primaryGlow,
            ),
            child: Text(
              'L',
              style: context.text.headlineMedium?.copyWith(
                color: context.loqma.textOnPrimary,
              ),
            ),
          ),
          SizedBox(height: 16.h),
          Text(context.s.welcomeBack, style: context.text.headlineMedium),
          SizedBox(height: 16.h),
          Text(context.s.loginSubtitle, style: context.text.bodySmall),
          SizedBox(height: 24.h),
          AuthTextField(
            label: context.s.email,
            hint: context.s.emailHint,
            icon: 'mail',
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(height: 16.h),
          AuthTextField(
            label: context.s.password,
            hint: context.s.password,
            icon: 'lock',
            isPassword: true,
            textInputAction: TextInputAction.done,
          ),
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: TextButton(
              onPressed: () {},
              child: Text(
                context.s.forgotPassword,
                style: context.text.labelMedium?.copyWith(
                  color: context.loqma.primary,
                ),
              ),
            ),
          ),
          SizedBox(height: 8.h),
          LoqmaButton(label: context.s.logIn, onPressed: () {}),
          SizedBox(height: 16.h),
          const SocialLoginRow(),
        ],
        footer: AuthSwitchText(
          question: context.s.noAccount,
          action: context.s.signUp,
          onTap: () => Navigator.pushNamed(context, Routes.register),
        ),
      ),
    );
  }
}
