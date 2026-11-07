// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ApiResponseModel<T> {

 bool get success; T get data;
/// Create a copy of ApiResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApiResponseModelCopyWith<T, ApiResponseModel<T>> get copyWith => _$ApiResponseModelCopyWithImpl<T, ApiResponseModel<T>>(this as ApiResponseModel<T>, _$identity);

  /// Serializes this ApiResponseModel to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT);


@override
bool operator ==(Object other) {
  final _this = this as ApiResponseModel<T>;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiResponseModel<T>&&(identical(other.success, _this.success) || other.success == _this.success)&&const DeepCollectionEquality().equals(other.data, _this.data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ApiResponseModel<T>;
  return Object.hash(runtimeType,_this.success,const DeepCollectionEquality().hash(_this.data));
}

@override
String toString() {
  final _this = this as ApiResponseModel<T>;
  return 'ApiResponseModel<$T>(success: ${_this.success}, data: ${_this.data})';
}


}

/// @nodoc
abstract mixin class $ApiResponseModelCopyWith<T,$Res>  {
  factory $ApiResponseModelCopyWith(ApiResponseModel<T> value, $Res Function(ApiResponseModel<T>) _then) = _$ApiResponseModelCopyWithImpl;
@useResult
$Res call({
 bool success, T data
});




}
/// @nodoc
class _$ApiResponseModelCopyWithImpl<T,$Res>
    implements $ApiResponseModelCopyWith<T, $Res> {
  _$ApiResponseModelCopyWithImpl(this._self, this._then);

  final ApiResponseModel<T> _self;
  final $Res Function(ApiResponseModel<T>) _then;

/// Create a copy of ApiResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = freezed,}) {
  return _then(ApiResponseModel.ApiResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}

}


/// Adds pattern-matching-related methods to [ApiResponseModel].
extension ApiResponseModelPatterns<T> on ApiResponseModel<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ApiResponseModel<T> value)?  ApiResponse,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ApiResponseModel() when ApiResponse != null:
return ApiResponse(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ApiResponseModel<T> value)  ApiResponse,}){
final _that = this;
switch (_that) {
case _ApiResponseModel():
return ApiResponse(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ApiResponseModel<T> value)?  ApiResponse,}){
final _that = this;
switch (_that) {
case _ApiResponseModel() when ApiResponse != null:
return ApiResponse(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( bool success,  T data)?  ApiResponse,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ApiResponseModel() when ApiResponse != null:
return ApiResponse(_that.success,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( bool success,  T data)  ApiResponse,}) {final _that = this;
switch (_that) {
case _ApiResponseModel():
return ApiResponse(_that.success,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( bool success,  T data)?  ApiResponse,}) {final _that = this;
switch (_that) {
case _ApiResponseModel() when ApiResponse != null:
return ApiResponse(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)

class _ApiResponseModel<T> implements ApiResponseModel<T> {
   _ApiResponseModel({required this.success, required this.data});
  factory _ApiResponseModel.fromJson(Map<String, dynamic> json,T Function(Object?) fromJsonT) => _$ApiResponseModelFromJson(json,fromJsonT);

@override final  bool success;
@override final  T data;

/// Create a copy of ApiResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApiResponseModelCopyWith<T, _ApiResponseModel<T>> get copyWith => __$ApiResponseModelCopyWithImpl<T, _ApiResponseModel<T>>(this, _$identity);

@override
Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
  return _$ApiResponseModelToJson<T>(this, toJsonT);
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApiResponseModel<T>&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,success,const DeepCollectionEquality().hash(data));
}

@override
String toString() {
    return 'ApiResponseModel<$T>.ApiResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$ApiResponseModelCopyWith<T,$Res> implements $ApiResponseModelCopyWith<T, $Res> {
  factory _$ApiResponseModelCopyWith(_ApiResponseModel<T> value, $Res Function(_ApiResponseModel<T>) _then) = __$ApiResponseModelCopyWithImpl;
@override @useResult
$Res call({
 bool success, T data
});




}
/// @nodoc
class __$ApiResponseModelCopyWithImpl<T,$Res>
    implements _$ApiResponseModelCopyWith<T, $Res> {
  __$ApiResponseModelCopyWithImpl(this._self, this._then);

  final _ApiResponseModel<T> _self;
  final $Res Function(_ApiResponseModel<T>) _then;

/// Create a copy of ApiResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = freezed,}) {
  return _then(_ApiResponseModel<T>(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

// dart format on
