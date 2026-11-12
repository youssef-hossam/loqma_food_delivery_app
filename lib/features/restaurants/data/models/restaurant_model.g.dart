// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RestaurantModel _$RestaurantModelFromJson(Map<String, dynamic> json) =>
    _RestaurantModel(
      id: json['id'] as String,
      slug: json['slug'] as String,
      name: json['name'] as String,
      cuisine: json['cuisine'] as String,
      logoUrl: json['logoUrl'] as String?,
      coverUrl: json['coverUrl'] as String?,
      rating: (json['rating'] as num).toDouble(),
      ratingCount: (json['ratingCount'] as num).toInt(),
      deliveryFee: (json['deliveryFee'] as num).toInt(),
      freeDeliveryAbove: (json['freeDeliveryAbove'] as num?)?.toInt(),
      minOrder: (json['minOrder'] as num).toInt(),
      deliveryTime: DeliveryTimeModel.fromJson(
        json['deliveryTime'] as Map<String, dynamic>,
      ),
      isOpen: json['isOpen'] as bool,
      isFeatured: json['isFeatured'] as bool,
      distanceKm: (json['distanceKm'] as num?)?.toDouble(),
      isFavorite: json['isFavorite'] as bool,
      categories: (json['categories'] as List<dynamic>)
          .map((e) => IdNameModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RestaurantModelToJson(_RestaurantModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
      'name': instance.name,
      'cuisine': instance.cuisine,
      'logoUrl': instance.logoUrl,
      'coverUrl': instance.coverUrl,
      'rating': instance.rating,
      'ratingCount': instance.ratingCount,
      'deliveryFee': instance.deliveryFee,
      'freeDeliveryAbove': instance.freeDeliveryAbove,
      'minOrder': instance.minOrder,
      'deliveryTime': instance.deliveryTime,
      'isOpen': instance.isOpen,
      'isFeatured': instance.isFeatured,
      'distanceKm': instance.distanceKm,
      'isFavorite': instance.isFavorite,
      'categories': instance.categories,
    };
