import 'package:loqma_food_delivery_app/features/home/domain/entities/banner_entity.dart';
import 'package:loqma_food_delivery_app/features/restaurants/domain/entities/category_entity.dart';
import 'package:loqma_food_delivery_app/features/restaurants/domain/entities/dish_entity.dart';
import 'package:loqma_food_delivery_app/features/restaurants/domain/entities/restaurant_entity.dart';

class HomeEntity {
  final List<BannerEntity> banners;
  final List<CategoryEntity> categories;
  final List<RestaurantEntity> featured;
  final List<RestaurantEntity> topRated;
  final List<DishEntity> popularDishes;

  const HomeEntity({
    required this.banners,
    required this.categories,
    required this.featured,
    required this.topRated,
    required this.popularDishes,
  });
}
