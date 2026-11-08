import 'package:flutter/material.dart';
import 'package:loqma_food_delivery_app/core/extensions/context_extensions.dart';

// كل الـ validators اللي بنستخدمها في الـ forms
// الشروط هنا لازم تبقى زي شروط الباك إند بالظبط
class AppValidators {
  static final _emailRegex = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');
  static final _phoneRegex = RegExp(r'^0?1[0125]\d{8}$');

  static String? required(BuildContext context, String? value) {
    if ((value ?? '').trim().isEmpty) return context.s.validationRequired;
    return null;
  }

  static String? name(BuildContext context, String? value) {
    final name = value?.trim() ?? '';
    if (name.isEmpty) return context.s.validationRequired;
    if (name.length < 2) return context.s.validationName;
    return null;
  }

  static String? email(BuildContext context, String? value) {
    final email = value?.trim() ?? '';
    if (email.isEmpty) return context.s.validationRequired;
    if (!_emailRegex.hasMatch(email)) return context.s.validationEmail;
    return null;
  }

  // الموبايل اختياري، بس لو اتكتب لازم يبقى رقم مصري صح
  static String? phone(BuildContext context, String? value) {
    final phone = value?.trim() ?? '';
    if (phone.isEmpty) return null;
    if (!_phoneRegex.hasMatch(phone)) return context.s.validationPhone;
    return null;
  }

  // 8 حروف على الأقل، وفيهم حرف ورقم
  static String? password(BuildContext context, String? value) {
    final password = value ?? '';
    if (password.isEmpty) return context.s.validationRequired;
    final isStrong = password.length >= 8 &&
        RegExp(r'[A-Za-z]').hasMatch(password) &&
        RegExp(r'\d').hasMatch(password);
    if (!isStrong) return context.s.validationPasswordWeak;
    return null;
  }
}
