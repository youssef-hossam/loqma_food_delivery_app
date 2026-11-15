import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:loqma_food_delivery_app/core/error/failure.dart';
import 'package:loqma_food_delivery_app/features/restaurants/domain/entities/dish_details_entity.dart';

part 'dish_details_state.freezed.dart';

@freezed
sealed class DishDetailsState with _$DishDetailsState {
  const factory DishDetailsState.initial() = DishDetailsInitial;
  const factory DishDetailsState.loading() = DishDetailsLoading;
  const factory DishDetailsState.success(DishDetailsEntity dish) =
      DishDetailsSuccess;
  const factory DishDetailsState.failure(Failure failure) = DishDetailsFailure;
}
