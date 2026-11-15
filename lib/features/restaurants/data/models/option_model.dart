import 'package:freezed_annotation/freezed_annotation.dart';

part 'option_model.freezed.dart';
part 'option_model.g.dart';

@freezed
abstract class OptionModel with _$OptionModel {
  const factory OptionModel({
    required String id,
    required String name,
    required int price,
    required bool isDefault,
  }) = _OptionModel;

  factory OptionModel.fromJson(Map<String, dynamic> json) =>
      _$OptionModelFromJson(json);
}
