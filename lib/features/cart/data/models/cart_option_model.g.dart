// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_option_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CartOptionModel _$CartOptionModelFromJson(Map<String, dynamic> json) =>
    _CartOptionModel(
      id: json['id'] as String,
      name: json['name'] as String,
      price: (json['price'] as num).toInt(),
    );

Map<String, dynamic> _$CartOptionModelToJson(_CartOptionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
    };
