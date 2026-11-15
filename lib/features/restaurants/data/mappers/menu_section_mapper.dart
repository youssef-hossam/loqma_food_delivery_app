import 'package:loqma_food_delivery_app/features/restaurants/data/mappers/dish_model_mapper.dart';
import 'package:loqma_food_delivery_app/features/restaurants/data/models/menu_section_model.dart';
import 'package:loqma_food_delivery_app/features/restaurants/domain/entities/menu_section_entity.dart';

extension MenuSectionModelMapper on MenuSectionModel {
  MenuSectionEntity toEntity() => MenuSectionEntity(
    id: id,
    name: name,
    items: items.map((d) => d.toEntity()).toList(),
  );
}
