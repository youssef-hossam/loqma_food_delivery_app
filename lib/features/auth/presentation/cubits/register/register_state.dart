import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:loqma_food_delivery_app/core/error/failure.dart';
import 'package:loqma_food_delivery_app/features/auth/domain/entities/user_entity.dart';

part 'register_state.freezed.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState.initial() = RegisterInitial;
  const factory RegisterState.loading() = RegisterLoading;
  const factory RegisterState.success(UserEntity user) = RegisterSuccess;
  const factory RegisterState.failure(Failure failure) = RegisterFailure;
}
