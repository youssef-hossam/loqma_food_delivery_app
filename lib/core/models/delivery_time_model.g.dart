// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_time_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DeliveryTimeModel _$DeliveryTimeModelFromJson(Map<String, dynamic> json) =>
    _DeliveryTimeModel(
      min: (json['min'] as num).toInt(),
      max: (json['max'] as num).toInt(),
    );

Map<String, dynamic> _$DeliveryTimeModelToJson(_DeliveryTimeModel instance) =>
    <String, dynamic>{'min': instance.min, 'max': instance.max};
