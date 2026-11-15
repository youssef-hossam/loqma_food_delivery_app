import 'package:loqma_food_delivery_app/features/restaurants/domain/entities/dish_entity.dart';

class MenuSectionEntity {
  final String id;
  final String name;
  final List<DishEntity> items;

  const MenuSectionEntity({
    required this.id,
    required this.name,
    required this.items,
  });
}