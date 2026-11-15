import 'package:loqma_food_delivery_app/features/cart/data/models/cart_item_model.dart';
import 'package:loqma_food_delivery_app/features/cart/data/models/cart_model.dart';
import 'package:loqma_food_delivery_app/features/cart/domain/entities/cart_entity.dart';
import 'package:loqma_food_delivery_app/features/cart/domain/entities/cart_item_entity.dart';

extension CartItemModelMapper on CartItemModel {
  CartItemEntity toEntity() => CartItemEntity(
    id: id,
    dishId: menuItem.id,
    name: menuItem.name,
    imageUrl: menuItem.imageUrl,
    optionNames: options.map((o) => o.name).toList(),
    quantity: quantity,
    notes: notes,
    unitPrice: unitPrice,
    total: total,
  );
}

extension CartModelMapper on CartModel {
  CartEntity toEntity() => CartEntity(
    restaurantId: restaurant?.id,
    restaurantName: restaurant?.name,
    items: items.map((i) => i.toEntity()).toList(),
    itemsCount: itemsCount,
    subtotal: subtotal,
    deliveryFee: deliveryFee,
    total: total,
    minOrderMissing: minOrderMissing,
  );
}
