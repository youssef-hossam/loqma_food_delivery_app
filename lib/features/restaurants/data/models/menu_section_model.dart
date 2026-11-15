import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:loqma_food_delivery_app/features/restaurants/data/models/dish_model.dart';

part 'menu_section_model.g.dart';
part 'menu_section_model.freezed.dart';

@freezed
abstract class MenuSectionModel with _$MenuSectionModel {
  const factory MenuSectionModel({
    required String id,
    required String name,
    required List<DishModel> items,
  }) = _MenuSectionModel;

  factory MenuSectionModel.fromJson(Map<String, dynamic> json) =>
      _$MenuSectionModelFromJson(json);
}
