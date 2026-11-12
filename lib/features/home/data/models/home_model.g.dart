// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HomeModel _$HomeModelFromJson(Map<String, dynamic> json) => _HomeModel(
  banners: (json['banners'] as List<dynamic>)
      .map((e) => BannerModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  categories: (json['categories'] as List<dynamic>)
      .map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  featured: (json['featured'] as List<dynamic>)
      .map((e) => RestaurantModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  topRated: (json['topRated'] as List<dynamic>)
      .map((e) => RestaurantModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  popularDishes: (json['popularDishes'] as List<dynamic>)
      .map((e) => DishModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$HomeModelToJson(_HomeModel instance) =>
    <String, dynamic>{
      'banners': instance.banners,
      'categories': instance.categories,
      'featured': instance.featured,
      'topRated': instance.topRated,
      'popularDishes': instance.popularDishes,
    };
