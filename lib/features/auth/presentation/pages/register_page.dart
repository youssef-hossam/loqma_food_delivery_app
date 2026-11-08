import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loqma_food_delivery_app/core/error/failure.dart';
import 'package:loqma_food_delivery_app/core/extensions/context_extensions.dart';
import 'package:loqma_food_delivery_app/core/router/routes.dart';
import 'package:loqma_food_delivery_app/core/theme/app_colors.dart';
import 'package:loqma_food_delivery_app/core/widgets/app_alert_dialog.dart';
import 'package:loqma_food_delivery_app/core/widgets/highlighted_text.dart';
import 'package:loqma_food_delivery_app/core/widgets/loqma_button.dart';
import 'package:loqma_food_delivery_app/features/auth/presentation/cubits/register/register_cubit.dart';
import 'package:loqma_food_delivery_app/features/auth/presentation/cubits/register/register_state.dart';
import 'package:loqma_food_delivery_app/features/auth/presentation/widgets/auth_background.dart';
import 'package:loqma_food_delivery_app/features/auth/presentation/widgets/auth_body.dart';
import 'package:loqma_food_delivery_app/features/auth/presentation/widgets/auth_header.dart';
import 'package:loqma_food_delivery_app/features/auth/presentation/widgets/auth_switch_text.dart';
import 'package:loqma_food_delivery_app/features/auth/presentation/widgets/auth_text_field.dart';
import 'package:loqma_food_delivery_app/features/auth/presentation/widgets/password_rules.dart';
import 'package:loqma_food_delivery_app/core/utils/app_validators.dart';
import 'package:loqma_food_delivery_app/core/widgets/app_icon.dart';
import 'package:loqma_food_delivery_app/core/widgets/app_logo_mark.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String _password = '';
  bool _acceptTerms = false;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _fullNameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? _emailServerError;
  String? _passwordServerError;
  String? _fullNameServerError;

  void _submit() {
    FocusScope.of(context).unfocus(); // يقفل الكيبورد
    setState(() {
      _emailServerError = null;
      _passwordServerError = null;
      _fullNameServerError = null;
    });
    if (!_formKey.currentState!.validate()) return;

    context.read<RegisterCubit>().register(
      email: _emailController.text.trim(),
      name: _fullNameController.text.trim(),
      phone: _phoneController.text.trim(),
      password: _passwordController.text,
    );
  }

  void _onStateChanged(BuildContext context, RegisterState state) {
    switch (state) {
      case RegisterSuccess():
        // نمسح الـ login والـ onboarding من الـ stack عشان Back ميرجعش هنا
        Navigator.pushNamedAndRemoveUntil(context, Routes.home, (_) => false);

      case RegisterFailure(:final failure):
        // VALIDATION_ERROR من السيرفر → نعرض الخطأ تحت الـ field نفسه
        if (failure is ServerFailure && failure.fieldErrors.isNotEmpty) {
          setState(() {
            _emailServerError = failure.fieldErrors['email'];
            _passwordServerError = failure.fieldErrors['password'];
            _fullNameServerError = failure.fieldErrors['name'];
          });
          return;
        }
        // أي خطأ تاني (باسورد غلط، مفيش نت ...) → dialog
        // "حاول تاني" بتظهر بس لمشاكل النت
        showFailureDialog(context, failure, onRetry: _submit);
      // case RegisterSucess():
      // case LoginSuccess():
      //   // نمسح الـ login والـ onboarding من الـ stack عشان Back ميرجعش هنا
      //   Navigator.pushNamedAndRemoveUntil(context, Routes.home, (_) => false);

      // case LoginFailure(:final failure):
      //   // VALIDATION_ERROR من السيرفر → نعرض الخطأ تحت الـ field نفسه
      //   if (failure is ServerFailure && failure.fieldErrors.isNotEmpty) {
      //     setState(() {
      //       _emailServerError = failure.fieldErrors['email'];
      //       _passwordServerError = failure.fieldErrors['password'];
      //     });
      //     return;
      //   }
      //   // أي خطأ تاني (باسورد غلط، مفيش نت ...) → dialog
      //   // "حاول تاني" بتظهر بس لمشاكل النت
      //   showFailureDialog(context, failure, onRetry: _submit);

      // case LoginInitial():
      // case LoginLoading():
      //   break;
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
              ),
              SizedBox(height: 12.h),
              AuthTextField(
                hint: context.s.emailHint,
                icon: 'mail',
                keyboardType: TextInputType.emailAddress,
                controller: _emailController,
                validator: (value) => AppValidators.email(context, value),
              ),
              SizedBox(height: 12.h),
              AuthTextField(
                hint: context.s.phoneNumber,
                keyboardType: TextInputType.phone,
                controller: _phoneController,
                prefix: const _CountryCode(),
                validator: (value) => AppValidators.phone(context, value),
              ),
              SizedBox(height: 12.h),
              AuthTextField(
                hint: context.s.password,
                icon: 'lock',
                isPassword: true,
                textInputAction: TextInputAction.done,
                controller: _passwordController,
                validator: (value) => AppValidators.password(context, value),
                // عشان الكيبورد ميغطيش مؤشر قوة الباسورد اللي تحت الـ field
                scrollPadding: EdgeInsets.only(bottom: 120.h),
                onChanged: (value) => setState(() => _password = value),
              ),
              SizedBox(height: 20.h),
              PasswordRules(password: _password),
              SizedBox(height: 20.h),
              // FormField عشان الـ checkbox يدخل في _formKey.validate() زي باقي الـ fields
              FormField<bool>(
                initialValue: _acceptTerms,
                validator: (value) =>
                    value == true ? null : context.s.validationTerms,
                builder: (field) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() => _acceptTerms = !_acceptTerms);
                          field.didChange(_acceptTerms);
                          if (field.hasError)
                            field.validate(); // يشيل الـ error أول ما يوافق
                        },
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
                                      : field.hasError
                                      ? context.loqma.danger
                                      : context.loqma.borderStrong,
                                  width: field.hasError ? 2 : 1,
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
                      if (field.hasError) ...[
                        SizedBox(height: 6.h),
                        Row(
                          children: [
                            AppIcon(
                              'alert',
                              size: 14.r,
                              color: context.loqma.danger,
                            ),
                            SizedBox(width: 6.w),
                            Expanded(
                              child: Text(
                                field.errorText!,
                                style: context.text.labelSmall?.copyWith(
                                  color: context.loqma.danger,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ],
                  );
                },
              ),
              SizedBox(height: 20.h),
              LoqmaButton(
                isLoading:
                    // context.watch<RegisterCubit>().state is RegisterLoading,
                    BlocProvider.of<RegisterCubit>(context).state
                        is RegisterLoading,
                label: context.s.createAccount,
                onPressed: () {
                  FocusScope.of(context).unfocus();
                  // بيشيك على كل الـ fields والـ checkbox مع بعض
                  if (!_formKey.currentState!.validate()) return;
                  // TODO: register
                  _submit();
                },
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
