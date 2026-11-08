import 'package:dio/dio.dart';
import 'package:loqma_food_delivery_app/core/constants/cache_constants.dart';
import 'package:loqma_food_delivery_app/core/localization/locale_controller.dart';
import 'package:loqma_food_delivery_app/core/utils/cache/cache_helper.dart';

/// بيبعت لغة التطبيق مع كل request في الـ `Accept-Language` header.
/// الباك إند بيستخدمه عشان يرجّع رسايل الأخطاء وأسامي الأكل بنفس اللغة.
class LanguageInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers['Accept-Language'] = _currentLanguage();
    handler.next(options);
  }

  /// بنقراها مع كل request (مش مرة واحدة)، عشان لو المستخدم غيّر اللغة
  /// الـ request اللي بعدها يتبعت باللغة الجديدة على طول.
  String _currentLanguage() {
    // 1. اللغة اللي المستخدم اختارها من التطبيق
    final saved = CacheHelper.getString(key: CacheConstants.languageCode);
    if (saved == 'ar' || saved == 'en') return saved!;
    // 2. لو مختارش → لغة الجهاز (نفس منطق LocaleController)
    return LocaleController.deviceLocale().languageCode;
  }
}
