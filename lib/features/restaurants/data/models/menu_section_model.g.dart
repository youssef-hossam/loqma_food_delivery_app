// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_section_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MenuSectionModel _$MenuSectionModelFromJson(Map<String, dynamic> json) =>
    _MenuSectionModel(
      id: json['id'] as String,
      name: json['name'] as String,
      items: (json['items'] as List<dynamic>)
          .map((e) => DishModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MenuSectionModelToJson(_MenuSectionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'items': instance.items,
    };
