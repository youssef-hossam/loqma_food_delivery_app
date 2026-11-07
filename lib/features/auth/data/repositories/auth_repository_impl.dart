import 'package:dartz/dartz.dart';
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
    } on Exception catch (e) {
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
          phone: phone,
          locale: '',
        ),
      );
      await localDataSource.saveTokens(res.tokens);
      return Right(res.user.toEntity());
    } on Exception catch (e) {
      return left(ErrorHandler.handle(e));
    }
  }
}
