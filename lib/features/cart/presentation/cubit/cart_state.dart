import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:loqma_food_delivery_app/features/cart/domain/entities/cart_entity.dart';

part 'cart_state.freezed.dart';

// Not sealed like the other states: the cart is always on screen
// (the "View cart" bar, the cart page), so we keep the last cart
// and only flip isLoading while a change is running.
@freezed
abstract class CartState with _$CartState {
  const factory CartState({CartEntity? cart, @Default(false) bool isLoading}) =
      _CartState;
}
