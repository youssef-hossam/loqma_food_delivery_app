import 'package:dartz/dartz.dart';
import 'package:loqma_food_delivery_app/core/error/failure.dart';
import 'package:loqma_food_delivery_app/features/cart/domain/entities/cart_entity.dart';

abstract class CartRepository {
  Future<Either<Failure, CartEntity>> getCart();

  Future<Either<Failure, CartEntity>> addItem({
    required String dishId,
    required int quantity,
    required List<String> optionIds,
    String? notes,
    bool replace = false,
  });

  Future<Either<Failure, CartEntity>> updateQuantity(String itemId, int quantity);

  Future<Either<Failure, CartEntity>> removeItem(String itemId);
}
