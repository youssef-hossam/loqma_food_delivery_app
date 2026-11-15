// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_restaurant_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CartRestaurantModel {

 String get id; String get name; String? get logoUrl; bool get isOpen; DeliveryTimeModel get deliveryTime; int get minOrder; int? get freeDeliveryAbove;
/// Create a copy of CartRestaurantModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartRestaurantModelCopyWith<CartRestaurantModel> get copyWith => _$CartRestaurantModelCopyWithImpl<CartRestaurantModel>(this as CartRestaurantModel, _$identity);

  /// Serializes this CartRestaurantModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CartRestaurantModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartRestaurantModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.logoUrl, _this.logoUrl) || other.logoUrl == _this.logoUrl)&&(identical(other.isOpen, _this.isOpen) || other.isOpen == _this.isOpen)&&(identical(other.deliveryTime, _this.deliveryTime) || other.deliveryTime == _this.deliveryTime)&&(identical(other.minOrder, _this.minOrder) || other.minOrder == _this.minOrder)&&(identical(other.freeDeliveryAbove, _this.freeDeliveryAbove) || other.freeDeliveryAbove == _this.freeDeliveryAbove));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CartRestaurantModel;
  return Object.hash(runtimeType,_this.id,_this.name,_this.logoUrl,_this.isOpen,_this.deliveryTime,_this.minOrder,_this.freeDeliveryAbove);
}

@override
String toString() {
  final _this = this as CartRestaurantModel;
  return 'CartRestaurantModel(id: ${_this.id}, name: ${_this.name}, logoUrl: ${_this.logoUrl}, isOpen: ${_this.isOpen}, deliveryTime: ${_this.deliveryTime}, minOrder: ${_this.minOrder}, freeDeliveryAbove: ${_this.freeDeliveryAbove})';
}


}

/// @nodoc
abstract mixin class $CartRestaurantModelCopyWith<$Res>  {
  factory $CartRestaurantModelCopyWith(CartRestaurantModel value, $Res Function(CartRestaurantModel) _then) = _$CartRestaurantModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? logoUrl, bool isOpen, DeliveryTimeModel deliveryTime, int minOrder, int? freeDeliveryAbove
});


$DeliveryTimeModelCopyWith<$Res> get deliveryTime;

}
/// @nodoc
class _$CartRestaurantModelCopyWithImpl<$Res>
    implements $CartRestaurantModelCopyWith<$Res> {
  _$CartRestaurantModelCopyWithImpl(this._self, this._then);

  final CartRestaurantModel _self;
  final $Res Function(CartRestaurantModel) _then;

/// Create a copy of CartRestaurantModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? logoUrl = freezed,Object? isOpen = null,Object? deliveryTime = null,Object? minOrder = null,Object? freeDeliveryAbove = freezed,}) {
  return _then(CartRestaurantModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,isOpen: null == isOpen ? _self.isOpen : isOpen // ignore: cast_nullable_to_non_nullable
as bool,deliveryTime: null == deliveryTime ? _self.deliveryTime : deliveryTime // ignore: cast_nullable_to_non_nullable
as DeliveryTimeModel,minOrder: null == minOrder ? _self.minOrder : minOrder // ignore: cast_nullable_to_non_nullable
as int,freeDeliveryAbove: freezed == freeDeliveryAbove ? _self.freeDeliveryAbove : freeDeliveryAbove // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of CartRestaurantModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeliveryTimeModelCopyWith<$Res> get deliveryTime {
  
  return $DeliveryTimeModelCopyWith<$Res>(_self.deliveryTime, (value) {
    return _then(_self.copyWith(deliveryTime: value));
  });
}
}


/// Adds pattern-matching-related methods to [CartRestaurantModel].
extension CartRestaurantModelPatterns on CartRestaurantModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartRestaurantModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartRestaurantModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartRestaurantModel value)  $default,){
final _that = this;
switch (_that) {
case _CartRestaurantModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartRestaurantModel value)?  $default,){
final _that = this;
switch (_that) {
case _CartRestaurantModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? logoUrl,  bool isOpen,  DeliveryTimeModel deliveryTime,  int minOrder,  int? freeDeliveryAbove)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartRestaurantModel() when $default != null:
return $default(_that.id,_that.name,_that.logoUrl,_that.isOpen,_that.deliveryTime,_that.minOrder,_that.freeDeliveryAbove);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? logoUrl,  bool isOpen,  DeliveryTimeModel deliveryTime,  int minOrder,  int? freeDeliveryAbove)  $default,) {final _that = this;
switch (_that) {
case _CartRestaurantModel():
return $default(_that.id,_that.name,_that.logoUrl,_that.isOpen,_that.deliveryTime,_that.minOrder,_that.freeDeliveryAbove);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? logoUrl,  bool isOpen,  DeliveryTimeModel deliveryTime,  int minOrder,  int? freeDeliveryAbove)?  $default,) {final _that = this;
switch (_that) {
case _CartRestaurantModel() when $default != null:
return $default(_that.id,_that.name,_that.logoUrl,_that.isOpen,_that.deliveryTime,_that.minOrder,_that.freeDeliveryAbove);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CartRestaurantModel implements CartRestaurantModel {
  const _CartRestaurantModel({required this.id, required this.name, required this.logoUrl, required this.isOpen, required this.deliveryTime, required this.minOrder, required this.freeDeliveryAbove});
  factory _CartRestaurantModel.fromJson(Map<String, dynamic> json) => _$CartRestaurantModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  String? logoUrl;
@override final  bool isOpen;
@override final  DeliveryTimeModel deliveryTime;
@override final  int minOrder;
@override final  int? freeDeliveryAbove;

/// Create a copy of CartRestaurantModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartRestaurantModelCopyWith<_CartRestaurantModel> get copyWith => __$CartRestaurantModelCopyWithImpl<_CartRestaurantModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CartRestaurantModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartRestaurantModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.isOpen, isOpen) || other.isOpen == isOpen)&&(identical(other.deliveryTime, deliveryTime) || other.deliveryTime == deliveryTime)&&(identical(other.minOrder, minOrder) || other.minOrder == minOrder)&&(identical(other.freeDeliveryAbove, freeDeliveryAbove) || other.freeDeliveryAbove == freeDeliveryAbove));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,logoUrl,isOpen,deliveryTime,minOrder,freeDeliveryAbove);
}

@override
String toString() {
    return 'CartRestaurantModel(id: $id, name: $name, logoUrl: $logoUrl, isOpen: $isOpen, deliveryTime: $deliveryTime, minOrder: $minOrder, freeDeliveryAbove: $freeDeliveryAbove)';
}


}

/// @nodoc
abstract mixin class _$CartRestaurantModelCopyWith<$Res> implements $CartRestaurantModelCopyWith<$Res> {
  factory _$CartRestaurantModelCopyWith(_CartRestaurantModel value, $Res Function(_CartRestaurantModel) _then) = __$CartRestaurantModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? logoUrl, bool isOpen, DeliveryTimeModel deliveryTime, int minOrder, int? freeDeliveryAbove
});


@override $DeliveryTimeModelCopyWith<$Res> get deliveryTime;

}
/// @nodoc
class __$CartRestaurantModelCopyWithImpl<$Res>
    implements _$CartRestaurantModelCopyWith<$Res> {
  __$CartRestaurantModelCopyWithImpl(this._self, this._then);

  final _CartRestaurantModel _self;
  final $Res Function(_CartRestaurantModel) _then;

/// Create a copy of CartRestaurantModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? logoUrl = freezed,Object? isOpen = null,Object? deliveryTime = null,Object? minOrder = null,Object? freeDeliveryAbove = freezed,}) {
  return _then(_CartRestaurantModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,isOpen: null == isOpen ? _self.isOpen : isOpen // ignore: cast_nullable_to_non_nullable
as bool,deliveryTime: null == deliveryTime ? _self.deliveryTime : deliveryTime // ignore: cast_nullable_to_non_nullable
as DeliveryTimeModel,minOrder: null == minOrder ? _self.minOrder : minOrder // ignore: cast_nullable_to_non_nullable
as int,freeDeliveryAbove: freezed == freeDeliveryAbove ? _self.freeDeliveryAbove : freeDeliveryAbove // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of CartRestaurantModel
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
