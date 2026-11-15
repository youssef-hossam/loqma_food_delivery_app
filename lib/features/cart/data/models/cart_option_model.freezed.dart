// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_option_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CartOptionModel {

 String get id; String get name; int get price;
/// Create a copy of CartOptionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartOptionModelCopyWith<CartOptionModel> get copyWith => _$CartOptionModelCopyWithImpl<CartOptionModel>(this as CartOptionModel, _$identity);

  /// Serializes this CartOptionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CartOptionModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartOptionModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.price, _this.price) || other.price == _this.price));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CartOptionModel;
  return Object.hash(runtimeType,_this.id,_this.name,_this.price);
}

@override
String toString() {
  final _this = this as CartOptionModel;
  return 'CartOptionModel(id: ${_this.id}, name: ${_this.name}, price: ${_this.price})';
}


}

/// @nodoc
abstract mixin class $CartOptionModelCopyWith<$Res>  {
  factory $CartOptionModelCopyWith(CartOptionModel value, $Res Function(CartOptionModel) _then) = _$CartOptionModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, int price
});




}
/// @nodoc
class _$CartOptionModelCopyWithImpl<$Res>
    implements $CartOptionModelCopyWith<$Res> {
  _$CartOptionModelCopyWithImpl(this._self, this._then);

  final CartOptionModel _self;
  final $Res Function(CartOptionModel) _then;

/// Create a copy of CartOptionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? price = null,}) {
  return _then(CartOptionModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CartOptionModel].
extension CartOptionModelPatterns on CartOptionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartOptionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartOptionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartOptionModel value)  $default,){
final _that = this;
switch (_that) {
case _CartOptionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartOptionModel value)?  $default,){
final _that = this;
switch (_that) {
case _CartOptionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  int price)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartOptionModel() when $default != null:
return $default(_that.id,_that.name,_that.price);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  int price)  $default,) {final _that = this;
switch (_that) {
case _CartOptionModel():
return $default(_that.id,_that.name,_that.price);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  int price)?  $default,) {final _that = this;
switch (_that) {
case _CartOptionModel() when $default != null:
return $default(_that.id,_that.name,_that.price);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CartOptionModel implements CartOptionModel {
  const _CartOptionModel({required this.id, required this.name, required this.price});
  factory _CartOptionModel.fromJson(Map<String, dynamic> json) => _$CartOptionModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  int price;

/// Create a copy of CartOptionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartOptionModelCopyWith<_CartOptionModel> get copyWith => __$CartOptionModelCopyWithImpl<_CartOptionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CartOptionModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartOptionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.price, price) || other.price == price));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,price);
}

@override
String toString() {
    return 'CartOptionModel(id: $id, name: $name, price: $price)';
}


}

/// @nodoc
abstract mixin class _$CartOptionModelCopyWith<$Res> implements $CartOptionModelCopyWith<$Res> {
  factory _$CartOptionModelCopyWith(_CartOptionModel value, $Res Function(_CartOptionModel) _then) = __$CartOptionModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, int price
});




}
/// @nodoc
class __$CartOptionModelCopyWithImpl<$Res>
    implements _$CartOptionModelCopyWith<$Res> {
  __$CartOptionModelCopyWithImpl(this._self, this._then);

  final _CartOptionModel _self;
  final $Res Function(_CartOptionModel) _then;

/// Create a copy of CartOptionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? price = null,}) {
  return _then(_CartOptionModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
