import 'package:loqma_food_delivery_app/features/restaurants/data/models/dish_details_model.dart';
import 'package:loqma_food_delivery_app/features/restaurants/data/models/option_group_model.dart';
import 'package:loqma_food_delivery_app/features/restaurants/data/models/option_model.dart';
import 'package:loqma_food_delivery_app/features/restaurants/domain/entities/dish_details_entity.dart';
import 'package:loqma_food_delivery_app/features/restaurants/domain/entities/option_entity.dart';
import 'package:loqma_food_delivery_app/features/restaurants/domain/entities/option_group_entity.dart';

extension OptionModelMapper on OptionModel {
  OptionEntity toEntity() =>
      OptionEntity(id: id, name: name, price: price, isDefault: isDefault);
}

extension OptionGroupModelMapper on OptionGroupModel {
  OptionGroupEntity toEntity() => OptionGroupEntity(
    id: id,
    name: name,
    isRequired: isRequired,
    minSelect: minSelect,
    maxSelect: maxSelect,
    options: options.map((o) => o.toEntity()).toList(),
  );
}

extension DishDetailsModelMapper on DishDetailsModel {
  DishDetailsEntity toEntity() => DishDetailsEntity(
    id: id,
    restaurantId: restaurantId,
    restaurantName: restaurant.name,
    name: name,
    description: description,
    price: price,
    imageUrl: imageUrl,
    calories: calories,
    tag: tag,
    isAvailable: isAvailable,
    optionGroups: optionGroups.map((g) => g.toEntity()).toList(),
  );
}
