import 'package:loqma_food_delivery_app/features/cart/domain/entities/cart_item_entity.dart';

class CartEntity {
  final String? restaurantId;
  final String? restaurantName;
  final List<CartItemEntity> items;
  final int itemsCount;
  final int subtotal;
  final int deliveryFee;
  final int total;
  final int minOrderMissing;

  const CartEntity({
    this.restaurantId,
    this.restaurantName,
    required this.items,
    required this.itemsCount,
    required this.subtotal,
    required this.deliveryFee,
    required this.total,
    required this.minOrderMissing,
  });

  bool get isEmpty => items.isEmpty;
}
