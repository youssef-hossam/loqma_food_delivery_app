// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CartModel _$CartModelFromJson(Map<String, dynamic> json) => _CartModel(
  restaurant: json['restaurant'] == null
      ? null
      : CartRestaurantModel.fromJson(
          json['restaurant'] as Map<String, dynamic>,
        ),
  items: (json['items'] as List<dynamic>)
      .map((e) => CartItemModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  itemsCount: (json['itemsCount'] as num).toInt(),
  subtotal: (json['subtotal'] as num).toInt(),
  deliveryFee: (json['deliveryFee'] as num).toInt(),
  discount: (json['discount'] as num).toInt(),
  total: (json['total'] as num).toInt(),
  minOrderMissing: (json['minOrderMissing'] as num).toInt(),
);

Map<String, dynamic> _$CartModelToJson(_CartModel instance) =>
    <String, dynamic>{
      'restaurant': instance.restaurant,
      'items': instance.items,
      'itemsCount': instance.itemsCount,
      'subtotal': instance.subtotal,
      'deliveryFee': instance.deliveryFee,
      'discount': instance.discount,
      'total': instance.total,
      'minOrderMissing': instance.minOrderMissing,
    };
