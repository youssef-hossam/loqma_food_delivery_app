import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:loqma_food_delivery_app/core/models/delivery_time_model.dart';
import 'package:loqma_food_delivery_app/core/models/id_name_model.dart';

part 'restaurant_model.freezed.dart';
part 'restaurant_model.g.dart';

@freezed
abstract class RestaurantModel with _$RestaurantModel {
  const factory RestaurantModel({
    required String id,
    required String slug,
    required String name,
    required String cuisine,
    required String? logoUrl,
    required String? coverUrl,
    required double rating,
    required int ratingCount,
    required int deliveryFee,
    required int? freeDeliveryAbove,
    required int minOrder,
    required DeliveryTimeModel deliveryTime,
    required bool isOpen,
    required bool isFeatured,
    required double? distanceKm,
    required bool isFavorite,
    required List<IdNameModel> categories,
    String? description,
    String? address,
  }) = _RestaurantModel;

  factory RestaurantModel.fromJson(Map<String, dynamic> json) =>
      _$RestaurantModelFromJson(json);
}
