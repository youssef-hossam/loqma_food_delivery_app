import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:loqma_food_delivery_app/core/models/id_name_model.dart';

part 'dish_model.freezed.dart';
part 'dish_model.g.dart';

@freezed
abstract class DishModel with _$DishModel {
  const factory DishModel({
    required String id,
    required String restaurantId,
    required String name,
    required String description,
    required int price,
    required String? imageUrl,
    required int? calories,
    required String? tag,
    required bool isAvailable,
    required bool isPopular,
    required bool hasOptions,
    // Only in lists like home/search, so it's optional
    IdNameModel? restaurant,
  }) = _DishModel;

  factory DishModel.fromJson(Map<String, dynamic> json) =>
      _$DishModelFromJson(json);
}
