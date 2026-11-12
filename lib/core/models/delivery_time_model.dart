import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_time_model.freezed.dart';
part 'delivery_time_model.g.dart';

@freezed
abstract class DeliveryTimeModel with _$DeliveryTimeModel {
  const factory DeliveryTimeModel({required int min, required int max}) =
      _DeliveryTimeModel;

  factory DeliveryTimeModel.fromJson(Map<String, dynamic> json) =>
      _$DeliveryTimeModelFromJson(json);
}
