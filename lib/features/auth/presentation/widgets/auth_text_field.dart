import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loqma_food_delivery_app/core/extensions/context_extensions.dart';
import 'package:loqma_food_delivery_app/core/theme/app_colors.dart';
import 'package:loqma_food_delivery_app/core/widgets/app_icon.dart';
import 'package:loqma_food_delivery_app/core/widgets/field_error_text.dart';

class AuthTextField extends StatefulWidget {
  const AuthTextField({
    super.key,
    required this.hint,
    this.label,
    this.icon,
    this.prefix,
    this.isPassword = false,
    this.errorText,
    this.keyboardType,
    this.textInputAction = TextInputAction.next,
    this.controller,
    this.onChanged,
    this.validator,
    this.onFieldSubmitted,
    this.scrollPadding = const EdgeInsets.all(20),
    this.maxLength,
  });

  final String hint;
  final String? label;
  final String? icon;
  final Widget? prefix;
  final bool isPassword;
  final String? errorText;
  final TextInputType? keyboardType;
  final TextInputAction textInputAction;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;

  /// validation محلية (بتشتغل مع Form.validate()).
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onFieldSubmitted;

  // المسافة اللي الشاشة بتعمل scroll لها تحت الـ field لما الكيبورد يفتح
  final EdgeInsets scrollPadding;
  final int? maxLength;

  @override
  State<AuthTextField> createState() => _AuthTextFieldState();
}

class _AuthTextFieldState extends State<AuthTextField> {
  bool _hidePassword = true;

  final _fieldKey = GlobalKey<FormFieldState<String>>();
  final _focusNode = FocusNode();

  // بيبقى true أول ما المستخدم يسيب الـ field مرة
  bool _touched = false;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(_onFocusChange);
  }

  void _onFocusChange() {
    if (!mounted) return;
    if (!_focusNode.hasFocus) {
      _touched = true;
      _fieldKey.currentState?.validate();
    }
    setState(() {}); // عشان لون الأيقونة يتغير
  }

  @override
  void dispose() {
    _focusNode
      ..removeListener(_onFocusChange)
      ..dispose();
    super.dispose();
  }

  OutlineInputBorder _border(Color color, double width) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16.r),
      borderSide: BorderSide(color: color, width: width),
    );
  }

  @override
  Widget build(BuildContext context) {
    final iconColor = _focusNode.hasFocus
        ? context.loqma.primary
        : context.loqma.textTertiary;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null) ...[
          Text(
            widget.label!,
            style: context.text.labelMedium?.copyWith(
              color: context.loqma.textPrimary,
            ),
          ),
          SizedBox(height: 8.h),
        ],
        TextFormField(
          key: _fieldKey,
          controller: widget.controller,
          focusNode: _focusNode,
          scrollPadding: widget.scrollPadding,
          validator: widget.validator,
          forceErrorText: widget.errorText, // خطأ جاي من السيرفر
          onChanged: (value) {
            final field = _fieldKey.currentState;
            if (_touched || (field?.hasError ?? false)) field?.validate();
            widget.onChanged?.call(value);
          },
          maxLength: widget.maxLength,
          buildCounter: (
            context, {
            required currentLength,
            required isFocused,
            maxLength,
          }) => null,
          maxLengthEnforcement: MaxLengthEnforcement.enforced,
          onFieldSubmitted: widget.onFieldSubmitted,
          obscureText: widget.isPassword && _hidePassword,
          keyboardType: widget.keyboardType,
          textInputAction: widget.textInputAction,
          style: context.text.bodyLarge?.copyWith(fontSize: 16.sp),
          cursorColor: context.loqma.primary,
          errorBuilder: (context, errorText) => FieldErrorText(errorText),
          decoration: InputDecoration(
            hintText: widget.hint,
            hintStyle: context.text.bodyLarge?.copyWith(
              fontSize: 16.sp,
              color: context.loqma.textTertiary,
            ),
            filled: true,
            fillColor: context.loqma.card,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 16.h,
            ),
            prefixIcon:
                widget.prefix ??
                (widget.icon == null
                    ? null
                    : Padding(
                        padding: EdgeInsetsDirectional.only(
                          start: 16.w,
                          end: 12.w,
                        ),
                        child: AppIcon(
                          widget.icon!,
                          size: 20.r,
                          color: iconColor,
                        ),
                      )),
            prefixIconConstraints: const BoxConstraints(
              minWidth: 0,
              minHeight: 0,
            ),
            suffixIcon: widget.isPassword
                ? IconButton(
                    onPressed: () =>
                        setState(() => _hidePassword = !_hidePassword),
                    icon: Icon(
                      _hidePassword
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      size: 20.r,
                      color: iconColor,
                    ),
                  )
                : null,
            enabledBorder: _border(context.loqma.borderDefault, 1),
            focusedBorder: _border(context.loqma.primary, 2),
            errorBorder: _border(context.loqma.danger, 2),
            focusedErrorBorder: _border(context.loqma.danger, 2),
          ),
        ),
      ],
    );
  }
}
