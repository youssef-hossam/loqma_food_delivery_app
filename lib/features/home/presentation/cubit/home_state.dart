import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:loqma_food_delivery_app/core/error/failure.dart';
import 'package:loqma_food_delivery_app/features/home/domain/entities/home_entity.dart';
part 'home_state.freezed.dart';

@freezed
sealed class HomeState with _$HomeState {
  const factory HomeState.initial() = HomeInitial;
  const factory HomeState.loading() = HomeLoading;
  const factory HomeState.success(HomeEntity home) = HomeSuccess;
  const factory HomeState.failure(Failure failure) = HomeFailure;
}
