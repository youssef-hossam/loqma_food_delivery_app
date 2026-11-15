import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:loqma_food_delivery_app/features/cart/data/models/cart_item_model.dart';
import 'package:loqma_food_delivery_app/features/cart/data/models/cart_restaurant_model.dart';

part 'cart_model.freezed.dart';
part 'cart_model.g.dart';

@freezed
abstract class CartModel with _$CartModel {
  const factory CartModel({
    // null when the cart is empty
    required CartRestaurantModel? restaurant,
    required List<CartItemModel> items,
    required int itemsCount,
    required int subtotal,
    required int deliveryFee,
    required int discount,
    required int total,
    required int minOrderMissing,
  }) = _CartModel;

  factory CartModel.fromJson(Map<String, dynamic> json) =>
      _$CartModelFromJson(json);
}
