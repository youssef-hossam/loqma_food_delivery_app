import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:loqma_food_delivery_app/app.dart';
import 'package:loqma_food_delivery_app/core/localization/locale_controller.dart';
import 'package:loqma_food_delivery_app/core/router/app_router.dart';
import 'package:loqma_food_delivery_app/core/utils/cache/cache_helper.dart';
import 'package:loqma_food_delivery_app/features/auth/data/models/auth_response_model.dart';
import 'package:loqma_food_delivery_app/features/onboarding/data/onboarding_repository_impl.dart';

Future<void> main() async {
//   String jsonString = '''{
//     "success": true,
//     "data": {
//         "user": {
//             "id": "e042d95e-d7ba-4b00-93f6-3c8550ae834b",
//             "name": "Youssef Hadwa",
//             "email": "yous@loqma.app",
//             "phone": "+201140710571",
//             "avatarUrl": null,
//             "locale": "ar",
//             "role": "CUSTOMER",
//             "createdAt": "2026-11-07T12:49:48.340Z"
//         },
//         "tokens": {
//             "tokenType": "Bearer",
//             "accessToken": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJlMDQyZDk1ZS1kN2JhLTRiMDAtOTNmNi0zYzg1NTBhZTgzNGIiLCJlbWFpbCI6InlvdXNAbG9xbWEuYXBwIiwicm9sZSI6IkNVU1RPTUVSIiwiaWF0IjoxNzk0MDU1Nzg4LCJleHAiOjE3OTQwNTY2ODh9.g0ZowzHwF1vU4tbwKyO0utEOcOkgP0HJZZUvvFdvQ8I",
//             "accessTokenExpiresIn": 900,
//             "refreshToken": "ngnHLAWp8COSK29Fe38CbCV8Vjy18r8o90KSPTSa4xlocn4a3V9n4JUUZXn6b7r9",
//             "refreshTokenExpiresIn": 2592000
//         }
//     }
// }''';



//   final model = AuthResponseModel.fromJson(jsonDecode(jsonString)['data']);
// print(model); // هتشوف كل القيم مطبوعة
//   String response = '''
// {
//   "id":1,
//   "name":"Youssef"
// }
// ''';

  // final Map<String, dynamic> userData = jsonDecode(response);
  // userData['name'] = 'Ahmed';
  // print(
  //   userData.map((key, value) {
  //     log('$key: $value');
  //     return MapEntry(key, value);
  //   }),
  // ); // Output: Ahmed
  final binding = WidgetsFlutterBinding.ensureInitialized();

  // keep native splash until the splash page is ready
  FlutterNativeSplash.preserve(widgetsBinding: binding);

  await CacheHelper.init();

  runApp(
    LoqmaApp(
      appRouter: AppRouter(
        onboardingRepository: const OnboardingRepositoryImpl(),
      ),
      localeController: LocaleController(),
    ),
  );
}
