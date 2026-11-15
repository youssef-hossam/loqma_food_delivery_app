// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dish_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DishDetailsState {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is DishDetailsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'DishDetailsState()';
}


}

/// @nodoc
class $DishDetailsStateCopyWith<$Res>  {
$DishDetailsStateCopyWith(DishDetailsState _, $Res Function(DishDetailsState) __);
}


/// Adds pattern-matching-related methods to [DishDetailsState].
extension DishDetailsStatePatterns on DishDetailsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( DishDetailsInitial value)?  initial,TResult Function( DishDetailsLoading value)?  loading,TResult Function( DishDetailsSuccess value)?  success,TResult Function( DishDetailsFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case DishDetailsInitial() when initial != null:
return initial(_that);case DishDetailsLoading() when loading != null:
return loading(_that);case DishDetailsSuccess() when success != null:
return success(_that);case DishDetailsFailure() when failure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( DishDetailsInitial value)  initial,required TResult Function( DishDetailsLoading value)  loading,required TResult Function( DishDetailsSuccess value)  success,required TResult Function( DishDetailsFailure value)  failure,}){
final _that = this;
switch (_that) {
case DishDetailsInitial():
return initial(_that);case DishDetailsLoading():
return loading(_that);case DishDetailsSuccess():
return success(_that);case DishDetailsFailure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( DishDetailsInitial value)?  initial,TResult? Function( DishDetailsLoading value)?  loading,TResult? Function( DishDetailsSuccess value)?  success,TResult? Function( DishDetailsFailure value)?  failure,}){
final _that = this;
switch (_that) {
case DishDetailsInitial() when initial != null:
return initial(_that);case DishDetailsLoading() when loading != null:
return loading(_that);case DishDetailsSuccess() when success != null:
return success(_that);case DishDetailsFailure() when failure != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( DishDetailsEntity dish)?  success,TResult Function( Failure failure)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case DishDetailsInitial() when initial != null:
return initial();case DishDetailsLoading() when loading != null:
return loading();case DishDetailsSuccess() when success != null:
return success(_that.dish);case DishDetailsFailure() when failure != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( DishDetailsEntity dish)  success,required TResult Function( Failure failure)  failure,}) {final _that = this;
switch (_that) {
case DishDetailsInitial():
return initial();case DishDetailsLoading():
return loading();case DishDetailsSuccess():
return success(_that.dish);case DishDetailsFailure():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( DishDetailsEntity dish)?  success,TResult? Function( Failure failure)?  failure,}) {final _that = this;
switch (_that) {
case DishDetailsInitial() when initial != null:
return initial();case DishDetailsLoading() when loading != null:
return loading();case DishDetailsSuccess() when success != null:
return success(_that.dish);case DishDetailsFailure() when failure != null:
return failure(_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class DishDetailsInitial implements DishDetailsState {
  const DishDetailsInitial();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is DishDetailsInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'DishDetailsState.initial()';
}


}




/// @nodoc


class DishDetailsLoading implements DishDetailsState {
  const DishDetailsLoading();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is DishDetailsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'DishDetailsState.loading()';
}


}




/// @nodoc


class DishDetailsSuccess implements DishDetailsState {
  const DishDetailsSuccess(this.dish);
  

 final  DishDetailsEntity dish;

/// Create a copy of DishDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DishDetailsSuccessCopyWith<DishDetailsSuccess> get copyWith => _$DishDetailsSuccessCopyWithImpl<DishDetailsSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is DishDetailsSuccess&&(identical(other.dish, dish) || other.dish == dish));
}


@override
int get hashCode {
    return Object.hash(runtimeType,dish);
}

@override
String toString() {
    return 'DishDetailsState.success(dish: $dish)';
}


}

/// @nodoc
abstract mixin class $DishDetailsSuccessCopyWith<$Res> implements $DishDetailsStateCopyWith<$Res> {
  factory $DishDetailsSuccessCopyWith(DishDetailsSuccess value, $Res Function(DishDetailsSuccess) _then) = _$DishDetailsSuccessCopyWithImpl;
@useResult
$Res call({
 DishDetailsEntity dish
});




}
/// @nodoc
class _$DishDetailsSuccessCopyWithImpl<$Res>
    implements $DishDetailsSuccessCopyWith<$Res> {
  _$DishDetailsSuccessCopyWithImpl(this._self, this._then);

  final DishDetailsSuccess _self;
  final $Res Function(DishDetailsSuccess) _then;

/// Create a copy of DishDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? dish = null,}) {
  return _then(DishDetailsSuccess(
null == dish ? _self.dish : dish // ignore: cast_nullable_to_non_nullable
as DishDetailsEntity,
  ));
}


}

/// @nodoc


class DishDetailsFailure implements DishDetailsState {
  const DishDetailsFailure(this.failure);
  

 final  Failure failure;

/// Create a copy of DishDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DishDetailsFailureCopyWith<DishDetailsFailure> get copyWith => _$DishDetailsFailureCopyWithImpl<DishDetailsFailure>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is DishDetailsFailure&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode {
    return Object.hash(runtimeType,failure);
}

@override
String toString() {
    return 'DishDetailsState.failure(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $DishDetailsFailureCopyWith<$Res> implements $DishDetailsStateCopyWith<$Res> {
  factory $DishDetailsFailureCopyWith(DishDetailsFailure value, $Res Function(DishDetailsFailure) _then) = _$DishDetailsFailureCopyWithImpl;
@useResult
$Res call({
 Failure failure
});




}
/// @nodoc
class _$DishDetailsFailureCopyWithImpl<$Res>
    implements $DishDetailsFailureCopyWith<$Res> {
  _$DishDetailsFailureCopyWithImpl(this._self, this._then);

  final DishDetailsFailure _self;
  final $Res Function(DishDetailsFailure) _then;

/// Create a copy of DishDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(DishDetailsFailure(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}


}

// dart format on
