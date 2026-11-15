import 'package:json_annotation/json_annotation.dart';

part 'add_cart_item_body.g.dart';

@JsonSerializable(createFactory: false, includeIfNull: false)
class AddCartItemBody {
  final String menuItemId;
  final int quantity;
  final List<String> optionIds;
  final String? notes;

  const AddCartItemBody({
    required this.menuItemId,
    required this.quantity,
    required this.optionIds,
    this.notes,
  });

  Map<String, dynamic> toJson() => _$AddCartItemBodyToJson(this);
}
