// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dish_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DishModel {

 String get id; String get restaurantId; String get name; String get description; int get price; String? get imageUrl; int? get calories; String? get tag; bool get isAvailable; bool get isPopular; bool get hasOptions; IdNameModel? get restaurant;
/// Create a copy of DishModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DishModelCopyWith<DishModel> get copyWith => _$DishModelCopyWithImpl<DishModel>(this as DishModel, _$identity);

  /// Serializes this DishModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as DishModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DishModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.restaurantId, _this.restaurantId) || other.restaurantId == _this.restaurantId)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.price, _this.price) || other.price == _this.price)&&(identical(other.imageUrl, _this.imageUrl) || other.imageUrl == _this.imageUrl)&&(identical(other.calories, _this.calories) || other.calories == _this.calories)&&(identical(other.tag, _this.tag) || other.tag == _this.tag)&&(identical(other.isAvailable, _this.isAvailable) || other.isAvailable == _this.isAvailable)&&(identical(other.isPopular, _this.isPopular) || other.isPopular == _this.isPopular)&&(identical(other.hasOptions, _this.hasOptions) || other.hasOptions == _this.hasOptions)&&(identical(other.restaurant, _this.restaurant) || other.restaurant == _this.restaurant));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as DishModel;
  return Object.hash(runtimeType,_this.id,_this.restaurantId,_this.name,_this.description,_this.price,_this.imageUrl,_this.calories,_this.tag,_this.isAvailable,_this.isPopular,_this.hasOptions,_this.restaurant);
}

@override
String toString() {
  final _this = this as DishModel;
  return 'DishModel(id: ${_this.id}, restaurantId: ${_this.restaurantId}, name: ${_this.name}, description: ${_this.description}, price: ${_this.price}, imageUrl: ${_this.imageUrl}, calories: ${_this.calories}, tag: ${_this.tag}, isAvailable: ${_this.isAvailable}, isPopular: ${_this.isPopular}, hasOptions: ${_this.hasOptions}, restaurant: ${_this.restaurant})';
}


}

/// @nodoc
abstract mixin class $DishModelCopyWith<$Res>  {
  factory $DishModelCopyWith(DishModel value, $Res Function(DishModel) _then) = _$DishModelCopyWithImpl;
@useResult
$Res call({
 String id, String restaurantId, String name, String description, int price, String? imageUrl, int? calories, String? tag, bool isAvailable, bool isPopular, bool hasOptions, IdNameModel? restaurant
});


$IdNameModelCopyWith<$Res>? get restaurant;

}
/// @nodoc
class _$DishModelCopyWithImpl<$Res>
    implements $DishModelCopyWith<$Res> {
  _$DishModelCopyWithImpl(this._self, this._then);

  final DishModel _self;
  final $Res Function(DishModel) _then;

/// Create a copy of DishModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? restaurantId = null,Object? name = null,Object? description = null,Object? price = null,Object? imageUrl = freezed,Object? calories = freezed,Object? tag = freezed,Object? isAvailable = null,Object? isPopular = null,Object? hasOptions = null,Object? restaurant = freezed,}) {
  return _then(DishModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,restaurantId: null == restaurantId ? _self.restaurantId : restaurantId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,calories: freezed == calories ? _self.calories : calories // ignore: cast_nullable_to_non_nullable
as int?,tag: freezed == tag ? _self.tag : tag // ignore: cast_nullable_to_non_nullable
as String?,isAvailable: null == isAvailable ? _self.isAvailable : isAvailable // ignore: cast_nullable_to_non_nullable
as bool,isPopular: null == isPopular ? _self.isPopular : isPopular // ignore: cast_nullable_to_non_nullable
as bool,hasOptions: null == hasOptions ? _self.hasOptions : hasOptions // ignore: cast_nullable_to_non_nullable
as bool,restaurant: freezed == restaurant ? _self.restaurant : restaurant // ignore: cast_nullable_to_non_nullable
as IdNameModel?,
  ));
}
/// Create a copy of DishModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IdNameModelCopyWith<$Res>? get restaurant {
    if (_self.restaurant == null) {
    return null;
  }

  return $IdNameModelCopyWith<$Res>(_self.restaurant!, (value) {
    return _then(_self.copyWith(restaurant: value));
  });
}
}


/// Adds pattern-matching-related methods to [DishModel].
extension DishModelPatterns on DishModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DishModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DishModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DishModel value)  $default,){
final _that = this;
switch (_that) {
case _DishModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DishModel value)?  $default,){
final _that = this;
switch (_that) {
case _DishModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String restaurantId,  String name,  String description,  int price,  String? imageUrl,  int? calories,  String? tag,  bool isAvailable,  bool isPopular,  bool hasOptions,  IdNameModel? restaurant)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DishModel() when $default != null:
return $default(_that.id,_that.restaurantId,_that.name,_that.description,_that.price,_that.imageUrl,_that.calories,_that.tag,_that.isAvailable,_that.isPopular,_that.hasOptions,_that.restaurant);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String restaurantId,  String name,  String description,  int price,  String? imageUrl,  int? calories,  String? tag,  bool isAvailable,  bool isPopular,  bool hasOptions,  IdNameModel? restaurant)  $default,) {final _that = this;
switch (_that) {
case _DishModel():
return $default(_that.id,_that.restaurantId,_that.name,_that.description,_that.price,_that.imageUrl,_that.calories,_that.tag,_that.isAvailable,_that.isPopular,_that.hasOptions,_that.restaurant);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String restaurantId,  String name,  String description,  int price,  String? imageUrl,  int? calories,  String? tag,  bool isAvailable,  bool isPopular,  bool hasOptions,  IdNameModel? restaurant)?  $default,) {final _that = this;
switch (_that) {
case _DishModel() when $default != null:
return $default(_that.id,_that.restaurantId,_that.name,_that.description,_that.price,_that.imageUrl,_that.calories,_that.tag,_that.isAvailable,_that.isPopular,_that.hasOptions,_that.restaurant);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DishModel implements DishModel {
  const _DishModel({required this.id, required this.restaurantId, required this.name, required this.description, required this.price, required this.imageUrl, required this.calories, required this.tag, required this.isAvailable, required this.isPopular, required this.hasOptions, this.restaurant});
  factory _DishModel.fromJson(Map<String, dynamic> json) => _$DishModelFromJson(json);

@override final  String id;
@override final  String restaurantId;
@override final  String name;
@override final  String description;
@override final  int price;
@override final  String? imageUrl;
@override final  int? calories;
@override final  String? tag;
@override final  bool isAvailable;
@override final  bool isPopular;
@override final  bool hasOptions;
@override final  IdNameModel? restaurant;

/// Create a copy of DishModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DishModelCopyWith<_DishModel> get copyWith => __$DishModelCopyWithImpl<_DishModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DishModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DishModel&&(identical(other.id, id) || other.id == id)&&(identical(other.restaurantId, restaurantId) || other.restaurantId == restaurantId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.calories, calories) || other.calories == calories)&&(identical(other.tag, tag) || other.tag == tag)&&(identical(other.isAvailable, isAvailable) || other.isAvailable == isAvailable)&&(identical(other.isPopular, isPopular) || other.isPopular == isPopular)&&(identical(other.hasOptions, hasOptions) || other.hasOptions == hasOptions)&&(identical(other.restaurant, restaurant) || other.restaurant == restaurant));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,restaurantId,name,description,price,imageUrl,calories,tag,isAvailable,isPopular,hasOptions,restaurant);
}

@override
String toString() {
    return 'DishModel(id: $id, restaurantId: $restaurantId, name: $name, description: $description, price: $price, imageUrl: $imageUrl, calories: $calories, tag: $tag, isAvailable: $isAvailable, isPopular: $isPopular, hasOptions: $hasOptions, restaurant: $restaurant)';
}


}

/// @nodoc
abstract mixin class _$DishModelCopyWith<$Res> implements $DishModelCopyWith<$Res> {
  factory _$DishModelCopyWith(_DishModel value, $Res Function(_DishModel) _then) = __$DishModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String restaurantId, String name, String description, int price, String? imageUrl, int? calories, String? tag, bool isAvailable, bool isPopular, bool hasOptions, IdNameModel? restaurant
});


@override $IdNameModelCopyWith<$Res>? get restaurant;

}
/// @nodoc
class __$DishModelCopyWithImpl<$Res>
    implements _$DishModelCopyWith<$Res> {
  __$DishModelCopyWithImpl(this._self, this._then);

  final _DishModel _self;
  final $Res Function(_DishModel) _then;

/// Create a copy of DishModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? restaurantId = null,Object? name = null,Object? description = null,Object? price = null,Object? imageUrl = freezed,Object? calories = freezed,Object? tag = freezed,Object? isAvailable = null,Object? isPopular = null,Object? hasOptions = null,Object? restaurant = freezed,}) {
  return _then(_DishModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,restaurantId: null == restaurantId ? _self.restaurantId : restaurantId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,calories: freezed == calories ? _self.calories : calories // ignore: cast_nullable_to_non_nullable
as int?,tag: freezed == tag ? _self.tag : tag // ignore: cast_nullable_to_non_nullable
as String?,isAvailable: null == isAvailable ? _self.isAvailable : isAvailable // ignore: cast_nullable_to_non_nullable
as bool,isPopular: null == isPopular ? _self.isPopular : isPopular // ignore: cast_nullable_to_non_nullable
as bool,hasOptions: null == hasOptions ? _self.hasOptions : hasOptions // ignore: cast_nullable_to_non_nullable
as bool,restaurant: freezed == restaurant ? _self.restaurant : restaurant // ignore: cast_nullable_to_non_nullable
as IdNameModel?,
  ));
}

/// Create a copy of DishModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IdNameModelCopyWith<$Res>? get restaurant {
    if (_self.restaurant == null) {
    return null;
  }

  return $IdNameModelCopyWith<$Res>(_self.restaurant!, (value) {
    return _then(_self.copyWith(restaurant: value));
  });
}
}

// dart format on
