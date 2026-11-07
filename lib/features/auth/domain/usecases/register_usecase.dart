import 'package:dartz/dartz.dart';
import 'package:loqma_food_delivery_app/core/error/failure.dart';
import 'package:loqma_food_delivery_app/features/auth/domain/entities/user_entity.dart';
import 'package:loqma_food_delivery_app/features/auth/domain/repositories/auth_repository.dart';

class RegisterUseCase {
  final AuthRepository repository;
  const RegisterUseCase(this.repository);

  Future<Either<Failure, UserEntity>> call({
    required String name,
    required String email,
    required String password,
    String? phone,
  }) {
    return repository.register(
      name: name,
      email: email,
      password: password,
      phone: phone,
    );
  }
}
