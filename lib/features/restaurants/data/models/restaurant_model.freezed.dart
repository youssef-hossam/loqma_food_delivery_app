// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restaurant_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RestaurantModel {

 String get id; String get slug; String get name; String get cuisine; String? get logoUrl; String? get coverUrl; double get rating; int get ratingCount; int get deliveryFee; int? get freeDeliveryAbove; int get minOrder; DeliveryTimeModel get deliveryTime; bool get isOpen; bool get isFeatured; double? get distanceKm; bool get isFavorite; List<IdNameModel> get categories;
/// Create a copy of RestaurantModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RestaurantModelCopyWith<RestaurantModel> get copyWith => _$RestaurantModelCopyWithImpl<RestaurantModel>(this as RestaurantModel, _$identity);

  /// Serializes this RestaurantModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as RestaurantModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RestaurantModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.slug, _this.slug) || other.slug == _this.slug)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.cuisine, _this.cuisine) || other.cuisine == _this.cuisine)&&(identical(other.logoUrl, _this.logoUrl) || other.logoUrl == _this.logoUrl)&&(identical(other.coverUrl, _this.coverUrl) || other.coverUrl == _this.coverUrl)&&(identical(other.rating, _this.rating) || other.rating == _this.rating)&&(identical(other.ratingCount, _this.ratingCount) || other.ratingCount == _this.ratingCount)&&(identical(other.deliveryFee, _this.deliveryFee) || other.deliveryFee == _this.deliveryFee)&&(identical(other.freeDeliveryAbove, _this.freeDeliveryAbove) || other.freeDeliveryAbove == _this.freeDeliveryAbove)&&(identical(other.minOrder, _this.minOrder) || other.minOrder == _this.minOrder)&&(identical(other.deliveryTime, _this.deliveryTime) || other.deliveryTime == _this.deliveryTime)&&(identical(other.isOpen, _this.isOpen) || other.isOpen == _this.isOpen)&&(identical(other.isFeatured, _this.isFeatured) || other.isFeatured == _this.isFeatured)&&(identical(other.distanceKm, _this.distanceKm) || other.distanceKm == _this.distanceKm)&&(identical(other.isFavorite, _this.isFavorite) || other.isFavorite == _this.isFavorite)&&const DeepCollectionEquality().equals(other.categories, _this.categories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as RestaurantModel;
  return Object.hash(runtimeType,_this.id,_this.slug,_this.name,_this.cuisine,_this.logoUrl,_this.coverUrl,_this.rating,_this.ratingCount,_this.deliveryFee,_this.freeDeliveryAbove,_this.minOrder,_this.deliveryTime,_this.isOpen,_this.isFeatured,_this.distanceKm,_this.isFavorite,const DeepCollectionEquality().hash(_this.categories));
}

@override
String toString() {
  final _this = this as RestaurantModel;
  return 'RestaurantModel(id: ${_this.id}, slug: ${_this.slug}, name: ${_this.name}, cuisine: ${_this.cuisine}, logoUrl: ${_this.logoUrl}, coverUrl: ${_this.coverUrl}, rating: ${_this.rating}, ratingCount: ${_this.ratingCount}, deliveryFee: ${_this.deliveryFee}, freeDeliveryAbove: ${_this.freeDeliveryAbove}, minOrder: ${_this.minOrder}, deliveryTime: ${_this.deliveryTime}, isOpen: ${_this.isOpen}, isFeatured: ${_this.isFeatured}, distanceKm: ${_this.distanceKm}, isFavorite: ${_this.isFavorite}, categories: ${_this.categories})';
}


}

/// @nodoc
abstract mixin class $RestaurantModelCopyWith<$Res>  {
  factory $RestaurantModelCopyWith(RestaurantModel value, $Res Function(RestaurantModel) _then) = _$RestaurantModelCopyWithImpl;
@useResult
$Res call({
 String id, String slug, String name, String cuisine, String? logoUrl, String? coverUrl, double rating, int ratingCount, int deliveryFee, int? freeDeliveryAbove, int minOrder, DeliveryTimeModel deliveryTime, bool isOpen, bool isFeatured, double? distanceKm, bool isFavorite, List<IdNameModel> categories
});


$DeliveryTimeModelCopyWith<$Res> get deliveryTime;

}
/// @nodoc
class _$RestaurantModelCopyWithImpl<$Res>
    implements $RestaurantModelCopyWith<$Res> {
  _$RestaurantModelCopyWithImpl(this._self, this._then);

  final RestaurantModel _self;
  final $Res Function(RestaurantModel) _then;

/// Create a copy of RestaurantModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? slug = null,Object? name = null,Object? cuisine = null,Object? logoUrl = freezed,Object? coverUrl = freezed,Object? rating = null,Object? ratingCount = null,Object? deliveryFee = null,Object? freeDeliveryAbove = freezed,Object? minOrder = null,Object? deliveryTime = null,Object? isOpen = null,Object? isFeatured = null,Object? distanceKm = freezed,Object? isFavorite = null,Object? categories = null,}) {
  return _then(RestaurantModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,cuisine: null == cuisine ? _self.cuisine : cuisine // ignore: cast_nullable_to_non_nullable
as String,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,coverUrl: freezed == coverUrl ? _self.coverUrl : coverUrl // ignore: cast_nullable_to_non_nullable
as String?,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,ratingCount: null == ratingCount ? _self.ratingCount : ratingCount // ignore: cast_nullable_to_non_nullable
as int,deliveryFee: null == deliveryFee ? _self.deliveryFee : deliveryFee // ignore: cast_nullable_to_non_nullable
as int,freeDeliveryAbove: freezed == freeDeliveryAbove ? _self.freeDeliveryAbove : freeDeliveryAbove // ignore: cast_nullable_to_non_nullable
as int?,minOrder: null == minOrder ? _self.minOrder : minOrder // ignore: cast_nullable_to_non_nullable
as int,deliveryTime: null == deliveryTime ? _self.deliveryTime : deliveryTime // ignore: cast_nullable_to_non_nullable
as DeliveryTimeModel,isOpen: null == isOpen ? _self.isOpen : isOpen // ignore: cast_nullable_to_non_nullable
as bool,isFeatured: null == isFeatured ? _self.isFeatured : isFeatured // ignore: cast_nullable_to_non_nullable
as bool,distanceKm: freezed == distanceKm ? _self.distanceKm : distanceKm // ignore: cast_nullable_to_non_nullable
as double?,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<IdNameModel>,
  ));
}
/// Create a copy of RestaurantModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeliveryTimeModelCopyWith<$Res> get deliveryTime {
  
  return $DeliveryTimeModelCopyWith<$Res>(_self.deliveryTime, (value) {
    return _then(_self.copyWith(deliveryTime: value));
  });
}
}


/// Adds pattern-matching-related methods to [RestaurantModel].
extension RestaurantModelPatterns on RestaurantModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RestaurantModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RestaurantModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RestaurantModel value)  $default,){
final _that = this;
switch (_that) {
case _RestaurantModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RestaurantModel value)?  $default,){
final _that = this;
switch (_that) {
case _RestaurantModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String slug,  String name,  String cuisine,  String? logoUrl,  String? coverUrl,  double rating,  int ratingCount,  int deliveryFee,  int? freeDeliveryAbove,  int minOrder,  DeliveryTimeModel deliveryTime,  bool isOpen,  bool isFeatured,  double? distanceKm,  bool isFavorite,  List<IdNameModel> categories)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RestaurantModel() when $default != null:
return $default(_that.id,_that.slug,_that.name,_that.cuisine,_that.logoUrl,_that.coverUrl,_that.rating,_that.ratingCount,_that.deliveryFee,_that.freeDeliveryAbove,_that.minOrder,_that.deliveryTime,_that.isOpen,_that.isFeatured,_that.distanceKm,_that.isFavorite,_that.categories);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String slug,  String name,  String cuisine,  String? logoUrl,  String? coverUrl,  double rating,  int ratingCount,  int deliveryFee,  int? freeDeliveryAbove,  int minOrder,  DeliveryTimeModel deliveryTime,  bool isOpen,  bool isFeatured,  double? distanceKm,  bool isFavorite,  List<IdNameModel> categories)  $default,) {final _that = this;
switch (_that) {
case _RestaurantModel():
return $default(_that.id,_that.slug,_that.name,_that.cuisine,_that.logoUrl,_that.coverUrl,_that.rating,_that.ratingCount,_that.deliveryFee,_that.freeDeliveryAbove,_that.minOrder,_that.deliveryTime,_that.isOpen,_that.isFeatured,_that.distanceKm,_that.isFavorite,_that.categories);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String slug,  String name,  String cuisine,  String? logoUrl,  String? coverUrl,  double rating,  int ratingCount,  int deliveryFee,  int? freeDeliveryAbove,  int minOrder,  DeliveryTimeModel deliveryTime,  bool isOpen,  bool isFeatured,  double? distanceKm,  bool isFavorite,  List<IdNameModel> categories)?  $default,) {final _that = this;
switch (_that) {
case _RestaurantModel() when $default != null:
return $default(_that.id,_that.slug,_that.name,_that.cuisine,_that.logoUrl,_that.coverUrl,_that.rating,_that.ratingCount,_that.deliveryFee,_that.freeDeliveryAbove,_that.minOrder,_that.deliveryTime,_that.isOpen,_that.isFeatured,_that.distanceKm,_that.isFavorite,_that.categories);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RestaurantModel implements RestaurantModel {
  const _RestaurantModel({required this.id, required this.slug, required this.name, required this.cuisine, required this.logoUrl, required this.coverUrl, required this.rating, required this.ratingCount, required this.deliveryFee, required this.freeDeliveryAbove, required this.minOrder, required this.deliveryTime, required this.isOpen, required this.isFeatured, required this.distanceKm, required this.isFavorite, required  List<IdNameModel> categories}): _categories = categories;
  factory _RestaurantModel.fromJson(Map<String, dynamic> json) => _$RestaurantModelFromJson(json);

@override final  String id;
@override final  String slug;
@override final  String name;
@override final  String cuisine;
@override final  String? logoUrl;
@override final  String? coverUrl;
@override final  double rating;
@override final  int ratingCount;
@override final  int deliveryFee;
@override final  int? freeDeliveryAbove;
@override final  int minOrder;
@override final  DeliveryTimeModel deliveryTime;
@override final  bool isOpen;
@override final  bool isFeatured;
@override final  double? distanceKm;
@override final  bool isFavorite;
 final  List<IdNameModel> _categories;
@override List<IdNameModel> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}


/// Create a copy of RestaurantModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RestaurantModelCopyWith<_RestaurantModel> get copyWith => __$RestaurantModelCopyWithImpl<_RestaurantModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RestaurantModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RestaurantModel&&(identical(other.id, id) || other.id == id)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.name, name) || other.name == name)&&(identical(other.cuisine, cuisine) || other.cuisine == cuisine)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.coverUrl, coverUrl) || other.coverUrl == coverUrl)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.ratingCount, ratingCount) || other.ratingCount == ratingCount)&&(identical(other.deliveryFee, deliveryFee) || other.deliveryFee == deliveryFee)&&(identical(other.freeDeliveryAbove, freeDeliveryAbove) || other.freeDeliveryAbove == freeDeliveryAbove)&&(identical(other.minOrder, minOrder) || other.minOrder == minOrder)&&(identical(other.deliveryTime, deliveryTime) || other.deliveryTime == deliveryTime)&&(identical(other.isOpen, isOpen) || other.isOpen == isOpen)&&(identical(other.isFeatured, isFeatured) || other.isFeatured == isFeatured)&&(identical(other.distanceKm, distanceKm) || other.distanceKm == distanceKm)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite)&&const DeepCollectionEquality().equals(other.categories, _categories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,slug,name,cuisine,logoUrl,coverUrl,rating,ratingCount,deliveryFee,freeDeliveryAbove,minOrder,deliveryTime,isOpen,isFeatured,distanceKm,isFavorite,const DeepCollectionEquality().hash(_categories));
}

@override
String toString() {
    return 'RestaurantModel(id: $id, slug: $slug, name: $name, cuisine: $cuisine, logoUrl: $logoUrl, coverUrl: $coverUrl, rating: $rating, ratingCount: $ratingCount, deliveryFee: $deliveryFee, freeDeliveryAbove: $freeDeliveryAbove, minOrder: $minOrder, deliveryTime: $deliveryTime, isOpen: $isOpen, isFeatured: $isFeatured, distanceKm: $distanceKm, isFavorite: $isFavorite, categories: $categories)';
}


}

/// @nodoc
abstract mixin class _$RestaurantModelCopyWith<$Res> implements $RestaurantModelCopyWith<$Res> {
  factory _$RestaurantModelCopyWith(_RestaurantModel value, $Res Function(_RestaurantModel) _then) = __$RestaurantModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String slug, String name, String cuisine, String? logoUrl, String? coverUrl, double rating, int ratingCount, int deliveryFee, int? freeDeliveryAbove, int minOrder, DeliveryTimeModel deliveryTime, bool isOpen, bool isFeatured, double? distanceKm, bool isFavorite, List<IdNameModel> categories
});


@override $DeliveryTimeModelCopyWith<$Res> get deliveryTime;

}
/// @nodoc
class __$RestaurantModelCopyWithImpl<$Res>
    implements _$RestaurantModelCopyWith<$Res> {
  __$RestaurantModelCopyWithImpl(this._self, this._then);

  final _RestaurantModel _self;
  final $Res Function(_RestaurantModel) _then;

/// Create a copy of RestaurantModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? slug = null,Object? name = null,Object? cuisine = null,Object? logoUrl = freezed,Object? coverUrl = freezed,Object? rating = null,Object? ratingCount = null,Object? deliveryFee = null,Object? freeDeliveryAbove = freezed,Object? minOrder = null,Object? deliveryTime = null,Object? isOpen = null,Object? isFeatured = null,Object? distanceKm = freezed,Object? isFavorite = null,Object? categories = null,}) {
  return _then(_RestaurantModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,cuisine: null == cuisine ? _self.cuisine : cuisine // ignore: cast_nullable_to_non_nullable
as String,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,coverUrl: freezed == coverUrl ? _self.coverUrl : coverUrl // ignore: cast_nullable_to_non_nullable
as String?,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,ratingCount: null == ratingCount ? _self.ratingCount : ratingCount // ignore: cast_nullable_to_non_nullable
as int,deliveryFee: null == deliveryFee ? _self.deliveryFee : deliveryFee // ignore: cast_nullable_to_non_nullable
as int,freeDeliveryAbove: freezed == freeDeliveryAbove ? _self.freeDeliveryAbove : freeDeliveryAbove // ignore: cast_nullable_to_non_nullable
as int?,minOrder: null == minOrder ? _self.minOrder : minOrder // ignore: cast_nullable_to_non_nullable
as int,deliveryTime: null == deliveryTime ? _self.deliveryTime : deliveryTime // ignore: cast_nullable_to_non_nullable
as DeliveryTimeModel,isOpen: null == isOpen ? _self.isOpen : isOpen // ignore: cast_nullable_to_non_nullable
as bool,isFeatured: null == isFeatured ? _self.isFeatured : isFeatured // ignore: cast_nullable_to_non_nullable
as bool,distanceKm: freezed == distanceKm ? _self.distanceKm : distanceKm // ignore: cast_nullable_to_non_nullable
as double?,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<IdNameModel>,
  ));
}

/// Create a copy of RestaurantModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeliveryTimeModelCopyWith<$Res> get deliveryTime {
  
  return $DeliveryTimeModelCopyWith<$Res>(_self.deliveryTime, (value) {
    return _then(_self.copyWith(deliveryTime: value));
  });
}
}

// dart format on
