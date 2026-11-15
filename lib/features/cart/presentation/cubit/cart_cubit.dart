import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loqma_food_delivery_app/core/error/failure.dart';
import 'package:loqma_food_delivery_app/features/cart/domain/entities/cart_entity.dart';
import 'package:loqma_food_delivery_app/features/cart/domain/usecases/add_to_cart_usecase.dart';
import 'package:loqma_food_delivery_app/features/cart/domain/usecases/get_cart_usecase.dart';
import 'package:loqma_food_delivery_app/features/cart/domain/usecases/remove_cart_item_usecase.dart';
import 'package:loqma_food_delivery_app/features/cart/domain/usecases/update_cart_item_usecase.dart';
import 'package:loqma_food_delivery_app/features/cart/presentation/cubit/cart_state.dart';

// One cubit for the whole app (provided above MaterialApp),
// so every page sees the same cart.
class CartCubit extends Cubit<CartState> {
  CartCubit({
    required this.getCartUseCase,
    required this.addToCartUseCase,
    required this.updateCartItemUseCase,
    required this.removeCartItemUseCase,
  }) : super(const CartState());

  final GetCartUseCase getCartUseCase;
  final AddToCartUseCase addToCartUseCase;
  final UpdateCartItemUseCase updateCartItemUseCase;
  final RemoveCartItemUseCase removeCartItemUseCase;

  Future<void> loadCart() => _run(getCartUseCase());

  // Returns the failure (or null on success) so the page can react,
  // like asking the user when the cart has another restaurant
  Future<Failure?> addItem({
    required String dishId,
    required int quantity,
    required List<String> optionIds,
    String? notes,
    bool replace = false,
  }) {
    return _run(
      addToCartUseCase(
        dishId: dishId,
        quantity: quantity,
        optionIds: optionIds,
        notes: notes,
        replace: replace,
      ),
    );
  }

  Future<Failure?> updateQuantity(String itemId, int quantity) {
    return _run(updateCartItemUseCase(itemId, quantity));
  }

  Future<Failure?> removeItem(String itemId) {
    return _run(removeCartItemUseCase(itemId));
  }

  // Every cart call returns the new cart, so they all end the same way
  Future<Failure?> _run(Future<Either<Failure, CartEntity>> request) async {
    emit(state.copyWith(isLoading: true));
    final result = await request;
    if (isClosed) return null;

    return result.fold(
      (failure) {
        emit(state.copyWith(isLoading: false));
        return failure;
      },
      (cart) {
        emit(CartState(cart: cart));
        return null;
      },
    );
  }
}
