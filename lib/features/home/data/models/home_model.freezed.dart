// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeModel {

 List<BannerModel> get banners; List<CategoryModel> get categories; List<RestaurantModel> get featured; List<RestaurantModel> get topRated; List<DishModel> get popularDishes;
/// Create a copy of HomeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeModelCopyWith<HomeModel> get copyWith => _$HomeModelCopyWithImpl<HomeModel>(this as HomeModel, _$identity);

  /// Serializes this HomeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as HomeModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeModel&&const DeepCollectionEquality().equals(other.banners, _this.banners)&&const DeepCollectionEquality().equals(other.categories, _this.categories)&&const DeepCollectionEquality().equals(other.featured, _this.featured)&&const DeepCollectionEquality().equals(other.topRated, _this.topRated)&&const DeepCollectionEquality().equals(other.popularDishes, _this.popularDishes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as HomeModel;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.banners),const DeepCollectionEquality().hash(_this.categories),const DeepCollectionEquality().hash(_this.featured),const DeepCollectionEquality().hash(_this.topRated),const DeepCollectionEquality().hash(_this.popularDishes));
}

@override
String toString() {
  final _this = this as HomeModel;
  return 'HomeModel(banners: ${_this.banners}, categories: ${_this.categories}, featured: ${_this.featured}, topRated: ${_this.topRated}, popularDishes: ${_this.popularDishes})';
}


}

/// @nodoc
abstract mixin class $HomeModelCopyWith<$Res>  {
  factory $HomeModelCopyWith(HomeModel value, $Res Function(HomeModel) _then) = _$HomeModelCopyWithImpl;
@useResult
$Res call({
 List<BannerModel> banners, List<CategoryModel> categories, List<RestaurantModel> featured, List<RestaurantModel> topRated, List<DishModel> popularDishes
});




}
/// @nodoc
class _$HomeModelCopyWithImpl<$Res>
    implements $HomeModelCopyWith<$Res> {
  _$HomeModelCopyWithImpl(this._self, this._then);

  final HomeModel _self;
  final $Res Function(HomeModel) _then;

/// Create a copy of HomeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? banners = null,Object? categories = null,Object? featured = null,Object? topRated = null,Object? popularDishes = null,}) {
  return _then(HomeModel(
banners: null == banners ? _self.banners : banners // ignore: cast_nullable_to_non_nullable
as List<BannerModel>,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryModel>,featured: null == featured ? _self.featured : featured // ignore: cast_nullable_to_non_nullable
as List<RestaurantModel>,topRated: null == topRated ? _self.topRated : topRated // ignore: cast_nullable_to_non_nullable
as List<RestaurantModel>,popularDishes: null == popularDishes ? _self.popularDishes : popularDishes // ignore: cast_nullable_to_non_nullable
as List<DishModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeModel].
extension HomeModelPatterns on HomeModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeModel value)  $default,){
final _that = this;
switch (_that) {
case _HomeModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeModel value)?  $default,){
final _that = this;
switch (_that) {
case _HomeModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<BannerModel> banners,  List<CategoryModel> categories,  List<RestaurantModel> featured,  List<RestaurantModel> topRated,  List<DishModel> popularDishes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeModel() when $default != null:
return $default(_that.banners,_that.categories,_that.featured,_that.topRated,_that.popularDishes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<BannerModel> banners,  List<CategoryModel> categories,  List<RestaurantModel> featured,  List<RestaurantModel> topRated,  List<DishModel> popularDishes)  $default,) {final _that = this;
switch (_that) {
case _HomeModel():
return $default(_that.banners,_that.categories,_that.featured,_that.topRated,_that.popularDishes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<BannerModel> banners,  List<CategoryModel> categories,  List<RestaurantModel> featured,  List<RestaurantModel> topRated,  List<DishModel> popularDishes)?  $default,) {final _that = this;
switch (_that) {
case _HomeModel() when $default != null:
return $default(_that.banners,_that.categories,_that.featured,_that.topRated,_that.popularDishes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HomeModel implements HomeModel {
  const _HomeModel({required  List<BannerModel> banners, required  List<CategoryModel> categories, required  List<RestaurantModel> featured, required  List<RestaurantModel> topRated, required  List<DishModel> popularDishes}): _banners = banners,_categories = categories,_featured = featured,_topRated = topRated,_popularDishes = popularDishes;
  factory _HomeModel.fromJson(Map<String, dynamic> json) => _$HomeModelFromJson(json);

 final  List<BannerModel> _banners;
@override List<BannerModel> get banners {
  if (_banners is EqualUnmodifiableListView) return _banners;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_banners);
}

 final  List<CategoryModel> _categories;
@override List<CategoryModel> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

 final  List<RestaurantModel> _featured;
@override List<RestaurantModel> get featured {
  if (_featured is EqualUnmodifiableListView) return _featured;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_featured);
}

 final  List<RestaurantModel> _topRated;
@override List<RestaurantModel> get topRated {
  if (_topRated is EqualUnmodifiableListView) return _topRated;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_topRated);
}

 final  List<DishModel> _popularDishes;
@override List<DishModel> get popularDishes {
  if (_popularDishes is EqualUnmodifiableListView) return _popularDishes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_popularDishes);
}


/// Create a copy of HomeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeModelCopyWith<_HomeModel> get copyWith => __$HomeModelCopyWithImpl<_HomeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HomeModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeModel&&const DeepCollectionEquality().equals(other.banners, _banners)&&const DeepCollectionEquality().equals(other.categories, _categories)&&const DeepCollectionEquality().equals(other.featured, _featured)&&const DeepCollectionEquality().equals(other.topRated, _topRated)&&const DeepCollectionEquality().equals(other.popularDishes, _popularDishes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_banners),const DeepCollectionEquality().hash(_categories),const DeepCollectionEquality().hash(_featured),const DeepCollectionEquality().hash(_topRated),const DeepCollectionEquality().hash(_popularDishes));
}

@override
String toString() {
    return 'HomeModel(banners: $banners, categories: $categories, featured: $featured, topRated: $topRated, popularDishes: $popularDishes)';
}


}

/// @nodoc
abstract mixin class _$HomeModelCopyWith<$Res> implements $HomeModelCopyWith<$Res> {
  factory _$HomeModelCopyWith(_HomeModel value, $Res Function(_HomeModel) _then) = __$HomeModelCopyWithImpl;
@override @useResult
$Res call({
 List<BannerModel> banners, List<CategoryModel> categories, List<RestaurantModel> featured, List<RestaurantModel> topRated, List<DishModel> popularDishes
});




}
/// @nodoc
class __$HomeModelCopyWithImpl<$Res>
    implements _$HomeModelCopyWith<$Res> {
  __$HomeModelCopyWithImpl(this._self, this._then);

  final _HomeModel _self;
  final $Res Function(_HomeModel) _then;

/// Create a copy of HomeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? banners = null,Object? categories = null,Object? featured = null,Object? topRated = null,Object? popularDishes = null,}) {
  return _then(_HomeModel(
banners: null == banners ? _self._banners : banners // ignore: cast_nullable_to_non_nullable
as List<BannerModel>,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryModel>,featured: null == featured ? _self._featured : featured // ignore: cast_nullable_to_non_nullable
as List<RestaurantModel>,topRated: null == topRated ? _self._topRated : topRated // ignore: cast_nullable_to_non_nullable
as List<RestaurantModel>,popularDishes: null == popularDishes ? _self._popularDishes : popularDishes // ignore: cast_nullable_to_non_nullable
as List<DishModel>,
  ));
}


}

// dart format on
