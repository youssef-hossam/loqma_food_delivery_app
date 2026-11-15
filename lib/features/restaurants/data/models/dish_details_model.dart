import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:loqma_food_delivery_app/core/models/id_name_model.dart';
import 'package:loqma_food_delivery_app/features/restaurants/data/models/option_group_model.dart';

part 'dish_details_model.freezed.dart';
part 'dish_details_model.g.dart';

@freezed
abstract class DishDetailsModel with _$DishDetailsModel {
  const factory DishDetailsModel({
    required String id,
    required String restaurantId,
    required String name,
    required String description,
    required int price,
    required String? imageUrl,
    required int? calories,
    required String? tag,
    required bool isAvailable,
    required List<OptionGroupModel> optionGroups,
    required IdNameModel restaurant,
  }) = _DishDetailsModel;

  factory DishDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$DishDetailsModelFromJson(json);
}
