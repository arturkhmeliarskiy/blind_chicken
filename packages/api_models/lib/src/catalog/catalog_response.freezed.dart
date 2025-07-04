// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CatalogResponse _$CatalogResponseFromJson(Map<String, dynamic> json) {
  return _CatalogResponse.fromJson(json);
}

/// @nodoc
mixin _$CatalogResponse {
  @JsonKey(name: 'user_discount')
  String? get userDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: 'breadcrumbs', fromJson: _convertBreadcrumbs)
  List<CatalogBreadcrumbResponse>? get breadcrumbs =>
      throw _privateConstructorUsedError;
  String? get h1 => throw _privateConstructorUsedError;
  String? get count => throw _privateConstructorUsedError;
  @JsonKey(name: 'sections', fromJson: _convertSections)
  SectionsResponse? get sections => throw _privateConstructorUsedError;
  String? get countFilter => throw _privateConstructorUsedError;
  @JsonKey(name: 'filter', fromJson: _convertFilter)
  List<FilterCatalogInfoResponse>? get filter =>
      throw _privateConstructorUsedError;
  List<CatalogProductResponse>? get products =>
      throw _privateConstructorUsedError;
  String? get r => throw _privateConstructorUsedError;
  String? get e => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_first_mobile')
  int? get discountFirstMobile => throw _privateConstructorUsedError;

  /// Serializes this CatalogResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CatalogResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CatalogResponseCopyWith<CatalogResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogResponseCopyWith<$Res> {
  factory $CatalogResponseCopyWith(
          CatalogResponse value, $Res Function(CatalogResponse) then) =
      _$CatalogResponseCopyWithImpl<$Res, CatalogResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_discount') String? userDiscount,
      @JsonKey(name: 'breadcrumbs', fromJson: _convertBreadcrumbs)
      List<CatalogBreadcrumbResponse>? breadcrumbs,
      String? h1,
      String? count,
      @JsonKey(name: 'sections', fromJson: _convertSections)
      SectionsResponse? sections,
      String? countFilter,
      @JsonKey(name: 'filter', fromJson: _convertFilter)
      List<FilterCatalogInfoResponse>? filter,
      List<CatalogProductResponse>? products,
      String? r,
      String? e,
      String? errorMessage,
      @JsonKey(name: 'discount_first_mobile') int? discountFirstMobile});

  $SectionsResponseCopyWith<$Res>? get sections;
}

/// @nodoc
class _$CatalogResponseCopyWithImpl<$Res, $Val extends CatalogResponse>
    implements $CatalogResponseCopyWith<$Res> {
  _$CatalogResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CatalogResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userDiscount = freezed,
    Object? breadcrumbs = freezed,
    Object? h1 = freezed,
    Object? count = freezed,
    Object? sections = freezed,
    Object? countFilter = freezed,
    Object? filter = freezed,
    Object? products = freezed,
    Object? r = freezed,
    Object? e = freezed,
    Object? errorMessage = freezed,
    Object? discountFirstMobile = freezed,
  }) {
    return _then(_value.copyWith(
      userDiscount: freezed == userDiscount
          ? _value.userDiscount
          : userDiscount // ignore: cast_nullable_to_non_nullable
              as String?,
      breadcrumbs: freezed == breadcrumbs
          ? _value.breadcrumbs
          : breadcrumbs // ignore: cast_nullable_to_non_nullable
              as List<CatalogBreadcrumbResponse>?,
      h1: freezed == h1
          ? _value.h1
          : h1 // ignore: cast_nullable_to_non_nullable
              as String?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as String?,
      sections: freezed == sections
          ? _value.sections
          : sections // ignore: cast_nullable_to_non_nullable
              as SectionsResponse?,
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
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      discountFirstMobile: freezed == discountFirstMobile
          ? _value.discountFirstMobile
          : discountFirstMobile // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of CatalogResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SectionsResponseCopyWith<$Res>? get sections {
    if (_value.sections == null) {
      return null;
    }

    return $SectionsResponseCopyWith<$Res>(_value.sections!, (value) {
      return _then(_value.copyWith(sections: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CatalogResponseImplCopyWith<$Res>
    implements $CatalogResponseCopyWith<$Res> {
  factory _$$CatalogResponseImplCopyWith(_$CatalogResponseImpl value,
          $Res Function(_$CatalogResponseImpl) then) =
      __$$CatalogResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_discount') String? userDiscount,
      @JsonKey(name: 'breadcrumbs', fromJson: _convertBreadcrumbs)
      List<CatalogBreadcrumbResponse>? breadcrumbs,
      String? h1,
      String? count,
      @JsonKey(name: 'sections', fromJson: _convertSections)
      SectionsResponse? sections,
      String? countFilter,
      @JsonKey(name: 'filter', fromJson: _convertFilter)
      List<FilterCatalogInfoResponse>? filter,
      List<CatalogProductResponse>? products,
      String? r,
      String? e,
      String? errorMessage,
      @JsonKey(name: 'discount_first_mobile') int? discountFirstMobile});

  @override
  $SectionsResponseCopyWith<$Res>? get sections;
}

/// @nodoc
class __$$CatalogResponseImplCopyWithImpl<$Res>
    extends _$CatalogResponseCopyWithImpl<$Res, _$CatalogResponseImpl>
    implements _$$CatalogResponseImplCopyWith<$Res> {
  __$$CatalogResponseImplCopyWithImpl(
      _$CatalogResponseImpl _value, $Res Function(_$CatalogResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of CatalogResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userDiscount = freezed,
    Object? breadcrumbs = freezed,
    Object? h1 = freezed,
    Object? count = freezed,
    Object? sections = freezed,
    Object? countFilter = freezed,
    Object? filter = freezed,
    Object? products = freezed,
    Object? r = freezed,
    Object? e = freezed,
    Object? errorMessage = freezed,
    Object? discountFirstMobile = freezed,
  }) {
    return _then(_$CatalogResponseImpl(
      userDiscount: freezed == userDiscount
          ? _value.userDiscount
          : userDiscount // ignore: cast_nullable_to_non_nullable
              as String?,
      breadcrumbs: freezed == breadcrumbs
          ? _value._breadcrumbs
          : breadcrumbs // ignore: cast_nullable_to_non_nullable
              as List<CatalogBreadcrumbResponse>?,
      h1: freezed == h1
          ? _value.h1
          : h1 // ignore: cast_nullable_to_non_nullable
              as String?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as String?,
      sections: freezed == sections
          ? _value.sections
          : sections // ignore: cast_nullable_to_non_nullable
              as SectionsResponse?,
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
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      discountFirstMobile: freezed == discountFirstMobile
          ? _value.discountFirstMobile
          : discountFirstMobile // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CatalogResponseImpl extends _CatalogResponse {
  _$CatalogResponseImpl(
      {@JsonKey(name: 'user_discount') this.userDiscount,
      @JsonKey(name: 'breadcrumbs', fromJson: _convertBreadcrumbs)
      final List<CatalogBreadcrumbResponse>? breadcrumbs,
      this.h1,
      this.count,
      @JsonKey(name: 'sections', fromJson: _convertSections) this.sections,
      this.countFilter,
      @JsonKey(name: 'filter', fromJson: _convertFilter)
      final List<FilterCatalogInfoResponse>? filter,
      final List<CatalogProductResponse>? products,
      this.r,
      this.e,
      this.errorMessage,
      @JsonKey(name: 'discount_first_mobile') this.discountFirstMobile})
      : _breadcrumbs = breadcrumbs,
        _filter = filter,
        _products = products,
        super._();

  factory _$CatalogResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CatalogResponseImplFromJson(json);

  @override
  @JsonKey(name: 'user_discount')
  final String? userDiscount;
  final List<CatalogBreadcrumbResponse>? _breadcrumbs;
  @override
  @JsonKey(name: 'breadcrumbs', fromJson: _convertBreadcrumbs)
  List<CatalogBreadcrumbResponse>? get breadcrumbs {
    final value = _breadcrumbs;
    if (value == null) return null;
    if (_breadcrumbs is EqualUnmodifiableListView) return _breadcrumbs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? h1;
  @override
  final String? count;
  @override
  @JsonKey(name: 'sections', fromJson: _convertSections)
  final SectionsResponse? sections;
  @override
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
  final String? errorMessage;
  @override
  @JsonKey(name: 'discount_first_mobile')
  final int? discountFirstMobile;

  @override
  String toString() {
    return 'CatalogResponse(userDiscount: $userDiscount, breadcrumbs: $breadcrumbs, h1: $h1, count: $count, sections: $sections, countFilter: $countFilter, filter: $filter, products: $products, r: $r, e: $e, errorMessage: $errorMessage, discountFirstMobile: $discountFirstMobile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CatalogResponseImpl &&
            (identical(other.userDiscount, userDiscount) ||
                other.userDiscount == userDiscount) &&
            const DeepCollectionEquality()
                .equals(other._breadcrumbs, _breadcrumbs) &&
            (identical(other.h1, h1) || other.h1 == h1) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.sections, sections) ||
                other.sections == sections) &&
            (identical(other.countFilter, countFilter) ||
                other.countFilter == countFilter) &&
            const DeepCollectionEquality().equals(other._filter, _filter) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.r, r) || other.r == r) &&
            (identical(other.e, e) || other.e == e) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.discountFirstMobile, discountFirstMobile) ||
                other.discountFirstMobile == discountFirstMobile));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userDiscount,
      const DeepCollectionEquality().hash(_breadcrumbs),
      h1,
      count,
      sections,
      countFilter,
      const DeepCollectionEquality().hash(_filter),
      const DeepCollectionEquality().hash(_products),
      r,
      e,
      errorMessage,
      discountFirstMobile);

  /// Create a copy of CatalogResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CatalogResponseImplCopyWith<_$CatalogResponseImpl> get copyWith =>
      __$$CatalogResponseImplCopyWithImpl<_$CatalogResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CatalogResponseImplToJson(
      this,
    );
  }
}

abstract class _CatalogResponse extends CatalogResponse {
  factory _CatalogResponse(
      {@JsonKey(name: 'user_discount') final String? userDiscount,
      @JsonKey(name: 'breadcrumbs', fromJson: _convertBreadcrumbs)
      final List<CatalogBreadcrumbResponse>? breadcrumbs,
      final String? h1,
      final String? count,
      @JsonKey(name: 'sections', fromJson: _convertSections)
      final SectionsResponse? sections,
      final String? countFilter,
      @JsonKey(name: 'filter', fromJson: _convertFilter)
      final List<FilterCatalogInfoResponse>? filter,
      final List<CatalogProductResponse>? products,
      final String? r,
      final String? e,
      final String? errorMessage,
      @JsonKey(name: 'discount_first_mobile')
      final int? discountFirstMobile}) = _$CatalogResponseImpl;
  _CatalogResponse._() : super._();

  factory _CatalogResponse.fromJson(Map<String, dynamic> json) =
      _$CatalogResponseImpl.fromJson;

  @override
  @JsonKey(name: 'user_discount')
  String? get userDiscount;
  @override
  @JsonKey(name: 'breadcrumbs', fromJson: _convertBreadcrumbs)
  List<CatalogBreadcrumbResponse>? get breadcrumbs;
  @override
  String? get h1;
  @override
  String? get count;
  @override
  @JsonKey(name: 'sections', fromJson: _convertSections)
  SectionsResponse? get sections;
  @override
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
  String? get errorMessage;
  @override
  @JsonKey(name: 'discount_first_mobile')
  int? get discountFirstMobile;

  /// Create a copy of CatalogResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CatalogResponseImplCopyWith<_$CatalogResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
