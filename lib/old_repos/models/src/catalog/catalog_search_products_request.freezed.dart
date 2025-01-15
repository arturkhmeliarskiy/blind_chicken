// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_search_products_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CatalogSearchProductsRequest {
  String? get query => throw _privateConstructorUsedError;
  List<FilterCatalogDataModel>? get filters =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CatalogSearchProductsRequestCopyWith<CatalogSearchProductsRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogSearchProductsRequestCopyWith<$Res> {
  factory $CatalogSearchProductsRequestCopyWith(
          CatalogSearchProductsRequest value,
          $Res Function(CatalogSearchProductsRequest) then) =
      _$CatalogSearchProductsRequestCopyWithImpl<$Res,
          CatalogSearchProductsRequest>;
  @useResult
  $Res call({String? query, List<FilterCatalogDataModel>? filters});
}

/// @nodoc
class _$CatalogSearchProductsRequestCopyWithImpl<$Res,
        $Val extends CatalogSearchProductsRequest>
    implements $CatalogSearchProductsRequestCopyWith<$Res> {
  _$CatalogSearchProductsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
    Object? filters = freezed,
  }) {
    return _then(_value.copyWith(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      filters: freezed == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as List<FilterCatalogDataModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CatalogSearchProductsRequestImplCopyWith<$Res>
    implements $CatalogSearchProductsRequestCopyWith<$Res> {
  factory _$$CatalogSearchProductsRequestImplCopyWith(
          _$CatalogSearchProductsRequestImpl value,
          $Res Function(_$CatalogSearchProductsRequestImpl) then) =
      __$$CatalogSearchProductsRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? query, List<FilterCatalogDataModel>? filters});
}

/// @nodoc
class __$$CatalogSearchProductsRequestImplCopyWithImpl<$Res>
    extends _$CatalogSearchProductsRequestCopyWithImpl<$Res,
        _$CatalogSearchProductsRequestImpl>
    implements _$$CatalogSearchProductsRequestImplCopyWith<$Res> {
  __$$CatalogSearchProductsRequestImplCopyWithImpl(
      _$CatalogSearchProductsRequestImpl _value,
      $Res Function(_$CatalogSearchProductsRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
    Object? filters = freezed,
  }) {
    return _then(_$CatalogSearchProductsRequestImpl(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      filters: freezed == filters
          ? _value._filters
          : filters // ignore: cast_nullable_to_non_nullable
              as List<FilterCatalogDataModel>?,
    ));
  }
}

/// @nodoc

class _$CatalogSearchProductsRequestImpl extends _CatalogSearchProductsRequest {
  _$CatalogSearchProductsRequestImpl(
      {this.query, final List<FilterCatalogDataModel>? filters})
      : _filters = filters,
        super._();

  @override
  final String? query;
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
    return 'CatalogSearchProductsRequest(query: $query, filters: $filters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CatalogSearchProductsRequestImpl &&
            (identical(other.query, query) || other.query == query) &&
            const DeepCollectionEquality().equals(other._filters, _filters));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, query, const DeepCollectionEquality().hash(_filters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CatalogSearchProductsRequestImplCopyWith<
          _$CatalogSearchProductsRequestImpl>
      get copyWith => __$$CatalogSearchProductsRequestImplCopyWithImpl<
          _$CatalogSearchProductsRequestImpl>(this, _$identity);
}

abstract class _CatalogSearchProductsRequest
    extends CatalogSearchProductsRequest {
  factory _CatalogSearchProductsRequest(
          {final String? query, final List<FilterCatalogDataModel>? filters}) =
      _$CatalogSearchProductsRequestImpl;
  _CatalogSearchProductsRequest._() : super._();

  @override
  String? get query;
  @override
  List<FilterCatalogDataModel>? get filters;
  @override
  @JsonKey(ignore: true)
  _$$CatalogSearchProductsRequestImplCopyWith<
          _$CatalogSearchProductsRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
