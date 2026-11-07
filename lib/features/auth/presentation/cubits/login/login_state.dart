import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:loqma_food_delivery_app/core/error/failure.dart';
import 'package:loqma_food_delivery_app/features/auth/domain/entities/user_entity.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = LoginInitial;
  const factory LoginState.loading() = LoginLoading;
  const factory LoginState.success(UserEntity user) = LoginSuccess;
  const factory LoginState.failure(Failure failure) = LoginFailure;
}
