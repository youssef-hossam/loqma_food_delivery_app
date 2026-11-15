import 'package:json_annotation/json_annotation.dart';

part 'update_cart_item_body.g.dart';

@JsonSerializable(createFactory: false)
class UpdateCartItemBody {
  final int quantity;

  const UpdateCartItemBody({required this.quantity});

  Map<String, dynamic> toJson() => _$UpdateCartItemBodyToJson(this);
}
