import 'package:loqma_food_delivery_app/features/restaurants/domain/entities/option_group_entity.dart';

class DishDetailsEntity {
  final String id;
  final String restaurantId;
  final String restaurantName;
  final String name;
  final String description;
  final int price;
  final String? imageUrl;
  final int? calories;
  final String? tag;
  final bool isAvailable;
  final List<OptionGroupEntity> optionGroups;

  const DishDetailsEntity({
    required this.id,
    required this.restaurantId,
    required this.restaurantName,
    required this.name,
    required this.description,
    required this.price,
    this.imageUrl,
    this.calories,
    this.tag,
    required this.isAvailable,
    required this.optionGroups,
  });
}
