// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dish_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DishModel _$DishModelFromJson(Map<String, dynamic> json) => _DishModel(
  id: json['id'] as String,
  restaurantId: json['restaurantId'] as String,
  name: json['name'] as String,
  description: json['description'] as String,
  price: (json['price'] as num).toInt(),
  imageUrl: json['imageUrl'] as String?,
  calories: (json['calories'] as num?)?.toInt(),
  tag: json['tag'] as String?,
  isAvailable: json['isAvailable'] as bool,
  isPopular: json['isPopular'] as bool,
  hasOptions: json['hasOptions'] as bool,
  restaurant: json['restaurant'] == null
      ? null
      : IdNameModel.fromJson(json['restaurant'] as Map<String, dynamic>),
);

Map<String, dynamic> _$DishModelToJson(_DishModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'restaurantId': instance.restaurantId,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'imageUrl': instance.imageUrl,
      'calories': instance.calories,
      'tag': instance.tag,
      'isAvailable': instance.isAvailable,
      'isPopular': instance.isPopular,
      'hasOptions': instance.hasOptions,
      'restaurant': instance.restaurant,
    };
