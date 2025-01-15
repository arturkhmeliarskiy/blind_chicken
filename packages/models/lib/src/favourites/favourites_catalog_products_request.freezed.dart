// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favourites_catalog_products_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FavouritesCatalogProductsRequest {
  List<String>? get favourites => throw _privateConstructorUsedError;
  List<FilterCatalogDataModel>? get filters =>
      throw _privateConstructorUsedError;

  /// Create a copy of FavouritesCatalogProductsRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FavouritesCatalogProductsRequestCopyWith<FavouritesCatalogProductsRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouritesCatalogProductsRequestCopyWith<$Res> {
  factory $FavouritesCatalogProductsRequestCopyWith(
          FavouritesCatalogProductsRequest value,
          $Res Function(FavouritesCatalogProductsRequest) then) =
      _$FavouritesCatalogProductsRequestCopyWithImpl<$Res,
          FavouritesCatalogProductsRequest>;
  @useResult
  $Res call({List<String>? favourites, List<FilterCatalogDataModel>? filters});
}

/// @nodoc
class _$FavouritesCatalogProductsRequestCopyWithImpl<$Res,
        $Val extends FavouritesCatalogProductsRequest>
    implements $FavouritesCatalogProductsRequestCopyWith<$Res> {
  _$FavouritesCatalogProductsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FavouritesCatalogProductsRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favourites = freezed,
    Object? filters = freezed,
  }) {
    return _then(_value.copyWith(
      favourites: freezed == favourites
          ? _value.favourites
          : favourites // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      filters: freezed == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as List<FilterCatalogDataModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavouritesCatalogProductsRequestImplCopyWith<$Res>
    implements $FavouritesCatalogProductsRequestCopyWith<$Res> {
  factory _$$FavouritesCatalogProductsRequestImplCopyWith(
          _$FavouritesCatalogProductsRequestImpl value,
          $Res Function(_$FavouritesCatalogProductsRequestImpl) then) =
      __$$FavouritesCatalogProductsRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String>? favourites, List<FilterCatalogDataModel>? filters});
}

/// @nodoc
class __$$FavouritesCatalogProductsRequestImplCopyWithImpl<$Res>
    extends _$FavouritesCatalogProductsRequestCopyWithImpl<$Res,
        _$FavouritesCatalogProductsRequestImpl>
    implements _$$FavouritesCatalogProductsRequestImplCopyWith<$Res> {
  __$$FavouritesCatalogProductsRequestImplCopyWithImpl(
      _$FavouritesCatalogProductsRequestImpl _value,
      $Res Function(_$FavouritesCatalogProductsRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavouritesCatalogProductsRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favourites = freezed,
    Object? filters = freezed,
  }) {
    return _then(_$FavouritesCatalogProductsRequestImpl(
      favourites: freezed == favourites
          ? _value._favourites
          : favourites // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      filters: freezed == filters
          ? _value._filters
          : filters // ignore: cast_nullable_to_non_nullable
              as List<FilterCatalogDataModel>?,
    ));
  }
}

/// @nodoc

class _$FavouritesCatalogProductsRequestImpl
    extends _FavouritesCatalogProductsRequest {
  _$FavouritesCatalogProductsRequestImpl(
      {final List<String>? favourites,
      final List<FilterCatalogDataModel>? filters})
      : _favourites = favourites,
        _filters = filters,
        super._();

  final List<String>? _favourites;
  @override
  List<String>? get favourites {
    final value = _favourites;
    if (value == null) return null;
    if (_favourites is EqualUnmodifiableListView) return _favourites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<FilterCatalogDataModel>? _filters;
  @override
  List<FilterCatalogDataModel>? get filters {
    final value = _filters;
    if (value == null) return null;
    if (_filters is EqualUnmodifiableListView) return _filters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FavouritesCatalogProductsRequest(favourites: $favourites, filters: $filters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavouritesCatalogProductsRequestImpl &&
            const DeepCollectionEquality()
                .equals(other._favourites, _favourites) &&
            const DeepCollectionEquality().equals(other._filters, _filters));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_favourites),
      const DeepCollectionEquality().hash(_filters));

  /// Create a copy of FavouritesCatalogProductsRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FavouritesCatalogProductsRequestImplCopyWith<
          _$FavouritesCatalogProductsRequestImpl>
      get copyWith => __$$FavouritesCatalogProductsRequestImplCopyWithImpl<
          _$FavouritesCatalogProductsRequestImpl>(this, _$identity);
}

abstract class _FavouritesCatalogProductsRequest
    extends FavouritesCatalogProductsRequest {
  factory _FavouritesCatalogProductsRequest(
          {final List<String>? favourites,
          final List<FilterCatalogDataModel>? filters}) =
      _$FavouritesCatalogProductsRequestImpl;
  _FavouritesCatalogProductsRequest._() : super._();

  @override
  List<String>? get favourites;
  @override
  List<FilterCatalogDataModel>? get filters;

  /// Create a copy of FavouritesCatalogProductsRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FavouritesCatalogProductsRequestImplCopyWith<
          _$FavouritesCatalogProductsRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
