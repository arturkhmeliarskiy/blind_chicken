// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favourites_catalog_info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FavouritesCatalogInfoResponse _$FavouritesCatalogInfoResponseFromJson(
    Map<String, dynamic> json) {
  return _FavouritesCatalogInfoResponse.fromJson(json);
}

/// @nodoc
mixin _$FavouritesCatalogInfoResponse {
  @JsonKey(name: 'user_discount')
  String? get userDiscount => throw _privateConstructorUsedError;
  String? get h1 => throw _privateConstructorUsedError;
  String? get count => throw _privateConstructorUsedError;
  @JsonKey(name: 'count_filter')
  String? get countFilter => throw _privateConstructorUsedError;
  @JsonKey(name: 'filter', fromJson: _convertFilter)
  List<FilterCatalogInfoResponse>? get filter =>
      throw _privateConstructorUsedError;
  List<CatalogProductResponse>? get products =>
      throw _privateConstructorUsedError;
  String? get r => throw _privateConstructorUsedError;
  String? get e => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavouritesCatalogInfoResponseCopyWith<FavouritesCatalogInfoResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouritesCatalogInfoResponseCopyWith<$Res> {
  factory $FavouritesCatalogInfoResponseCopyWith(
          FavouritesCatalogInfoResponse value,
          $Res Function(FavouritesCatalogInfoResponse) then) =
      _$FavouritesCatalogInfoResponseCopyWithImpl<$Res,
          FavouritesCatalogInfoResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_discount') String? userDiscount,
      String? h1,
      String? count,
      @JsonKey(name: 'count_filter') String? countFilter,
      @JsonKey(name: 'filter', fromJson: _convertFilter)
      List<FilterCatalogInfoResponse>? filter,
      List<CatalogProductResponse>? products,
      String? r,
      String? e});
}

/// @nodoc
class _$FavouritesCatalogInfoResponseCopyWithImpl<$Res,
        $Val extends FavouritesCatalogInfoResponse>
    implements $FavouritesCatalogInfoResponseCopyWith<$Res> {
  _$FavouritesCatalogInfoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userDiscount = freezed,
    Object? h1 = freezed,
    Object? count = freezed,
    Object? countFilter = freezed,
    Object? filter = freezed,
    Object? products = freezed,
    Object? r = freezed,
    Object? e = freezed,
  }) {
    return _then(_value.copyWith(
      userDiscount: freezed == userDiscount
          ? _value.userDiscount
          : userDiscount // ignore: cast_nullable_to_non_nullable
              as String?,
      h1: freezed == h1
          ? _value.h1
          : h1 // ignore: cast_nullable_to_non_nullable
              as String?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as String?,
      countFilter: freezed == countFilter
          ? _value.countFilter
          : countFilter // ignore: cast_nullable_to_non_nullable
              as String?,
      filter: freezed == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as List<FilterCatalogInfoResponse>?,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<CatalogProductResponse>?,
      r: freezed == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String?,
      e: freezed == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavouritesCatalogInfoResponseImplCopyWith<$Res>
    implements $FavouritesCatalogInfoResponseCopyWith<$Res> {
  factory _$$FavouritesCatalogInfoResponseImplCopyWith(
          _$FavouritesCatalogInfoResponseImpl value,
          $Res Function(_$FavouritesCatalogInfoResponseImpl) then) =
      __$$FavouritesCatalogInfoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_discount') String? userDiscount,
      String? h1,
      String? count,
      @JsonKey(name: 'count_filter') String? countFilter,
      @JsonKey(name: 'filter', fromJson: _convertFilter)
      List<FilterCatalogInfoResponse>? filter,
      List<CatalogProductResponse>? products,
      String? r,
      String? e});
}

/// @nodoc
class __$$FavouritesCatalogInfoResponseImplCopyWithImpl<$Res>
    extends _$FavouritesCatalogInfoResponseCopyWithImpl<$Res,
        _$FavouritesCatalogInfoResponseImpl>
    implements _$$FavouritesCatalogInfoResponseImplCopyWith<$Res> {
  __$$FavouritesCatalogInfoResponseImplCopyWithImpl(
      _$FavouritesCatalogInfoResponseImpl _value,
      $Res Function(_$FavouritesCatalogInfoResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userDiscount = freezed,
    Object? h1 = freezed,
    Object? count = freezed,
    Object? countFilter = freezed,
    Object? filter = freezed,
    Object? products = freezed,
    Object? r = freezed,
    Object? e = freezed,
  }) {
    return _then(_$FavouritesCatalogInfoResponseImpl(
      userDiscount: freezed == userDiscount
          ? _value.userDiscount
          : userDiscount // ignore: cast_nullable_to_non_nullable
              as String?,
      h1: freezed == h1
          ? _value.h1
          : h1 // ignore: cast_nullable_to_non_nullable
              as String?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as String?,
      countFilter: freezed == countFilter
          ? _value.countFilter
          : countFilter // ignore: cast_nullable_to_non_nullable
              as String?,
      filter: freezed == filter
          ? _value._filter
          : filter // ignore: cast_nullable_to_non_nullable
              as List<FilterCatalogInfoResponse>?,
      products: freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<CatalogProductResponse>?,
      r: freezed == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String?,
      e: freezed == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FavouritesCatalogInfoResponseImpl
    extends _FavouritesCatalogInfoResponse {
  _$FavouritesCatalogInfoResponseImpl(
      {@JsonKey(name: 'user_discount') this.userDiscount,
      this.h1,
      this.count,
      @JsonKey(name: 'count_filter') this.countFilter,
      @JsonKey(name: 'filter', fromJson: _convertFilter)
      final List<FilterCatalogInfoResponse>? filter,
      final List<CatalogProductResponse>? products,
      this.r,
      this.e})
      : _filter = filter,
        _products = products,
        super._();

  factory _$FavouritesCatalogInfoResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FavouritesCatalogInfoResponseImplFromJson(json);

  @override
  @JsonKey(name: 'user_discount')
  final String? userDiscount;
  @override
  final String? h1;
  @override
  final String? count;
  @override
  @JsonKey(name: 'count_filter')
  final String? countFilter;
  final List<FilterCatalogInfoResponse>? _filter;
  @override
  @JsonKey(name: 'filter', fromJson: _convertFilter)
  List<FilterCatalogInfoResponse>? get filter {
    final value = _filter;
    if (value == null) return null;
    if (_filter is EqualUnmodifiableListView) return _filter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CatalogProductResponse>? _products;
  @override
  List<CatalogProductResponse>? get products {
    final value = _products;
    if (value == null) return null;
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? r;
  @override
  final String? e;

  @override
  String toString() {
    return 'FavouritesCatalogInfoResponse(userDiscount: $userDiscount, h1: $h1, count: $count, countFilter: $countFilter, filter: $filter, products: $products, r: $r, e: $e)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavouritesCatalogInfoResponseImpl &&
            (identical(other.userDiscount, userDiscount) ||
                other.userDiscount == userDiscount) &&
            (identical(other.h1, h1) || other.h1 == h1) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.countFilter, countFilter) ||
                other.countFilter == countFilter) &&
            const DeepCollectionEquality().equals(other._filter, _filter) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.r, r) || other.r == r) &&
            (identical(other.e, e) || other.e == e));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userDiscount,
      h1,
      count,
      countFilter,
      const DeepCollectionEquality().hash(_filter),
      const DeepCollectionEquality().hash(_products),
      r,
      e);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavouritesCatalogInfoResponseImplCopyWith<
          _$FavouritesCatalogInfoResponseImpl>
      get copyWith => __$$FavouritesCatalogInfoResponseImplCopyWithImpl<
          _$FavouritesCatalogInfoResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FavouritesCatalogInfoResponseImplToJson(
      this,
    );
  }
}

abstract class _FavouritesCatalogInfoResponse
    extends FavouritesCatalogInfoResponse {
  factory _FavouritesCatalogInfoResponse(
      {@JsonKey(name: 'user_discount') final String? userDiscount,
      final String? h1,
      final String? count,
      @JsonKey(name: 'count_filter') final String? countFilter,
      @JsonKey(name: 'filter', fromJson: _convertFilter)
      final List<FilterCatalogInfoResponse>? filter,
      final List<CatalogProductResponse>? products,
      final String? r,
      final String? e}) = _$FavouritesCatalogInfoResponseImpl;
  _FavouritesCatalogInfoResponse._() : super._();

  factory _FavouritesCatalogInfoResponse.fromJson(Map<String, dynamic> json) =
      _$FavouritesCatalogInfoResponseImpl.fromJson;

  @override
  @JsonKey(name: 'user_discount')
  String? get userDiscount;
  @override
  String? get h1;
  @override
  String? get count;
  @override
  @JsonKey(name: 'count_filter')
  String? get countFilter;
  @override
  @JsonKey(name: 'filter', fromJson: _convertFilter)
  List<FilterCatalogInfoResponse>? get filter;
  @override
  List<CatalogProductResponse>? get products;
  @override
  String? get r;
  @override
  String? get e;
  @override
  @JsonKey(ignore: true)
  _$$FavouritesCatalogInfoResponseImplCopyWith<
          _$FavouritesCatalogInfoResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
