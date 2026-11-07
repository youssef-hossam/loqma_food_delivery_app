// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tokens_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TokensModel {

 String get tokenType; String get accessToken; int get accessTokenExpiresIn; String get refreshToken; int get refreshTokenExpiresIn;
/// Create a copy of TokensModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TokensModelCopyWith<TokensModel> get copyWith => _$TokensModelCopyWithImpl<TokensModel>(this as TokensModel, _$identity);

  /// Serializes this TokensModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as TokensModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TokensModel&&(identical(other.tokenType, _this.tokenType) || other.tokenType == _this.tokenType)&&(identical(other.accessToken, _this.accessToken) || other.accessToken == _this.accessToken)&&(identical(other.accessTokenExpiresIn, _this.accessTokenExpiresIn) || other.accessTokenExpiresIn == _this.accessTokenExpiresIn)&&(identical(other.refreshToken, _this.refreshToken) || other.refreshToken == _this.refreshToken)&&(identical(other.refreshTokenExpiresIn, _this.refreshTokenExpiresIn) || other.refreshTokenExpiresIn == _this.refreshTokenExpiresIn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as TokensModel;
  return Object.hash(runtimeType,_this.tokenType,_this.accessToken,_this.accessTokenExpiresIn,_this.refreshToken,_this.refreshTokenExpiresIn);
}

@override
String toString() {
  final _this = this as TokensModel;
  return 'TokensModel(tokenType: ${_this.tokenType}, accessToken: ${_this.accessToken}, accessTokenExpiresIn: ${_this.accessTokenExpiresIn}, refreshToken: ${_this.refreshToken}, refreshTokenExpiresIn: ${_this.refreshTokenExpiresIn})';
}


}

/// @nodoc
abstract mixin class $TokensModelCopyWith<$Res>  {
  factory $TokensModelCopyWith(TokensModel value, $Res Function(TokensModel) _then) = _$TokensModelCopyWithImpl;
@useResult
$Res call({
 String tokenType, String accessToken, int accessTokenExpiresIn, String refreshToken, int refreshTokenExpiresIn
});




}
/// @nodoc
class _$TokensModelCopyWithImpl<$Res>
    implements $TokensModelCopyWith<$Res> {
  _$TokensModelCopyWithImpl(this._self, this._then);

  final TokensModel _self;
  final $Res Function(TokensModel) _then;

/// Create a copy of TokensModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tokenType = null,Object? accessToken = null,Object? accessTokenExpiresIn = null,Object? refreshToken = null,Object? refreshTokenExpiresIn = null,}) {
  return _then(TokensModel(
tokenType: null == tokenType ? _self.tokenType : tokenType // ignore: cast_nullable_to_non_nullable
as String,accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,accessTokenExpiresIn: null == accessTokenExpiresIn ? _self.accessTokenExpiresIn : accessTokenExpiresIn // ignore: cast_nullable_to_non_nullable
as int,refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,refreshTokenExpiresIn: null == refreshTokenExpiresIn ? _self.refreshTokenExpiresIn : refreshTokenExpiresIn // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [TokensModel].
extension TokensModelPatterns on TokensModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TokensModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TokensModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TokensModel value)  $default,){
final _that = this;
switch (_that) {
case _TokensModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TokensModel value)?  $default,){
final _that = this;
switch (_that) {
case _TokensModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String tokenType,  String accessToken,  int accessTokenExpiresIn,  String refreshToken,  int refreshTokenExpiresIn)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TokensModel() when $default != null:
return $default(_that.tokenType,_that.accessToken,_that.accessTokenExpiresIn,_that.refreshToken,_that.refreshTokenExpiresIn);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String tokenType,  String accessToken,  int accessTokenExpiresIn,  String refreshToken,  int refreshTokenExpiresIn)  $default,) {final _that = this;
switch (_that) {
case _TokensModel():
return $default(_that.tokenType,_that.accessToken,_that.accessTokenExpiresIn,_that.refreshToken,_that.refreshTokenExpiresIn);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String tokenType,  String accessToken,  int accessTokenExpiresIn,  String refreshToken,  int refreshTokenExpiresIn)?  $default,) {final _that = this;
switch (_that) {
case _TokensModel() when $default != null:
return $default(_that.tokenType,_that.accessToken,_that.accessTokenExpiresIn,_that.refreshToken,_that.refreshTokenExpiresIn);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TokensModel implements TokensModel {
  const _TokensModel({required this.tokenType, required this.accessToken, required this.accessTokenExpiresIn, required this.refreshToken, required this.refreshTokenExpiresIn});
  factory _TokensModel.fromJson(Map<String, dynamic> json) => _$TokensModelFromJson(json);

@override final  String tokenType;
@override final  String accessToken;
@override final  int accessTokenExpiresIn;
@override final  String refreshToken;
@override final  int refreshTokenExpiresIn;

/// Create a copy of TokensModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TokensModelCopyWith<_TokensModel> get copyWith => __$TokensModelCopyWithImpl<_TokensModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TokensModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TokensModel&&(identical(other.tokenType, tokenType) || other.tokenType == tokenType)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.accessTokenExpiresIn, accessTokenExpiresIn) || other.accessTokenExpiresIn == accessTokenExpiresIn)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.refreshTokenExpiresIn, refreshTokenExpiresIn) || other.refreshTokenExpiresIn == refreshTokenExpiresIn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,tokenType,accessToken,accessTokenExpiresIn,refreshToken,refreshTokenExpiresIn);
}

@override
String toString() {
    return 'TokensModel(tokenType: $tokenType, accessToken: $accessToken, accessTokenExpiresIn: $accessTokenExpiresIn, refreshToken: $refreshToken, refreshTokenExpiresIn: $refreshTokenExpiresIn)';
}


}

/// @nodoc
abstract mixin class _$TokensModelCopyWith<$Res> implements $TokensModelCopyWith<$Res> {
  factory _$TokensModelCopyWith(_TokensModel value, $Res Function(_TokensModel) _then) = __$TokensModelCopyWithImpl;
@override @useResult
$Res call({
 String tokenType, String accessToken, int accessTokenExpiresIn, String refreshToken, int refreshTokenExpiresIn
});




}
/// @nodoc
class __$TokensModelCopyWithImpl<$Res>
    implements _$TokensModelCopyWith<$Res> {
  __$TokensModelCopyWithImpl(this._self, this._then);

  final _TokensModel _self;
  final $Res Function(_TokensModel) _then;

/// Create a copy of TokensModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tokenType = null,Object? accessToken = null,Object? accessTokenExpiresIn = null,Object? refreshToken = null,Object? refreshTokenExpiresIn = null,}) {
  return _then(_TokensModel(
tokenType: null == tokenType ? _self.tokenType : tokenType // ignore: cast_nullable_to_non_nullable
as String,accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,accessTokenExpiresIn: null == accessTokenExpiresIn ? _self.accessTokenExpiresIn : accessTokenExpiresIn // ignore: cast_nullable_to_non_nullable
as int,refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,refreshTokenExpiresIn: null == refreshTokenExpiresIn ? _self.refreshTokenExpiresIn : refreshTokenExpiresIn // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
