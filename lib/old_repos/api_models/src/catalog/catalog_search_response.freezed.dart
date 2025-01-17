// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_search_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CatalogSearchResponse _$CatalogSearchResponseFromJson(
    Map<String, dynamic> json) {
  return _CatalogSearchResponse.fromJson(json);
}

/// @nodoc
mixin _$CatalogSearchResponse {
  @JsonKey(name: 'products_count')
  int? get productsCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'sections_count')
  int? get sectionsCount => throw _privateConstructorUsedError;
  List<CatalogProductResponse>? get products =>
      throw _privateConstructorUsedError;
  List<CatalogSectionResponse>? get sections =>
      throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CatalogSearchResponseCopyWith<CatalogSearchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogSearchResponseCopyWith<$Res> {
  factory $CatalogSearchResponseCopyWith(CatalogSearchResponse value,
          $Res Function(CatalogSearchResponse) then) =
      _$CatalogSearchResponseCopyWithImpl<$Res, CatalogSearchResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'products_count') int? productsCount,
      @JsonKey(name: 'sections_count') int? sectionsCount,
      List<CatalogProductResponse>? products,
      List<CatalogSectionResponse>? sections,
      String? errorMessage});
}

/// @nodoc
class _$CatalogSearchResponseCopyWithImpl<$Res,
        $Val extends CatalogSearchResponse>
    implements $CatalogSearchResponseCopyWith<$Res> {
  _$CatalogSearchResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productsCount = freezed,
    Object? sectionsCount = freezed,
    Object? products = freezed,
    Object? sections = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      productsCount: freezed == productsCount
          ? _value.productsCount
          : productsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      sectionsCount: freezed == sectionsCount
          ? _value.sectionsCount
          : sectionsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<CatalogProductResponse>?,
      sections: freezed == sections
          ? _value.sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<CatalogSectionResponse>?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CatalogSearchResponseImplCopyWith<$Res>
    implements $CatalogSearchResponseCopyWith<$Res> {
  factory _$$CatalogSearchResponseImplCopyWith(
          _$CatalogSearchResponseImpl value,
          $Res Function(_$CatalogSearchResponseImpl) then) =
      __$$CatalogSearchResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'products_count') int? productsCount,
      @JsonKey(name: 'sections_count') int? sectionsCount,
      List<CatalogProductResponse>? products,
      List<CatalogSectionResponse>? sections,
      String? errorMessage});
}

/// @nodoc
class __$$CatalogSearchResponseImplCopyWithImpl<$Res>
    extends _$CatalogSearchResponseCopyWithImpl<$Res,
        _$CatalogSearchResponseImpl>
    implements _$$CatalogSearchResponseImplCopyWith<$Res> {
  __$$CatalogSearchResponseImplCopyWithImpl(_$CatalogSearchResponseImpl _value,
      $Res Function(_$CatalogSearchResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productsCount = freezed,
    Object? sectionsCount = freezed,
    Object? products = freezed,
    Object? sections = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$CatalogSearchResponseImpl(
      productsCount: freezed == productsCount
          ? _value.productsCount
          : productsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      sectionsCount: freezed == sectionsCount
          ? _value.sectionsCount
          : sectionsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      products: freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<CatalogProductResponse>?,
      sections: freezed == sections
          ? _value._sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<CatalogSectionResponse>?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CatalogSearchResponseImpl extends _CatalogSearchResponse {
  _$CatalogSearchResponseImpl(
      {@JsonKey(name: 'products_count') this.productsCount,
      @JsonKey(name: 'sections_count') this.sectionsCount,
      final List<CatalogProductResponse>? products,
      final List<CatalogSectionResponse>? sections,
      this.errorMessage})
      : _products = products,
        _sections = sections,
        super._();

  factory _$CatalogSearchResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CatalogSearchResponseImplFromJson(json);

  @override
  @JsonKey(name: 'products_count')
  final int? productsCount;
  @override
  @JsonKey(name: 'sections_count')
  final int? sectionsCount;
  final List<CatalogProductResponse>? _products;
  @override
  List<CatalogProductResponse>? get products {
    final value = _products;
    if (value == null) return null;
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CatalogSectionResponse>? _sections;
  @override
  List<CatalogSectionResponse>? get sections {
    final value = _sections;
    if (value == null) return null;
    if (_sections is EqualUnmodifiableListView) return _sections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'CatalogSearchResponse(productsCount: $productsCount, sectionsCount: $sectionsCount, products: $products, sections: $sections, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CatalogSearchResponseImpl &&
            (identical(other.productsCount, productsCount) ||
                other.productsCount == productsCount) &&
            (identical(other.sectionsCount, sectionsCount) ||
                other.sectionsCount == sectionsCount) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality().equals(other._sections, _sections) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      productsCount,
      sectionsCount,
      const DeepCollectionEquality().hash(_products),
      const DeepCollectionEquality().hash(_sections),
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CatalogSearchResponseImplCopyWith<_$CatalogSearchResponseImpl>
      get copyWith => __$$CatalogSearchResponseImplCopyWithImpl<
          _$CatalogSearchResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CatalogSearchResponseImplToJson(
      this,
    );
  }
}

abstract class _CatalogSearchResponse extends CatalogSearchResponse {
  factory _CatalogSearchResponse(
      {@JsonKey(name: 'products_count') final int? productsCount,
      @JsonKey(name: 'sections_count') final int? sectionsCount,
      final List<CatalogProductResponse>? products,
      final List<CatalogSectionResponse>? sections,
      final String? errorMessage}) = _$CatalogSearchResponseImpl;
  _CatalogSearchResponse._() : super._();

  factory _CatalogSearchResponse.fromJson(Map<String, dynamic> json) =
      _$CatalogSearchResponseImpl.fromJson;

  @override
  @JsonKey(name: 'products_count')
  int? get productsCount;
  @override
  @JsonKey(name: 'sections_count')
  int? get sectionsCount;
  @override
  List<CatalogProductResponse>? get products;
  @override
  List<CatalogSectionResponse>? get sections;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$CatalogSearchResponseImplCopyWith<_$CatalogSearchResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
