import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_option_model.freezed.dart';
part 'cart_option_model.g.dart';

@freezed
abstract class CartOptionModel with _$CartOptionModel {
  const factory CartOptionModel({
    required String id,
    required String name,
    required int price,
  }) = _CartOptionModel;

  factory CartOptionModel.fromJson(Map<String, dynamic> json) =>
      _$CartOptionModelFromJson(json);
}
