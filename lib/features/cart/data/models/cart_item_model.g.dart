// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CartItemModel _$CartItemModelFromJson(Map<String, dynamic> json) =>
    _CartItemModel(
      id: json['id'] as String,
      menuItem: CartMenuItemModel.fromJson(
        json['menuItem'] as Map<String, dynamic>,
      ),
      options: (json['options'] as List<dynamic>)
          .map((e) => CartOptionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      quantity: (json['quantity'] as num).toInt(),
      notes: json['notes'] as String?,
      unitPrice: (json['unitPrice'] as num).toInt(),
      total: (json['total'] as num).toInt(),
    );

Map<String, dynamic> _$CartItemModelToJson(_CartItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'menuItem': instance.menuItem,
      'options': instance.options,
      'quantity': instance.quantity,
      'notes': instance.notes,
      'unitPrice': instance.unitPrice,
      'total': instance.total,
    };
