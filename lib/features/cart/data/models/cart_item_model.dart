import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:loqma_food_delivery_app/features/cart/data/models/cart_menu_item_model.dart';
import 'package:loqma_food_delivery_app/features/cart/data/models/cart_option_model.dart';

part 'cart_item_model.freezed.dart';
part 'cart_item_model.g.dart';

@freezed
abstract class CartItemModel with _$CartItemModel {
  const factory CartItemModel({
    required String id,
    required CartMenuItemModel menuItem,
    required List<CartOptionModel> options,
    required int quantity,
    required String? notes,
    required int unitPrice,
    required int total,
  }) = _CartItemModel;

  factory CartItemModel.fromJson(Map<String, dynamic> json) =>
      _$CartItemModelFromJson(json);
}
