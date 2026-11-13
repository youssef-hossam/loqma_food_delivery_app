import 'package:loqma_food_delivery_app/features/restaurants/domain/entities/dish_entity.dart';
import 'package:loqma_food_delivery_app/features/restaurants/data/models/dish_model.dart';

extension DishModelMapper on DishModel {
  DishEntity toEntity() => DishEntity(
    id: id,
    name: name,
    description: description,
    imageUrl: imageUrl,

    price: price,
    hasOptions: hasOptions,
    isAvailable: isAvailable,
    restaurantName: restaurant?.name,
    tag: tag,
    restaurantId: restaurantId,
  );
}
