// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'option_group_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OptionGroupModel _$OptionGroupModelFromJson(Map<String, dynamic> json) =>
    _OptionGroupModel(
      id: json['id'] as String,
      name: json['name'] as String,
      isRequired: json['isRequired'] as bool,
      minSelect: (json['minSelect'] as num).toInt(),
      maxSelect: (json['maxSelect'] as num).toInt(),
      options: (json['options'] as List<dynamic>)
          .map((e) => OptionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OptionGroupModelToJson(_OptionGroupModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'isRequired': instance.isRequired,
      'minSelect': instance.minSelect,
      'maxSelect': instance.maxSelect,
      'options': instance.options,
    };
