import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_menu_item_model.freezed.dart';
part 'cart_menu_item_model.g.dart';

@freezed
abstract class CartMenuItemModel with _$CartMenuItemModel {
  const factory CartMenuItemModel({
    required String id,
    required String name,
    required String? imageUrl,
    required int price,
    required bool isAvailable,
  }) = _CartMenuItemModel;

  factory CartMenuItemModel.fromJson(Map<String, dynamic> json) =>
      _$CartMenuItemModelFromJson(json);
}
