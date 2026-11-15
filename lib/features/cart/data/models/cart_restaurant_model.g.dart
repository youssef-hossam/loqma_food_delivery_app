// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_restaurant_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CartRestaurantModel _$CartRestaurantModelFromJson(Map<String, dynamic> json) =>
    _CartRestaurantModel(
      id: json['id'] as String,
      name: json['name'] as String,
      logoUrl: json['logoUrl'] as String?,
      isOpen: json['isOpen'] as bool,
      deliveryTime: DeliveryTimeModel.fromJson(
        json['deliveryTime'] as Map<String, dynamic>,
      ),
      minOrder: (json['minOrder'] as num).toInt(),
      freeDeliveryAbove: (json['freeDeliveryAbove'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CartRestaurantModelToJson(
  _CartRestaurantModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'logoUrl': instance.logoUrl,
  'isOpen': instance.isOpen,
  'deliveryTime': instance.deliveryTime,
  'minOrder': instance.minOrder,
  'freeDeliveryAbove': instance.freeDeliveryAbove,
};
