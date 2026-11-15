// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restaurant_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RestaurantDetailsState {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is RestaurantDetailsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'RestaurantDetailsState()';
}


}

/// @nodoc
class $RestaurantDetailsStateCopyWith<$Res>  {
$RestaurantDetailsStateCopyWith(RestaurantDetailsState _, $Res Function(RestaurantDetailsState) __);
}


/// Adds pattern-matching-related methods to [RestaurantDetailsState].
extension RestaurantDetailsStatePatterns on RestaurantDetailsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( RestaurantDetailsInitial value)?  initial,TResult Function( RestaurantDetailsLoading value)?  loading,TResult Function( RestaurantDetailsSuccess value)?  success,TResult Function( RestaurantDetailsFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case RestaurantDetailsInitial() when initial != null:
return initial(_that);case RestaurantDetailsLoading() when loading != null:
return loading(_that);case RestaurantDetailsSuccess() when success != null:
return success(_that);case RestaurantDetailsFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( RestaurantDetailsInitial value)  initial,required TResult Function( RestaurantDetailsLoading value)  loading,required TResult Function( RestaurantDetailsSuccess value)  success,required TResult Function( RestaurantDetailsFailure value)  failure,}){
final _that = this;
switch (_that) {
case RestaurantDetailsInitial():
return initial(_that);case RestaurantDetailsLoading():
return loading(_that);case RestaurantDetailsSuccess():
return success(_that);case RestaurantDetailsFailure():
return failure(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( RestaurantDetailsInitial value)?  initial,TResult? Function( RestaurantDetailsLoading value)?  loading,TResult? Function( RestaurantDetailsSuccess value)?  success,TResult? Function( RestaurantDetailsFailure value)?  failure,}){
final _that = this;
switch (_that) {
case RestaurantDetailsInitial() when initial != null:
return initial(_that);case RestaurantDetailsLoading() when loading != null:
return loading(_that);case RestaurantDetailsSuccess() when success != null:
return success(_that);case RestaurantDetailsFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( RestaurantDetailsEntity details)?  success,TResult Function( Failure failure)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case RestaurantDetailsInitial() when initial != null:
return initial();case RestaurantDetailsLoading() when loading != null:
return loading();case RestaurantDetailsSuccess() when success != null:
return success(_that.details);case RestaurantDetailsFailure() when failure != null:
return failure(_that.failure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( RestaurantDetailsEntity details)  success,required TResult Function( Failure failure)  failure,}) {final _that = this;
switch (_that) {
case RestaurantDetailsInitial():
return initial();case RestaurantDetailsLoading():
return loading();case RestaurantDetailsSuccess():
return success(_that.details);case RestaurantDetailsFailure():
return failure(_that.failure);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( RestaurantDetailsEntity details)?  success,TResult? Function( Failure failure)?  failure,}) {final _that = this;
switch (_that) {
case RestaurantDetailsInitial() when initial != null:
return initial();case RestaurantDetailsLoading() when loading != null:
return loading();case RestaurantDetailsSuccess() when success != null:
return success(_that.details);case RestaurantDetailsFailure() when failure != null:
return failure(_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class RestaurantDetailsInitial implements RestaurantDetailsState {
  const RestaurantDetailsInitial();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is RestaurantDetailsInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'RestaurantDetailsState.initial()';
}


}




/// @nodoc


class RestaurantDetailsLoading implements RestaurantDetailsState {
  const RestaurantDetailsLoading();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is RestaurantDetailsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'RestaurantDetailsState.loading()';
}


}




/// @nodoc


class RestaurantDetailsSuccess implements RestaurantDetailsState {
  const RestaurantDetailsSuccess(this.details);
  

 final  RestaurantDetailsEntity details;

/// Create a copy of RestaurantDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RestaurantDetailsSuccessCopyWith<RestaurantDetailsSuccess> get copyWith => _$RestaurantDetailsSuccessCopyWithImpl<RestaurantDetailsSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is RestaurantDetailsSuccess&&(identical(other.details, details) || other.details == details));
}


@override
int get hashCode {
    return Object.hash(runtimeType,details);
}

@override
String toString() {
    return 'RestaurantDetailsState.success(details: $details)';
}


}

/// @nodoc
abstract mixin class $RestaurantDetailsSuccessCopyWith<$Res> implements $RestaurantDetailsStateCopyWith<$Res> {
  factory $RestaurantDetailsSuccessCopyWith(RestaurantDetailsSuccess value, $Res Function(RestaurantDetailsSuccess) _then) = _$RestaurantDetailsSuccessCopyWithImpl;
@useResult
$Res call({
 RestaurantDetailsEntity details
});




}
/// @nodoc
class _$RestaurantDetailsSuccessCopyWithImpl<$Res>
    implements $RestaurantDetailsSuccessCopyWith<$Res> {
  _$RestaurantDetailsSuccessCopyWithImpl(this._self, this._then);

  final RestaurantDetailsSuccess _self;
  final $Res Function(RestaurantDetailsSuccess) _then;

/// Create a copy of RestaurantDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? details = null,}) {
  return _then(RestaurantDetailsSuccess(
null == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as RestaurantDetailsEntity,
  ));
}


}

/// @nodoc


class RestaurantDetailsFailure implements RestaurantDetailsState {
  const RestaurantDetailsFailure(this.failure);
  

 final  Failure failure;

/// Create a copy of RestaurantDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RestaurantDetailsFailureCopyWith<RestaurantDetailsFailure> get copyWith => _$RestaurantDetailsFailureCopyWithImpl<RestaurantDetailsFailure>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is RestaurantDetailsFailure&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode {
    return Object.hash(runtimeType,failure);
}

@override
String toString() {
    return 'RestaurantDetailsState.failure(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $RestaurantDetailsFailureCopyWith<$Res> implements $RestaurantDetailsStateCopyWith<$Res> {
  factory $RestaurantDetailsFailureCopyWith(RestaurantDetailsFailure value, $Res Function(RestaurantDetailsFailure) _then) = _$RestaurantDetailsFailureCopyWithImpl;
@useResult
$Res call({
 Failure failure
});




}
/// @nodoc
class _$RestaurantDetailsFailureCopyWithImpl<$Res>
    implements $RestaurantDetailsFailureCopyWith<$Res> {
  _$RestaurantDetailsFailureCopyWithImpl(this._self, this._then);

  final RestaurantDetailsFailure _self;
  final $Res Function(RestaurantDetailsFailure) _then;

/// Create a copy of RestaurantDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(RestaurantDetailsFailure(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}


}

// dart format on
