import 'package:loqma_food_delivery_app/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:loqma_food_delivery_app/features/restaurants/domain/entities/dish_details_entity.dart';
import 'package:loqma_food_delivery_app/features/restaurants/domain/entities/restaurant_details_entity.dart';

abstract class RestaurantsRepository {
  Future<Either<Failure, RestaurantDetailsEntity>> getRestaurantDetails(
    String id,
  );

  Future<Either<Failure, DishDetailsEntity>> getDishDetails(String id);
}
