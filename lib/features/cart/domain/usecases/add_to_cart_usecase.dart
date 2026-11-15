import 'package:dartz/dartz.dart';
import 'package:loqma_food_delivery_app/core/error/failure.dart';
import 'package:loqma_food_delivery_app/features/cart/domain/entities/cart_entity.dart';
import 'package:loqma_food_delivery_app/features/cart/domain/repositories/cart_repository.dart';

class AddToCartUseCase {
  final CartRepository repository;

  AddToCartUseCase({required this.repository});

  Future<Either<Failure, CartEntity>> call({
    required String dishId,
    required int quantity,
    required List<String> optionIds,
    String? notes,
    bool replace = false,
  }) {
    return repository.addItem(
      dishId: dishId,
      quantity: quantity,
      optionIds: optionIds,
      notes: notes,
      replace: replace,
    );
  }
}
