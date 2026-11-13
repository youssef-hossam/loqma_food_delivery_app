import 'package:loqma_food_delivery_app/features/restaurants/domain/entities/category_entity.dart';
import 'package:loqma_food_delivery_app/features/restaurants/data/models/category_model.dart';

extension CategoryModelMapper on CategoryModel {
  CategoryEntity toEntity() =>
      CategoryEntity(id: id, name: name, imageUrl: imageUrl);
}
