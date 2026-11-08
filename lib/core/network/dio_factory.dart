import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:loqma_food_delivery_app/core/network/interceptors/language_interceptor.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

/// Dio واحد للتطبيق كله.
/// هيتسجل كـ singleton في get_it، وكل الـ services (Retrofit) هتاخده.
class DioFactory {
  final Dio _dio;
  Dio get dio => _dio;

  DioFactory() : _dio = Dio() {
    _dio.options
      ..connectTimeout = const Duration(seconds: 20)
      ..receiveTimeout = const Duration(seconds: 20)
      ..sendTimeout = const Duration(seconds: 20);

    // الترتيب مهم: الـ interceptors اللي بتزود headers الأول، والـ logger في الآخر
    // عشان يطبع الـ request بعد ما الـ headers اتحطت.
    _dio.interceptors.add(LanguageInterceptor());
    // TODO: interceptor الـ Authorization (والـ refresh token) هيتضاف هنا

    _dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90,
        enabled: kDebugMode,
      ),
    );
  }
}
