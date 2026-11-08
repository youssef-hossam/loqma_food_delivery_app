import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loqma_food_delivery_app/core/error/failure.dart';
import 'package:loqma_food_delivery_app/core/extensions/context_extensions.dart';
import 'package:loqma_food_delivery_app/core/router/routes.dart';
import 'package:loqma_food_delivery_app/core/theme/app_colors.dart';
import 'package:loqma_food_delivery_app/core/widgets/app_alert_dialog.dart';
import 'package:loqma_food_delivery_app/core/widgets/loqma_button.dart';
import 'package:loqma_food_delivery_app/features/auth/presentation/cubits/register/register_cubit.dart';
import 'package:loqma_food_delivery_app/features/auth/presentation/cubits/register/register_state.dart';
import 'package:loqma_food_delivery_app/features/auth/presentation/widgets/auth_background.dart';
import 'package:loqma_food_delivery_app/features/auth/presentation/widgets/auth_body.dart';
import 'package:loqma_food_delivery_app/features/auth/presentation/widgets/auth_header.dart';
import 'package:loqma_food_delivery_app/features/auth/presentation/widgets/auth_switch_text.dart';
import 'package:loqma_food_delivery_app/features/auth/presentation/widgets/auth_text_field.dart';
import 'package:loqma_food_delivery_app/features/auth/presentation/widgets/password_rules.dart';
import 'package:loqma_food_delivery_app/features/auth/presentation/widgets/terms_checkbox.dart';
import 'package:loqma_food_delivery_app/core/utils/app_validators.dart';
import 'package:loqma_food_delivery_app/core/widgets/app_logo_mark.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final _fullNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();
  String _password = '';

  // أخطاء جاية من السيرفر بس، والأخطاء المحلية بتيجي من الـ validators
  String? _fullNameServerError;
  String? _emailServerError;
  String? _phoneServerError;
  String? _passwordServerError;

  @override
  void dispose() {
    _fullNameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _clearServerErrors() {
    setState(() {
      _fullNameServerError = null;
      _emailServerError = null;
      _phoneServerError = null;
      _passwordServerError = null;
    });
  }

  void _submit() {
    FocusScope.of(context).unfocus(); // يقفل الكيبورد
    _clearServerErrors();
    // بيشيك على كل الـ fields والـ checkbox مع بعض
    if (!_formKey.currentState!.validate()) return;

    context.read<RegisterCubit>().register(
      name: _fullNameController.text.trim(),
      email: _emailController.text.trim(),
      phone: _phoneController.text.trim(),
      password: _passwordController.text,
    );
  }

  void _onStateChanged(BuildContext context, RegisterState state) {
    switch (state) {
      case RegisterSuccess():
        // نمسح الـ register والـ login والـ onboarding من الـ stack
        Navigator.pushNamedAndRemoveUntil(context, Routes.home, (_) => false);

      case RegisterFailure(:final failure):
        if (failure is ServerFailure) {
          // الإيميل أو الموبايل متسجلين قبل كده → الخطأ يظهر تحت الـ field نفسه
          if (failure.code == 'EMAIL_TAKEN') {
            setState(() => _emailServerError = failure.message);
            return;
          }
          if (failure.code == 'PHONE_TAKEN') {
            setState(() => _phoneServerError = failure.message);
            return;
          }
          // VALIDATION_ERROR من السيرفر → كل خطأ تحت الـ field بتاعه
          if (failure.fieldErrors.isNotEmpty) {
            setState(() {
              _fullNameServerError = failure.fieldErrors['name'];
              _emailServerError = failure.fieldErrors['email'];
              _phoneServerError = failure.fieldErrors['phone'];
              _passwordServerError = failure.fieldErrors['password'];
            });
            return;
          }
        }
        // أي خطأ تاني (مفيش نت، طلبات كتير ...) → dialog
        showFailureDialog(context, failure, onRetry: _submit);

      case RegisterInitial():
      case RegisterLoading():
        break;
    }
  }

  void _goToLogin() {
    if (Navigator.canPop(context)) {
      Navigator.pop(context);
    } else {
      Navigator.pushReplacementNamed(context, Routes.login);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterCubit, RegisterState>(
      listener: _onStateChanged,
      child: AuthBackground(
        child: Form(
          key: _formKey,
          child: AuthBody(
            children: [
              const AuthHeader(),
              SizedBox(height: 12.h),
              const AppLogoMark(),
              SizedBox(height: 16.h),
              Text(
                context.s.createYourAccount,
                style: context.text.headlineMedium,
              ),
              SizedBox(height: 6.h),
              Text(
                context.s.registerSubtitle('LOQMA50'),
                style: context.text.bodySmall,
              ),
              SizedBox(height: 20.h),
              AuthTextField(
                hint: context.s.fullName,
                icon: 'user',
                controller: _fullNameController,
                keyboardType: TextInputType.name,
                validator: (value) => AppValidators.name(context, value),
                errorText: _fullNameServerError,
                onChanged: (_) {
                  if (_fullNameServerError != null) {
                    setState(() => _fullNameServerError = null);
                  }
                },
              ),
              SizedBox(height: 12.h),
              AuthTextField(
                hint: context.s.emailHint,
                icon: 'mail',
                keyboardType: TextInputType.emailAddress,
                controller: _emailController,
                validator: (value) => AppValidators.email(context, value),
                errorText: _emailServerError,
                onChanged: (_) {
                  if (_emailServerError != null) {
                    setState(() => _emailServerError = null);
                  }
                },
              ),
              SizedBox(height: 12.h),
              AuthTextField(
                hint: context.s.phoneNumber,
                keyboardType: TextInputType.phone,
                maxLength: 11,
                controller: _phoneController,
                prefix: const _CountryCode(),
                validator: (value) => AppValidators.phone(context, value),
                errorText: _phoneServerError,
                onChanged: (_) {
                  if (_phoneServerError != null) {
                    setState(() => _phoneServerError = null);
                  }
                },
              ),
              SizedBox(height: 12.h),
              AuthTextField(
                hint: context.s.password,
                icon: 'lock',
                isPassword: true,
                textInputAction: TextInputAction.done,
                controller: _passwordController,
                validator: (value) => AppValidators.password(context, value),
                errorText: _passwordServerError,
                // عشان الكيبورد ميغطيش مؤشر قوة الباسورد اللي تحت الـ field
                scrollPadding: EdgeInsets.only(bottom: 120.h),
                onChanged: (value) {
                  setState(() {
                    _password = value;
                    _passwordServerError = null;
                  });
                },
              ),
              SizedBox(height: 20.h),
              PasswordRules(password: _password),
              SizedBox(height: 20.h),
              const TermsCheckbox(),
              SizedBox(height: 20.h),
              // الزرار بس هو اللي بيتعاد رسمه مع الـ state
              BlocBuilder<RegisterCubit, RegisterState>(
                builder: (context, state) => LoqmaButton(
                  label: context.s.createAccount,
                  isLoading: state is RegisterLoading,
                  onPressed: _submit,
                ),
              ),
            ],
            footer: AuthSwitchText(
              question: context.s.alreadyHaveAccount,
              action: context.s.logIn,
              onTap: _goToLogin,
            ),
          ),
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
