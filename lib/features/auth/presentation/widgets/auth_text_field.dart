import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loqma_food_delivery_app/core/extensions/context_extensions.dart';
import 'package:loqma_food_delivery_app/core/theme/app_colors.dart';
import 'package:loqma_food_delivery_app/core/widgets/app_icon.dart';

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

  @override
  State<AuthTextField> createState() => _AuthTextFieldState();
}

class _AuthTextFieldState extends State<AuthTextField> {
  bool _hidePassword = true;

  OutlineInputBorder _border(Color color, double width) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16.r),
      borderSide: BorderSide(color: color, width: width),
    );
  }

  @override
  Widget build(BuildContext context) {
    final hasError = widget.errorText != null;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null) ...[
          Text(widget.label!, style: context.text.labelMedium?.copyWith(color: context.loqma.textPrimary)),
          SizedBox(height: 8.h),
        ],
        TextField(
          controller: widget.controller,
          onChanged: widget.onChanged,
          obscureText: widget.isPassword && _hidePassword,
          keyboardType: widget.keyboardType,
          textInputAction: widget.textInputAction,
          style: context.text.bodyLarge?.copyWith(fontSize: 16.sp),
          cursorColor: context.loqma.primary,
          decoration: InputDecoration(
            hintText: widget.hint,
            hintStyle: context.text.bodyLarge?.copyWith(fontSize: 16.sp, color: context.loqma.textTertiary),
            filled: true,
            fillColor: context.loqma.card,
            contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            prefixIcon: widget.prefix ??
                (widget.icon == null
                    ? null
                    : Padding(
                        padding: EdgeInsetsDirectional.only(start: 16.w, end: 12.w),
                        child: AppIcon(widget.icon!, size: 20.r, color: context.loqma.textTertiary),
                      )),
            prefixIconConstraints: const BoxConstraints(minWidth: 0, minHeight: 0),
            suffixIcon: widget.isPassword
                ? IconButton(
                    onPressed: () => setState(() => _hidePassword = !_hidePassword),
                    icon: Icon(
                      _hidePassword ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                      size: 20.r,
                      color: context.loqma.textTertiary,
                    ),
                  )
                : null,
            enabledBorder: _border(hasError ? context.loqma.danger : context.loqma.borderDefault, hasError ? 2 : 1),
            focusedBorder: _border(hasError ? context.loqma.danger : context.loqma.primary, 2),
          ),
        ),
        if (hasError) ...[
          SizedBox(height: 6.h),
          Row(
            children: [
              AppIcon('alert', size: 14.r, color: context.loqma.danger),
              SizedBox(width: 6.w),
              Expanded(
                child: Text(widget.errorText!, style: context.text.labelSmall?.copyWith(color: context.loqma.danger)),
              ),
            ],
          ),
        ],
      ],
    );
  }
}
