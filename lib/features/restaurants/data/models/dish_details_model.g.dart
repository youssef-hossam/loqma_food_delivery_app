// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dish_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DishDetailsModel _$DishDetailsModelFromJson(Map<String, dynamic> json) =>
    _DishDetailsModel(
      id: json['id'] as String,
      restaurantId: json['restaurantId'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toInt(),
      imageUrl: json['imageUrl'] as String?,
      calories: (json['calories'] as num?)?.toInt(),
      tag: json['tag'] as String?,
      isAvailable: json['isAvailable'] as bool,
      optionGroups: (json['optionGroups'] as List<dynamic>)
          .map((e) => OptionGroupModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      restaurant: IdNameModel.fromJson(
        json['restaurant'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$DishDetailsModelToJson(_DishDetailsModel instance) =>
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
      'optionGroups': instance.optionGroups,
      'restaurant': instance.restaurant,
    };
