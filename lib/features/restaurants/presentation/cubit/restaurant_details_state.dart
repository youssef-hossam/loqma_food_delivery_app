import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:loqma_food_delivery_app/core/error/failure.dart';
import 'package:loqma_food_delivery_app/features/restaurants/domain/entities/restaurant_details_entity.dart';

part 'restaurant_details_state.freezed.dart';

@freezed
sealed class RestaurantDetailsState with _$RestaurantDetailsState {
  const factory RestaurantDetailsState.initial() = RestaurantDetailsInitial;
  const factory RestaurantDetailsState.loading() = RestaurantDetailsLoading;
  const factory RestaurantDetailsState.success(RestaurantDetailsEntity details) =
      RestaurantDetailsSuccess;
  const factory RestaurantDetailsState.failure(Failure failure) =
      RestaurantDetailsFailure;
}

