import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:loqma_food_delivery_app/features/restaurants/data/models/option_model.dart';

part 'option_group_model.freezed.dart';
part 'option_group_model.g.dart';

@freezed
abstract class OptionGroupModel with _$OptionGroupModel {
  const factory OptionGroupModel({
    required String id,
    required String name,
    required bool isRequired,
    required int minSelect,
    required int maxSelect,
    required List<OptionModel> options,
  }) = _OptionGroupModel;

  factory OptionGroupModel.fromJson(Map<String, dynamic> json) =>
      _$OptionGroupModelFromJson(json);
}
