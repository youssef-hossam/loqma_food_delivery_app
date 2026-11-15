import 'package:loqma_food_delivery_app/features/restaurants/domain/entities/restaurant_entity.dart';
import 'package:loqma_food_delivery_app/features/restaurants/data/models/restaurant_model.dart';

extension RestaurantModelMapper on RestaurantModel {
  RestaurantEntity toEntity() => RestaurantEntity(
    id: id,
    name: name,
    cuisine: cuisine,
    logoUrl: logoUrl,
    coverUrl: coverUrl,
    rating: rating,
    ratingCount: ratingCount,
    deliveryFee: deliveryFee,
    freeDeliveryAbove: freeDeliveryAbove,
    minDeliveryTime: deliveryTime.min, // ← هنا بنفرده
    maxDeliveryTime: deliveryTime.max,
    isOpen: isOpen,
    isFavorite: isFavorite,
    description: description,
    address: address,
  );
}
