import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:loqma_food_delivery_app/core/models/delivery_time_model.dart';

part 'cart_restaurant_model.freezed.dart';
part 'cart_restaurant_model.g.dart';

@freezed
abstract class CartRestaurantModel with _$CartRestaurantModel {
  const factory CartRestaurantModel({
    required String id,
    required String name,
    required String? logoUrl,
    required bool isOpen,
    required DeliveryTimeModel deliveryTime,
    required int minOrder,
    required int? freeDeliveryAbove,
  }) = _CartRestaurantModel;

  factory CartRestaurantModel.fromJson(Map<String, dynamic> json) =>
      _$CartRestaurantModelFromJson(json);
}
