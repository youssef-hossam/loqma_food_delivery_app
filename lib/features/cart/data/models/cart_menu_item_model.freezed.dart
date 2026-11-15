// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_menu_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CartMenuItemModel {

 String get id; String get name; String? get imageUrl; int get price; bool get isAvailable;
/// Create a copy of CartMenuItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartMenuItemModelCopyWith<CartMenuItemModel> get copyWith => _$CartMenuItemModelCopyWithImpl<CartMenuItemModel>(this as CartMenuItemModel, _$identity);

  /// Serializes this CartMenuItemModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CartMenuItemModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartMenuItemModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.imageUrl, _this.imageUrl) || other.imageUrl == _this.imageUrl)&&(identical(other.price, _this.price) || other.price == _this.price)&&(identical(other.isAvailable, _this.isAvailable) || other.isAvailable == _this.isAvailable));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CartMenuItemModel;
  return Object.hash(runtimeType,_this.id,_this.name,_this.imageUrl,_this.price,_this.isAvailable);
}

@override
String toString() {
  final _this = this as CartMenuItemModel;
  return 'CartMenuItemModel(id: ${_this.id}, name: ${_this.name}, imageUrl: ${_this.imageUrl}, price: ${_this.price}, isAvailable: ${_this.isAvailable})';
}


}

/// @nodoc
abstract mixin class $CartMenuItemModelCopyWith<$Res>  {
  factory $CartMenuItemModelCopyWith(CartMenuItemModel value, $Res Function(CartMenuItemModel) _then) = _$CartMenuItemModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? imageUrl, int price, bool isAvailable
});




}
/// @nodoc
class _$CartMenuItemModelCopyWithImpl<$Res>
    implements $CartMenuItemModelCopyWith<$Res> {
  _$CartMenuItemModelCopyWithImpl(this._self, this._then);

  final CartMenuItemModel _self;
  final $Res Function(CartMenuItemModel) _then;

/// Create a copy of CartMenuItemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? imageUrl = freezed,Object? price = null,Object? isAvailable = null,}) {
  return _then(CartMenuItemModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,isAvailable: null == isAvailable ? _self.isAvailable : isAvailable // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CartMenuItemModel].
extension CartMenuItemModelPatterns on CartMenuItemModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartMenuItemModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartMenuItemModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartMenuItemModel value)  $default,){
final _that = this;
switch (_that) {
case _CartMenuItemModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartMenuItemModel value)?  $default,){
final _that = this;
switch (_that) {
case _CartMenuItemModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? imageUrl,  int price,  bool isAvailable)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartMenuItemModel() when $default != null:
return $default(_that.id,_that.name,_that.imageUrl,_that.price,_that.isAvailable);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? imageUrl,  int price,  bool isAvailable)  $default,) {final _that = this;
switch (_that) {
case _CartMenuItemModel():
return $default(_that.id,_that.name,_that.imageUrl,_that.price,_that.isAvailable);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? imageUrl,  int price,  bool isAvailable)?  $default,) {final _that = this;
switch (_that) {
case _CartMenuItemModel() when $default != null:
return $default(_that.id,_that.name,_that.imageUrl,_that.price,_that.isAvailable);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CartMenuItemModel implements CartMenuItemModel {
  const _CartMenuItemModel({required this.id, required this.name, required this.imageUrl, required this.price, required this.isAvailable});
  factory _CartMenuItemModel.fromJson(Map<String, dynamic> json) => _$CartMenuItemModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  String? imageUrl;
@override final  int price;
@override final  bool isAvailable;

/// Create a copy of CartMenuItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartMenuItemModelCopyWith<_CartMenuItemModel> get copyWith => __$CartMenuItemModelCopyWithImpl<_CartMenuItemModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CartMenuItemModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartMenuItemModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.price, price) || other.price == price)&&(identical(other.isAvailable, isAvailable) || other.isAvailable == isAvailable));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,imageUrl,price,isAvailable);
}

@override
String toString() {
    return 'CartMenuItemModel(id: $id, name: $name, imageUrl: $imageUrl, price: $price, isAvailable: $isAvailable)';
}


}

/// @nodoc
abstract mixin class _$CartMenuItemModelCopyWith<$Res> implements $CartMenuItemModelCopyWith<$Res> {
  factory _$CartMenuItemModelCopyWith(_CartMenuItemModel value, $Res Function(_CartMenuItemModel) _then) = __$CartMenuItemModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? imageUrl, int price, bool isAvailable
});




}
/// @nodoc
class __$CartMenuItemModelCopyWithImpl<$Res>
    implements _$CartMenuItemModelCopyWith<$Res> {
  __$CartMenuItemModelCopyWithImpl(this._self, this._then);

  final _CartMenuItemModel _self;
  final $Res Function(_CartMenuItemModel) _then;

/// Create a copy of CartMenuItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? imageUrl = freezed,Object? price = null,Object? isAvailable = null,}) {
  return _then(_CartMenuItemModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,isAvailable: null == isAvailable ? _self.isAvailable : isAvailable // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
