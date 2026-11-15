// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CartModel {

 CartRestaurantModel? get restaurant; List<CartItemModel> get items; int get itemsCount; int get subtotal; int get deliveryFee; int get discount; int get total; int get minOrderMissing;
/// Create a copy of CartModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartModelCopyWith<CartModel> get copyWith => _$CartModelCopyWithImpl<CartModel>(this as CartModel, _$identity);

  /// Serializes this CartModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CartModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartModel&&(identical(other.restaurant, _this.restaurant) || other.restaurant == _this.restaurant)&&const DeepCollectionEquality().equals(other.items, _this.items)&&(identical(other.itemsCount, _this.itemsCount) || other.itemsCount == _this.itemsCount)&&(identical(other.subtotal, _this.subtotal) || other.subtotal == _this.subtotal)&&(identical(other.deliveryFee, _this.deliveryFee) || other.deliveryFee == _this.deliveryFee)&&(identical(other.discount, _this.discount) || other.discount == _this.discount)&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.minOrderMissing, _this.minOrderMissing) || other.minOrderMissing == _this.minOrderMissing));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CartModel;
  return Object.hash(runtimeType,_this.restaurant,const DeepCollectionEquality().hash(_this.items),_this.itemsCount,_this.subtotal,_this.deliveryFee,_this.discount,_this.total,_this.minOrderMissing);
}

@override
String toString() {
  final _this = this as CartModel;
  return 'CartModel(restaurant: ${_this.restaurant}, items: ${_this.items}, itemsCount: ${_this.itemsCount}, subtotal: ${_this.subtotal}, deliveryFee: ${_this.deliveryFee}, discount: ${_this.discount}, total: ${_this.total}, minOrderMissing: ${_this.minOrderMissing})';
}


}

/// @nodoc
abstract mixin class $CartModelCopyWith<$Res>  {
  factory $CartModelCopyWith(CartModel value, $Res Function(CartModel) _then) = _$CartModelCopyWithImpl;
@useResult
$Res call({
 CartRestaurantModel? restaurant, List<CartItemModel> items, int itemsCount, int subtotal, int deliveryFee, int discount, int total, int minOrderMissing
});


$CartRestaurantModelCopyWith<$Res>? get restaurant;

}
/// @nodoc
class _$CartModelCopyWithImpl<$Res>
    implements $CartModelCopyWith<$Res> {
  _$CartModelCopyWithImpl(this._self, this._then);

  final CartModel _self;
  final $Res Function(CartModel) _then;

/// Create a copy of CartModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? restaurant = freezed,Object? items = null,Object? itemsCount = null,Object? subtotal = null,Object? deliveryFee = null,Object? discount = null,Object? total = null,Object? minOrderMissing = null,}) {
  return _then(CartModel(
restaurant: freezed == restaurant ? _self.restaurant : restaurant // ignore: cast_nullable_to_non_nullable
as CartRestaurantModel?,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<CartItemModel>,itemsCount: null == itemsCount ? _self.itemsCount : itemsCount // ignore: cast_nullable_to_non_nullable
as int,subtotal: null == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as int,deliveryFee: null == deliveryFee ? _self.deliveryFee : deliveryFee // ignore: cast_nullable_to_non_nullable
as int,discount: null == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,minOrderMissing: null == minOrderMissing ? _self.minOrderMissing : minOrderMissing // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of CartModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartRestaurantModelCopyWith<$Res>? get restaurant {
    if (_self.restaurant == null) {
    return null;
  }

  return $CartRestaurantModelCopyWith<$Res>(_self.restaurant!, (value) {
    return _then(_self.copyWith(restaurant: value));
  });
}
}


/// Adds pattern-matching-related methods to [CartModel].
extension CartModelPatterns on CartModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartModel value)  $default,){
final _that = this;
switch (_that) {
case _CartModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartModel value)?  $default,){
final _that = this;
switch (_that) {
case _CartModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CartRestaurantModel? restaurant,  List<CartItemModel> items,  int itemsCount,  int subtotal,  int deliveryFee,  int discount,  int total,  int minOrderMissing)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartModel() when $default != null:
return $default(_that.restaurant,_that.items,_that.itemsCount,_that.subtotal,_that.deliveryFee,_that.discount,_that.total,_that.minOrderMissing);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CartRestaurantModel? restaurant,  List<CartItemModel> items,  int itemsCount,  int subtotal,  int deliveryFee,  int discount,  int total,  int minOrderMissing)  $default,) {final _that = this;
switch (_that) {
case _CartModel():
return $default(_that.restaurant,_that.items,_that.itemsCount,_that.subtotal,_that.deliveryFee,_that.discount,_that.total,_that.minOrderMissing);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CartRestaurantModel? restaurant,  List<CartItemModel> items,  int itemsCount,  int subtotal,  int deliveryFee,  int discount,  int total,  int minOrderMissing)?  $default,) {final _that = this;
switch (_that) {
case _CartModel() when $default != null:
return $default(_that.restaurant,_that.items,_that.itemsCount,_that.subtotal,_that.deliveryFee,_that.discount,_that.total,_that.minOrderMissing);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CartModel implements CartModel {
  const _CartModel({required this.restaurant, required  List<CartItemModel> items, required this.itemsCount, required this.subtotal, required this.deliveryFee, required this.discount, required this.total, required this.minOrderMissing}): _items = items;
  factory _CartModel.fromJson(Map<String, dynamic> json) => _$CartModelFromJson(json);

@override final  CartRestaurantModel? restaurant;
 final  List<CartItemModel> _items;
@override List<CartItemModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  int itemsCount;
@override final  int subtotal;
@override final  int deliveryFee;
@override final  int discount;
@override final  int total;
@override final  int minOrderMissing;

/// Create a copy of CartModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartModelCopyWith<_CartModel> get copyWith => __$CartModelCopyWithImpl<_CartModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CartModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartModel&&(identical(other.restaurant, restaurant) || other.restaurant == restaurant)&&const DeepCollectionEquality().equals(other.items, _items)&&(identical(other.itemsCount, itemsCount) || other.itemsCount == itemsCount)&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal)&&(identical(other.deliveryFee, deliveryFee) || other.deliveryFee == deliveryFee)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.total, total) || other.total == total)&&(identical(other.minOrderMissing, minOrderMissing) || other.minOrderMissing == minOrderMissing));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,restaurant,const DeepCollectionEquality().hash(_items),itemsCount,subtotal,deliveryFee,discount,total,minOrderMissing);
}

@override
String toString() {
    return 'CartModel(restaurant: $restaurant, items: $items, itemsCount: $itemsCount, subtotal: $subtotal, deliveryFee: $deliveryFee, discount: $discount, total: $total, minOrderMissing: $minOrderMissing)';
}


}

/// @nodoc
abstract mixin class _$CartModelCopyWith<$Res> implements $CartModelCopyWith<$Res> {
  factory _$CartModelCopyWith(_CartModel value, $Res Function(_CartModel) _then) = __$CartModelCopyWithImpl;
@override @useResult
$Res call({
 CartRestaurantModel? restaurant, List<CartItemModel> items, int itemsCount, int subtotal, int deliveryFee, int discount, int total, int minOrderMissing
});


@override $CartRestaurantModelCopyWith<$Res>? get restaurant;

}
/// @nodoc
class __$CartModelCopyWithImpl<$Res>
    implements _$CartModelCopyWith<$Res> {
  __$CartModelCopyWithImpl(this._self, this._then);

  final _CartModel _self;
  final $Res Function(_CartModel) _then;

/// Create a copy of CartModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? restaurant = freezed,Object? items = null,Object? itemsCount = null,Object? subtotal = null,Object? deliveryFee = null,Object? discount = null,Object? total = null,Object? minOrderMissing = null,}) {
  return _then(_CartModel(
restaurant: freezed == restaurant ? _self.restaurant : restaurant // ignore: cast_nullable_to_non_nullable
as CartRestaurantModel?,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<CartItemModel>,itemsCount: null == itemsCount ? _self.itemsCount : itemsCount // ignore: cast_nullable_to_non_nullable
as int,subtotal: null == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as int,deliveryFee: null == deliveryFee ? _self.deliveryFee : deliveryFee // ignore: cast_nullable_to_non_nullable
as int,discount: null == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,minOrderMissing: null == minOrderMissing ? _self.minOrderMissing : minOrderMissing // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of CartModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartRestaurantModelCopyWith<$Res>? get restaurant {
    if (_self.restaurant == null) {
    return null;
  }

  return $CartRestaurantModelCopyWith<$Res>(_self.restaurant!, (value) {
    return _then(_self.copyWith(restaurant: value));
  });
}
}

// dart format on
