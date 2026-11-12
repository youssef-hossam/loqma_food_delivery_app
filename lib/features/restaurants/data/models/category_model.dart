import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_model.g.dart';
part 'category_model.freezed.dart';

@freezed
abstract class CategoryModel with _$CategoryModel {
  factory CategoryModel({
    required String id,
    required String slug,
    required String name,
    required String? imageUrl,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}

//  {
//                 "id": "556d81f3-8804-43b6-a411-56df343a10b4",
//                 "slug": "burgers",
//                 "name": "Burgers",
//                 "imageUrl": "http://localhost:3000/static/images/burger.jpg"
//             },
