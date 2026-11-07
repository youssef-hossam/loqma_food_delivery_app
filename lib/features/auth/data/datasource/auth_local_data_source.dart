import 'package:loqma_food_delivery_app/core/constants/cache_constants.dart';
import 'package:loqma_food_delivery_app/core/utils/cache/cache_helper.dart';
import '../models/tokens_model.dart';

class AuthLocalDataSource {
  const AuthLocalDataSource();

  Future<void> saveTokens(TokensModel tokens) async {
    await CacheHelper.setSecureData(key: CacheConstants.accessToken, value: tokens.accessToken);
    await CacheHelper.setSecureData(key: CacheConstants.refreshToken, value: tokens.refreshToken);
  }

  Future<String?> getAccessToken() =>
      CacheHelper.getSecureData(key: CacheConstants.accessToken);

  Future<String?> getRefreshToken() =>
      CacheHelper.getSecureData(key: CacheConstants.refreshToken);

  Future<void> clearTokens() async {
    await CacheHelper.deleteSecureData(key: CacheConstants.accessToken);
    await CacheHelper.deleteSecureData(key: CacheConstants.refreshToken);
  }
}