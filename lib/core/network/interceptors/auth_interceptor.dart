import 'package:dio/dio.dart';
import 'package:loqma_food_delivery_app/core/constants/api_constants.dart';
import 'package:loqma_food_delivery_app/core/constants/cache_constants.dart';
import 'package:loqma_food_delivery_app/core/utils/cache/cache_helper.dart';

class AuthInterceptor extends QueuedInterceptor {
  AuthInterceptor({this.onSessionExpired});

  // Called when the session can't be recovered (e.g. go back to the login screen)
  final void Function()? onSessionExpired;

  // A separate Dio with no interceptors, used for the refresh call and the retry.
  // Using the main Dio here would block: this interceptor is a queue, so the
  // refresh request would wait behind the request that is waiting for it.
  final _refreshDio = Dio(BaseOptions(baseUrl: ApiConstants.baseUrl));
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await CacheHelper.getSecureData(
      key: CacheConstants.accessToken,
    );
    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    handler.next(options);
  }
  // @override
  // Future<void> onRequest(
  //   RequestOptions options,
  //   RequestInterceptorHandler handler,
  // ) async {
  //   final token = await CacheHelper.getSecureData(
  //     key: CacheConstants.accessToken,
  //   );
  //   // No token yet (user not logged in) -> send the request without the header
  //   if (token != null) {
  //     options.headers['Authorization'] = 'Bearer $token';
  //   }
  //   handler.next(options);
  // }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    // Step 1: is this error because the access token expired?
    // If not, it's not our job -> pass the error on to the app.
    final data = err.response?.data;
    final isExpired =
        err.response?.statusCode == 401 &&
        data is Map &&
        data['error']?['code'] == 'TOKEN_EXPIRED';
    if (!isExpired) return handler.next(err);

    // Step 2: did a previous request in the queue already refresh the token?
    // If the saved token differs from the one this request used -> just retry.
    final usedToken = err.requestOptions.headers['Authorization'];
    final currentToken = await CacheHelper.getSecureData(
      key: CacheConstants.accessToken,
    );
    if (currentToken != null && usedToken != 'Bearer $currentToken') {
      return _retry(err.requestOptions, currentToken, handler);
    }

    // Step 3: read the refresh token. Missing -> no session, give up.
    final refreshToken = await CacheHelper.getSecureData(
      key: CacheConstants.refreshToken,
    );
    if (refreshToken == null) {
      await _endSession();
      return handler.next(err);
    }

    // Step 4: ask the server for a new token pair and save both.
    // The old refresh token can't be used again after this (rotation).
    final String newAccessToken;
    try {
      final res = await _refreshDio.post(
        '/auth/refresh',
        data: {'refreshToken': refreshToken},
      );
      final tokens = res.data['data']['tokens'];
      newAccessToken = tokens['accessToken'];
      await CacheHelper.setSecureData(
        key: CacheConstants.accessToken,
        value: newAccessToken,
      );
      await CacheHelper.setSecureData(
        key: CacheConstants.refreshToken,
        value: tokens['refreshToken'],
      );
    } on DioException catch (e) {
      // Server rejected the refresh token (INVALID_REFRESH_TOKEN / REFRESH_TOKEN_REUSED)
      // -> the session is over, clear tokens.
      // Other errors (no internet, timeout) -> keep the tokens, the user stays logged in.
      if (e.response?.statusCode == 401) await _endSession();
      return handler.next(err);
    }

    // Step 5: resend the original request with the new access token.
    return _retry(err.requestOptions, newAccessToken, handler);
  }

  // Resends a request with a new access token.
  // resolve() gives the app the new response as if nothing went wrong.
  // If the retry itself fails, that error goes to the app as is.
  Future<void> _retry(
    RequestOptions options,
    String accessToken,
    ErrorInterceptorHandler handler,
  ) async {
    options.headers['Authorization'] = 'Bearer $accessToken';
    try {
      final response = await _refreshDio.fetch(options);
      handler.resolve(response);
    } on DioException catch (e) {
      handler.next(e);
    }
  }

  // The session can't be recovered -> remove both tokens and tell the app
  Future<void> _endSession() async {
    await CacheHelper.deleteSecureData(key: CacheConstants.accessToken);
    await CacheHelper.deleteSecureData(key: CacheConstants.refreshToken);
    onSessionExpired?.call();
  }
}
