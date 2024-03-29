// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_products_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CatalogProductsRequest {
  List<FilterCatalogDataModel>? get filters =>
      throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get sort => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CatalogProductsRequestCopyWith<CatalogProductsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogProductsRequestCopyWith<$Res> {
  factory $CatalogProductsRequestCopyWith(CatalogProductsRequest value,
          $Res Function(CatalogProductsRequest) then) =
      _$CatalogProductsRequestCopyWithImpl<$Res, CatalogProductsRequest>;
  @useResult
  $Res call({List<FilterCatalogDataModel>? filters, String? url, String? sort});
}

/// @nodoc
class _$CatalogProductsRequestCopyWithImpl<$Res,
        $Val extends CatalogProductsRequest>
    implements $CatalogProductsRequestCopyWith<$Res> {
  _$CatalogProductsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filters = freezed,
    Object? url = freezed,
    Object? sort = freezed,
  }) {
    return _then(_value.copyWith(
      filters: freezed == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as List<FilterCatalogDataModel>?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      sort: freezed == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CatalogProductsRequestImplCopyWith<$Res>
    implements $CatalogProductsRequestCopyWith<$Res> {
  factory _$$CatalogProductsRequestImplCopyWith(
          _$CatalogProductsRequestImpl value,
          $Res Function(_$CatalogProductsRequestImpl) then) =
      __$$CatalogProductsRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FilterCatalogDataModel>? filters, String? url, String? sort});
}

/// @nodoc
class __$$CatalogProductsRequestImplCopyWithImpl<$Res>
    extends _$CatalogProductsRequestCopyWithImpl<$Res,
        _$CatalogProductsRequestImpl>
    implements _$$CatalogProductsRequestImplCopyWith<$Res> {
  __$$CatalogProductsRequestImplCopyWithImpl(
      _$CatalogProductsRequestImpl _value,
      $Res Function(_$CatalogProductsRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filters = freezed,
    Object? url = freezed,
    Object? sort = freezed,
  }) {
    return _then(_$CatalogProductsRequestImpl(
      filters: freezed == filters
          ? _value._filters
          : filters // ignore: cast_nullable_to_non_nullable
              as List<FilterCatalogDataModel>?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      sort: freezed == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CatalogProductsRequestImpl extends _CatalogProductsRequest {
  _$CatalogProductsRequestImpl(
      {final List<FilterCatalogDataModel>? filters, this.url, this.sort})
      : _filters = filters,
        super._();

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
  final String? url;
  @override
  final String? sort;

  @override
  String toString() {
    return 'CatalogProductsRequest(filters: $filters, url: $url, sort: $sort)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CatalogProductsRequestImpl &&
            const DeepCollectionEquality().equals(other._filters, _filters) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.sort, sort) || other.sort == sort));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_filters), url, sort);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CatalogProductsRequestImplCopyWith<_$CatalogProductsRequestImpl>
      get copyWith => __$$CatalogProductsRequestImplCopyWithImpl<
          _$CatalogProductsRequestImpl>(this, _$identity);
}

abstract class _CatalogProductsRequest extends CatalogProductsRequest {
  factory _CatalogProductsRequest(
      {final List<FilterCatalogDataModel>? filters,
      final String? url,
      final String? sort}) = _$CatalogProductsRequestImpl;
  _CatalogProductsRequest._() : super._();

  @override
  List<FilterCatalogDataModel>? get filters;
  @override
  String? get url;
  @override
  String? get sort;
  @override
  @JsonKey(ignore: true)
  _$$CatalogProductsRequestImplCopyWith<_$CatalogProductsRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
