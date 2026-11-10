import 'package:dartz/dartz.dart';
import 'package:loqma_food_delivery_app/core/constants/cache_constants.dart';
import 'package:loqma_food_delivery_app/core/localization/locale_controller.dart';
import 'package:loqma_food_delivery_app/core/utils/cache/cache_helper.dart';
import 'package:loqma_food_delivery_app/core/error/error_handler.dart';
import 'package:loqma_food_delivery_app/core/error/failure.dart';
import 'package:loqma_food_delivery_app/features/auth/data/datasource/auth_local_data_source.dart';
import 'package:loqma_food_delivery_app/features/auth/data/datasource/auth_remote_data_source.dart';
import 'package:loqma_food_delivery_app/features/auth/data/models/login_request_body.dart';
import 'package:loqma_food_delivery_app/features/auth/data/models/register_request_body.dart';
import 'package:loqma_food_delivery_app/features/auth/data/models/user_model.dart';
import 'package:loqma_food_delivery_app/features/auth/domain/entities/user_entity.dart';
import 'package:loqma_food_delivery_app/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
  final AuthLocalDataSource localDataSource;

  AuthRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  @override
  Future<Either<Failure, UserEntity>> login({
    required String email,
    required String password,
  }) async {
    try {
      final res = await remoteDataSource.login(
        LoginRequestBody(email: email, password: password),
      );
      await localDataSource.saveTokens(res.tokens);
      return Right(res.user.toEntity());
    } catch (e) {
      return left(ErrorHandler.handle(e));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> register({
    required String name,
    required String email,
    required String password,
    String? phone,
  }) async {
    try {
      final res = await remoteDataSource.register(
        RegisterRequestBody(
          name: name,
          email: email,
          password: password,
          phone: _toInternationalPhone(phone),
          locale: _currentLanguage(),
        ),
      );
      await localDataSource.saveTokens(res.tokens);
      return Right(res.user.toEntity());
    } catch (e) {
      return left(ErrorHandler.handle(e));
    }
  }

  // The refresh token is what keeps the session alive (the access token can be refreshed)
  @override
  Future<bool> isLoggedIn() async {
    final refreshToken = await localDataSource.getRefreshToken();
    return refreshToken != null;
  }

  // الباك إند عايز الرقم بكود الدولة: 01140710570 → +201140710570
  String? _toInternationalPhone(String? phone) {
    if (phone == null || phone.isEmpty) return null;
    if (phone.startsWith('0')) return '+2$phone';
    return '+20$phone';
  }

  // اللغة اللي المستخدم اختارها، ولو مختارش → لغة الجهاز
  String _currentLanguage() {
    return CacheHelper.getString(key: CacheConstants.languageCode) ??
        LocaleController.deviceLocale().languageCode;
  }
}
