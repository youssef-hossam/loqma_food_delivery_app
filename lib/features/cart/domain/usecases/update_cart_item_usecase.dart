import 'package:dartz/dartz.dart';
import 'package:loqma_food_delivery_app/core/error/failure.dart';
import 'package:loqma_food_delivery_app/features/cart/domain/entities/cart_entity.dart';
import 'package:loqma_food_delivery_app/features/cart/domain/repositories/cart_repository.dart';

class UpdateCartItemUseCase {
  final CartRepository repository;

  UpdateCartItemUseCase({required this.repository});

  Future<Either<Failure, CartEntity>> call(String itemId, int quantity) {
    return repository.updateQuantity(itemId, quantity);
  }
}
