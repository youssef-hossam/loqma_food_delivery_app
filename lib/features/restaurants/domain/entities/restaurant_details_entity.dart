import 'package:loqma_food_delivery_app/features/restaurants/domain/entities/menu_section_entity.dart';
import 'package:loqma_food_delivery_app/features/restaurants/domain/entities/restaurant_entity.dart';

class RestaurantDetailsEntity {
  final RestaurantEntity restaurant;
  final List<MenuSectionEntity> menu;

  const RestaurantDetailsEntity({required this.restaurant, required this.menu});
}
