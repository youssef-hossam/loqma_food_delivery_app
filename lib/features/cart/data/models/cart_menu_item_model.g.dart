// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_menu_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CartMenuItemModel _$CartMenuItemModelFromJson(Map<String, dynamic> json) =>
    _CartMenuItemModel(
      id: json['id'] as String,
      name: json['name'] as String,
      imageUrl: json['imageUrl'] as String?,
      price: (json['price'] as num).toInt(),
      isAvailable: json['isAvailable'] as bool,
    );

Map<String, dynamic> _$CartMenuItemModelToJson(_CartMenuItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imageUrl': instance.imageUrl,
      'price': instance.price,
      'isAvailable': instance.isAvailable,
    };
