// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'option_group_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OptionGroupModel {

 String get id; String get name; bool get isRequired; int get minSelect; int get maxSelect; List<OptionModel> get options;
/// Create a copy of OptionGroupModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OptionGroupModelCopyWith<OptionGroupModel> get copyWith => _$OptionGroupModelCopyWithImpl<OptionGroupModel>(this as OptionGroupModel, _$identity);

  /// Serializes this OptionGroupModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as OptionGroupModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OptionGroupModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.isRequired, _this.isRequired) || other.isRequired == _this.isRequired)&&(identical(other.minSelect, _this.minSelect) || other.minSelect == _this.minSelect)&&(identical(other.maxSelect, _this.maxSelect) || other.maxSelect == _this.maxSelect)&&const DeepCollectionEquality().equals(other.options, _this.options));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as OptionGroupModel;
  return Object.hash(runtimeType,_this.id,_this.name,_this.isRequired,_this.minSelect,_this.maxSelect,const DeepCollectionEquality().hash(_this.options));
}

@override
String toString() {
  final _this = this as OptionGroupModel;
  return 'OptionGroupModel(id: ${_this.id}, name: ${_this.name}, isRequired: ${_this.isRequired}, minSelect: ${_this.minSelect}, maxSelect: ${_this.maxSelect}, options: ${_this.options})';
}


}

/// @nodoc
abstract mixin class $OptionGroupModelCopyWith<$Res>  {
  factory $OptionGroupModelCopyWith(OptionGroupModel value, $Res Function(OptionGroupModel) _then) = _$OptionGroupModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, bool isRequired, int minSelect, int maxSelect, List<OptionModel> options
});




}
/// @nodoc
class _$OptionGroupModelCopyWithImpl<$Res>
    implements $OptionGroupModelCopyWith<$Res> {
  _$OptionGroupModelCopyWithImpl(this._self, this._then);

  final OptionGroupModel _self;
  final $Res Function(OptionGroupModel) _then;

/// Create a copy of OptionGroupModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? isRequired = null,Object? minSelect = null,Object? maxSelect = null,Object? options = null,}) {
  return _then(OptionGroupModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,isRequired: null == isRequired ? _self.isRequired : isRequired // ignore: cast_nullable_to_non_nullable
as bool,minSelect: null == minSelect ? _self.minSelect : minSelect // ignore: cast_nullable_to_non_nullable
as int,maxSelect: null == maxSelect ? _self.maxSelect : maxSelect // ignore: cast_nullable_to_non_nullable
as int,options: null == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [OptionGroupModel].
extension OptionGroupModelPatterns on OptionGroupModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OptionGroupModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OptionGroupModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OptionGroupModel value)  $default,){
final _that = this;
switch (_that) {
case _OptionGroupModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OptionGroupModel value)?  $default,){
final _that = this;
switch (_that) {
case _OptionGroupModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  bool isRequired,  int minSelect,  int maxSelect,  List<OptionModel> options)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OptionGroupModel() when $default != null:
return $default(_that.id,_that.name,_that.isRequired,_that.minSelect,_that.maxSelect,_that.options);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  bool isRequired,  int minSelect,  int maxSelect,  List<OptionModel> options)  $default,) {final _that = this;
switch (_that) {
case _OptionGroupModel():
return $default(_that.id,_that.name,_that.isRequired,_that.minSelect,_that.maxSelect,_that.options);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  bool isRequired,  int minSelect,  int maxSelect,  List<OptionModel> options)?  $default,) {final _that = this;
switch (_that) {
case _OptionGroupModel() when $default != null:
return $default(_that.id,_that.name,_that.isRequired,_that.minSelect,_that.maxSelect,_that.options);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OptionGroupModel implements OptionGroupModel {
  const _OptionGroupModel({required this.id, required this.name, required this.isRequired, required this.minSelect, required this.maxSelect, required  List<OptionModel> options}): _options = options;
  factory _OptionGroupModel.fromJson(Map<String, dynamic> json) => _$OptionGroupModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  bool isRequired;
@override final  int minSelect;
@override final  int maxSelect;
 final  List<OptionModel> _options;
@override List<OptionModel> get options {
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_options);
}


/// Create a copy of OptionGroupModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OptionGroupModelCopyWith<_OptionGroupModel> get copyWith => __$OptionGroupModelCopyWithImpl<_OptionGroupModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OptionGroupModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _OptionGroupModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.isRequired, isRequired) || other.isRequired == isRequired)&&(identical(other.minSelect, minSelect) || other.minSelect == minSelect)&&(identical(other.maxSelect, maxSelect) || other.maxSelect == maxSelect)&&const DeepCollectionEquality().equals(other.options, _options));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,isRequired,minSelect,maxSelect,const DeepCollectionEquality().hash(_options));
}

@override
String toString() {
    return 'OptionGroupModel(id: $id, name: $name, isRequired: $isRequired, minSelect: $minSelect, maxSelect: $maxSelect, options: $options)';
}


}

/// @nodoc
abstract mixin class _$OptionGroupModelCopyWith<$Res> implements $OptionGroupModelCopyWith<$Res> {
  factory _$OptionGroupModelCopyWith(_OptionGroupModel value, $Res Function(_OptionGroupModel) _then) = __$OptionGroupModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, bool isRequired, int minSelect, int maxSelect, List<OptionModel> options
});




}
/// @nodoc
class __$OptionGroupModelCopyWithImpl<$Res>
    implements _$OptionGroupModelCopyWith<$Res> {
  __$OptionGroupModelCopyWithImpl(this._self, this._then);

  final _OptionGroupModel _self;
  final $Res Function(_OptionGroupModel) _then;

/// Create a copy of OptionGroupModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? isRequired = null,Object? minSelect = null,Object? maxSelect = null,Object? options = null,}) {
  return _then(_OptionGroupModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,isRequired: null == isRequired ? _self.isRequired : isRequired // ignore: cast_nullable_to_non_nullable
as bool,minSelect: null == minSelect ? _self.minSelect : minSelect // ignore: cast_nullable_to_non_nullable
as int,maxSelect: null == maxSelect ? _self.maxSelect : maxSelect // ignore: cast_nullable_to_non_nullable
as int,options: null == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,
  ));
}


}

// dart format on
