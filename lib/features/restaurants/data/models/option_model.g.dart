// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'option_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OptionModel _$OptionModelFromJson(Map<String, dynamic> json) => _OptionModel(
  id: json['id'] as String,
  name: json['name'] as String,
  price: (json['price'] as num).toInt(),
  isDefault: json['isDefault'] as bool,
);

Map<String, dynamic> _$OptionModelToJson(_OptionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'isDefault': instance.isDefault,
    };
