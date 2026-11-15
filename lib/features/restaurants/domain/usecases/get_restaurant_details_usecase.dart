import 'package:dartz/dartz.dart';
import 'package:loqma_food_delivery_app/core/error/failure.dart';
import 'package:loqma_food_delivery_app/features/restaurants/domain/entities/restaurant_details_entity.dart';
import 'package:loqma_food_delivery_app/features/restaurants/domain/repositories/restaurants_repository.dart';

class GetRestaurantDetailsUseCase {
  final RestaurantsRepository repository;

  GetRestaurantDetailsUseCase({required this.repository});

  Future<Either<Failure, RestaurantDetailsEntity>> call(String id) {
    return repository.getRestaurantDetails(id);
  }
}