// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'menu_section_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MenuSectionModel {

 String get id; String get name; List<DishModel> get items;
/// Create a copy of MenuSectionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MenuSectionModelCopyWith<MenuSectionModel> get copyWith => _$MenuSectionModelCopyWithImpl<MenuSectionModel>(this as MenuSectionModel, _$identity);

  /// Serializes this MenuSectionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as MenuSectionModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MenuSectionModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&const DeepCollectionEquality().equals(other.items, _this.items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as MenuSectionModel;
  return Object.hash(runtimeType,_this.id,_this.name,const DeepCollectionEquality().hash(_this.items));
}

@override
String toString() {
  final _this = this as MenuSectionModel;
  return 'MenuSectionModel(id: ${_this.id}, name: ${_this.name}, items: ${_this.items})';
}


}

/// @nodoc
abstract mixin class $MenuSectionModelCopyWith<$Res>  {
  factory $MenuSectionModelCopyWith(MenuSectionModel value, $Res Function(MenuSectionModel) _then) = _$MenuSectionModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, List<DishModel> items
});




}
/// @nodoc
class _$MenuSectionModelCopyWithImpl<$Res>
    implements $MenuSectionModelCopyWith<$Res> {
  _$MenuSectionModelCopyWithImpl(this._self, this._then);

  final MenuSectionModel _self;
  final $Res Function(MenuSectionModel) _then;

/// Create a copy of MenuSectionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? items = null,}) {
  return _then(MenuSectionModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<DishModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [MenuSectionModel].
extension MenuSectionModelPatterns on MenuSectionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MenuSectionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MenuSectionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MenuSectionModel value)  $default,){
final _that = this;
switch (_that) {
case _MenuSectionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MenuSectionModel value)?  $default,){
final _that = this;
switch (_that) {
case _MenuSectionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  List<DishModel> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MenuSectionModel() when $default != null:
return $default(_that.id,_that.name,_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  List<DishModel> items)  $default,) {final _that = this;
switch (_that) {
case _MenuSectionModel():
return $default(_that.id,_that.name,_that.items);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  List<DishModel> items)?  $default,) {final _that = this;
switch (_that) {
case _MenuSectionModel() when $default != null:
return $default(_that.id,_that.name,_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MenuSectionModel implements MenuSectionModel {
  const _MenuSectionModel({required this.id, required this.name, required  List<DishModel> items}): _items = items;
  factory _MenuSectionModel.fromJson(Map<String, dynamic> json) => _$MenuSectionModelFromJson(json);

@override final  String id;
@override final  String name;
 final  List<DishModel> _items;
@override List<DishModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of MenuSectionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MenuSectionModelCopyWith<_MenuSectionModel> get copyWith => __$MenuSectionModelCopyWithImpl<_MenuSectionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MenuSectionModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MenuSectionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,const DeepCollectionEquality().hash(_items));
}

@override
String toString() {
    return 'MenuSectionModel(id: $id, name: $name, items: $items)';
}


}

/// @nodoc
abstract mixin class _$MenuSectionModelCopyWith<$Res> implements $MenuSectionModelCopyWith<$Res> {
  factory _$MenuSectionModelCopyWith(_MenuSectionModel value, $Res Function(_MenuSectionModel) _then) = __$MenuSectionModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, List<DishModel> items
});




}
/// @nodoc
class __$MenuSectionModelCopyWithImpl<$Res>
    implements _$MenuSectionModelCopyWith<$Res> {
  __$MenuSectionModelCopyWithImpl(this._self, this._then);

  final _MenuSectionModel _self;
  final $Res Function(_MenuSectionModel) _then;

/// Create a copy of MenuSectionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? items = null,}) {
  return _then(_MenuSectionModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<DishModel>,
  ));
}


}

// dart format on
