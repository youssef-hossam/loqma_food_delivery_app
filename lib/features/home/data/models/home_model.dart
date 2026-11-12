import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:loqma_food_delivery_app/features/home/data/models/banner_model.dart';
import 'package:loqma_food_delivery_app/features/restaurants/data/models/category_model.dart';
import 'package:loqma_food_delivery_app/features/restaurants/data/models/restaurant_model.dart';
import 'package:loqma_food_delivery_app/features/restaurants/data/models/dish_model.dart';

part 'home_model.freezed.dart';
part 'home_model.g.dart';

@freezed
abstract class HomeModel with _$HomeModel {
  const factory HomeModel({
    required List<BannerModel> banners,
    required List<CategoryModel> categories,
    required List<RestaurantModel> featured,
    required List<RestaurantModel> topRated,
    required List<DishModel> popularDishes,
  }) = _HomeModel;

  factory HomeModel.fromJson(Map<String, dynamic> json) =>
      _$HomeModelFromJson(json);
}
