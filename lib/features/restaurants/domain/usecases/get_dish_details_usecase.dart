import 'package:dartz/dartz.dart';
import 'package:loqma_food_delivery_app/core/error/failure.dart';
import 'package:loqma_food_delivery_app/features/restaurants/domain/entities/dish_details_entity.dart';
import 'package:loqma_food_delivery_app/features/restaurants/domain/repositories/restaurants_repository.dart';

class GetDishDetailsUseCase {
  final RestaurantsRepository repository;

  GetDishDetailsUseCase({required this.repository});

  Future<Either<Failure, DishDetailsEntity>> call(String id) {
    return repository.getDishDetails(id);
  }
}
