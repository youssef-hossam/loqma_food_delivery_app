// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'option_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OptionModel {

 String get id; String get name; int get price; bool get isDefault;
/// Create a copy of OptionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OptionModelCopyWith<OptionModel> get copyWith => _$OptionModelCopyWithImpl<OptionModel>(this as OptionModel, _$identity);

  /// Serializes this OptionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as OptionModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OptionModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.price, _this.price) || other.price == _this.price)&&(identical(other.isDefault, _this.isDefault) || other.isDefault == _this.isDefault));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as OptionModel;
  return Object.hash(runtimeType,_this.id,_this.name,_this.price,_this.isDefault);
}

@override
String toString() {
  final _this = this as OptionModel;
  return 'OptionModel(id: ${_this.id}, name: ${_this.name}, price: ${_this.price}, isDefault: ${_this.isDefault})';
}


}

/// @nodoc
abstract mixin class $OptionModelCopyWith<$Res>  {
  factory $OptionModelCopyWith(OptionModel value, $Res Function(OptionModel) _then) = _$OptionModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, int price, bool isDefault
});




}
/// @nodoc
class _$OptionModelCopyWithImpl<$Res>
    implements $OptionModelCopyWith<$Res> {
  _$OptionModelCopyWithImpl(this._self, this._then);

  final OptionModel _self;
  final $Res Function(OptionModel) _then;

/// Create a copy of OptionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? price = null,Object? isDefault = null,}) {
  return _then(OptionModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [OptionModel].
extension OptionModelPatterns on OptionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OptionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OptionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OptionModel value)  $default,){
final _that = this;
switch (_that) {
case _OptionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OptionModel value)?  $default,){
final _that = this;
switch (_that) {
case _OptionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  int price,  bool isDefault)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OptionModel() when $default != null:
return $default(_that.id,_that.name,_that.price,_that.isDefault);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  int price,  bool isDefault)  $default,) {final _that = this;
switch (_that) {
case _OptionModel():
return $default(_that.id,_that.name,_that.price,_that.isDefault);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  int price,  bool isDefault)?  $default,) {final _that = this;
switch (_that) {
case _OptionModel() when $default != null:
return $default(_that.id,_that.name,_that.price,_that.isDefault);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OptionModel implements OptionModel {
  const _OptionModel({required this.id, required this.name, required this.price, required this.isDefault});
  factory _OptionModel.fromJson(Map<String, dynamic> json) => _$OptionModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  int price;
@override final  bool isDefault;

/// Create a copy of OptionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OptionModelCopyWith<_OptionModel> get copyWith => __$OptionModelCopyWithImpl<_OptionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OptionModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _OptionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.price, price) || other.price == price)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,price,isDefault);
}

@override
String toString() {
    return 'OptionModel(id: $id, name: $name, price: $price, isDefault: $isDefault)';
}


}

/// @nodoc
abstract mixin class _$OptionModelCopyWith<$Res> implements $OptionModelCopyWith<$Res> {
  factory _$OptionModelCopyWith(_OptionModel value, $Res Function(_OptionModel) _then) = __$OptionModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, int price, bool isDefault
});




}
/// @nodoc
class __$OptionModelCopyWithImpl<$Res>
    implements _$OptionModelCopyWith<$Res> {
  __$OptionModelCopyWithImpl(this._self, this._then);

  final _OptionModel _self;
  final $Res Function(_OptionModel) _then;

/// Create a copy of OptionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? price = null,Object? isDefault = null,}) {
  return _then(_OptionModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
