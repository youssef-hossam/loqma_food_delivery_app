import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loqma_food_delivery_app/core/extensions/context_extensions.dart';
import 'package:loqma_food_delivery_app/core/router/routes.dart';
import 'package:loqma_food_delivery_app/core/theme/app_colors.dart';
import 'package:loqma_food_delivery_app/core/theme/app_shadows.dart';
import 'package:loqma_food_delivery_app/core/utils/app_validators.dart';
import 'package:loqma_food_delivery_app/core/widgets/app_alert_dialog.dart';
import 'package:loqma_food_delivery_app/core/widgets/loqma_button.dart';
import 'package:loqma_food_delivery_app/core/error/failure.dart';
import 'package:loqma_food_delivery_app/features/auth/presentation/cubits/login/login_cubit.dart';
import 'package:loqma_food_delivery_app/features/auth/presentation/cubits/login/login_state.dart';
import 'package:loqma_food_delivery_app/features/auth/presentation/widgets/auth_background.dart';
import 'package:loqma_food_delivery_app/features/auth/presentation/widgets/auth_body.dart';
import 'package:loqma_food_delivery_app/features/auth/presentation/widgets/auth_header.dart';
import 'package:loqma_food_delivery_app/features/auth/presentation/widgets/auth_switch_text.dart';
import 'package:loqma_food_delivery_app/features/auth/presentation/widgets/auth_text_field.dart';
import 'package:loqma_food_delivery_app/features/auth/presentation/widgets/social_login_row.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  // أخطاء جاية من السيرفر بس (fieldErrors). الأخطاء المحلية بتيجي من الـ validators.
  String? _emailServerError;
  String? _passwordServerError;


  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  //! ───────────── Actions ─────────────
  void _submit() {
    FocusScope.of(context).unfocus(); // يقفل الكيبورد
    setState(() {
      _emailServerError = null;
      _passwordServerError = null;
    });
    if (!_formKey.currentState!.validate()) return;

    context.read<LoginCubit>().login(
      email: _emailController.text.trim(),
      password: _passwordController.text,
    );
  }

  void _onStateChanged(BuildContext context, LoginState state) {
    switch (state) {
      case LoginSuccess():
        // نمسح الـ login والـ onboarding من الـ stack عشان Back ميرجعش هنا
        Navigator.pushNamedAndRemoveUntil(context, Routes.home, (_) => false);

      case LoginFailure(:final failure):
        // VALIDATION_ERROR من السيرفر → نعرض الخطأ تحت الـ field نفسه
        if (failure is ServerFailure && failure.fieldErrors.isNotEmpty) {
          setState(() {
            _emailServerError = failure.fieldErrors['email'];
            _passwordServerError = failure.fieldErrors['password'];
          });
          return;
        }
        // أي خطأ تاني (باسورد غلط، مفيش نت ...) → dialog
        // "حاول تاني" بتظهر بس لمشاكل النت
        showFailureDialog(context, failure, onRetry: _submit);

      case LoginInitial():
      case LoginLoading():
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: _onStateChanged,
      child: AuthBackground(
        child: Form(
          key: _formKey,
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
                controller: _emailController,
                validator: (value) => AppValidators.email(context, value),
                errorText: _emailServerError,
                onChanged: (_) {
                  if (_emailServerError != null) {
                    setState(() => _emailServerError = null);
                  }
                },
                label: context.s.email,
                hint: context.s.emailHint,
                icon: 'mail',
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 16.h),
              AuthTextField(
                controller: _passwordController,
                validator: (value) => AppValidators.password(context, value),
                errorText: _passwordServerError,
                onChanged: (_) {
                  if (_passwordServerError != null) {
                    setState(() => _passwordServerError = null);
                  }
                },
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
              // الزرار بس هو اللي بيتعاد رسمه مع الـ state
              BlocBuilder<LoginCubit, LoginState>(
                builder: (context, state) => LoqmaButton(
                  label: context.s.logIn,
                  isLoading: state is LoginLoading,
                  onPressed: _submit,
                ),
              ),
              SizedBox(height: 16.h),
              const SocialLoginRow(),
            ],
            footer: AuthSwitchText(
              question: context.s.noAccount,
              action: context.s.signUp,
              onTap: () => Navigator.pushNamed(context, Routes.register),
            ),
          ),
        ),
      ),
    );
  }
}
