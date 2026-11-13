import 'package:loqma_food_delivery_app/features/home/data/models/home_model.dart';
import 'package:loqma_food_delivery_app/features/home/domain/entities/home_entity.dart';
import 'package:loqma_food_delivery_app/features/restaurants/data/mappers/category_model_mapper.dart';
import 'package:loqma_food_delivery_app/features/restaurants/data/mappers/restaurant_model_mapper.dart';
import 'package:loqma_food_delivery_app/features/restaurants/data/mappers/dish_model_mapper.dart';
import 'package:loqma_food_delivery_app/features/home/data/mappers/banner_model_mapper.dart';

extension HomeModelMapper on HomeModel {
  HomeEntity toEntity() => HomeEntity(
    banners: banners.map((b) => b.toEntity()).toList(),
    categories: categories.map((c) => c.toEntity()).toList(),
    featured: featured.map((r) => r.toEntity()).toList(),
    topRated: topRated.map((r) => r.toEntity()).toList(),
    popularDishes: popularDishes.map((d) => d.toEntity()).toList(),
  );
}
