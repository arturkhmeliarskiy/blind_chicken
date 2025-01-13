// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basket_full_info_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BasketFullInfoItemResponse _$BasketFullInfoItemResponseFromJson(
    Map<String, dynamic> json) {
  return _BasketFullInfoItemResponse.fromJson(json);
}

/// @nodoc
mixin _$BasketFullInfoItemResponse {
  String? get code => throw _privateConstructorUsedError;
  String? get sku => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get identifier => throw _privateConstructorUsedError;
  @JsonKey(name: "section_categories_path")
  List<String>? get sectionCategoriesPath => throw _privateConstructorUsedError;
  @JsonKey(name: "product_categories_path")
  List<String>? get productCategoriesPath => throw _privateConstructorUsedError;
  @JsonKey(name: "title_screen")
  String? get titleScreen => throw _privateConstructorUsedError;
  @JsonKey(name: "search_query")
  String? get searchQuery => throw _privateConstructorUsedError;
  BasketDataInfoResponse? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'sku_name')
  String? get skuName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BasketFullInfoItemResponseCopyWith<BasketFullInfoItemResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasketFullInfoItemResponseCopyWith<$Res> {
  factory $BasketFullInfoItemResponseCopyWith(BasketFullInfoItemResponse value,
          $Res Function(BasketFullInfoItemResponse) then) =
      _$BasketFullInfoItemResponseCopyWithImpl<$Res,
          BasketFullInfoItemResponse>;
  @useResult
  $Res call(
      {String? code,
      String? sku,
      int? count,
      String? type,
      String? identifier,
      @JsonKey(name: "section_categories_path")
      List<String>? sectionCategoriesPath,
      @JsonKey(name: "product_categories_path")
      List<String>? productCategoriesPath,
      @JsonKey(name: "title_screen") String? titleScreen,
      @JsonKey(name: "search_query") String? searchQuery,
      BasketDataInfoResponse? data,
      @JsonKey(name: 'sku_name') String? skuName});

  $BasketDataInfoResponseCopyWith<$Res>? get data;
}

/// @nodoc
class _$BasketFullInfoItemResponseCopyWithImpl<$Res,
        $Val extends BasketFullInfoItemResponse>
    implements $BasketFullInfoItemResponseCopyWith<$Res> {
  _$BasketFullInfoItemResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? sku = freezed,
    Object? count = freezed,
    Object? type = freezed,
    Object? identifier = freezed,
    Object? sectionCategoriesPath = freezed,
    Object? productCategoriesPath = freezed,
    Object? titleScreen = freezed,
    Object? searchQuery = freezed,
    Object? data = freezed,
    Object? skuName = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      sku: freezed == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String?,
      sectionCategoriesPath: freezed == sectionCategoriesPath
          ? _value.sectionCategoriesPath
          : sectionCategoriesPath // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      productCategoriesPath: freezed == productCategoriesPath
          ? _value.productCategoriesPath
          : productCategoriesPath // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      titleScreen: freezed == titleScreen
          ? _value.titleScreen
          : titleScreen // ignore: cast_nullable_to_non_nullable
              as String?,
      searchQuery: freezed == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BasketDataInfoResponse?,
      skuName: freezed == skuName
          ? _value.skuName
          : skuName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BasketDataInfoResponseCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $BasketDataInfoResponseCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BasketFullInfoItemResponseImplCopyWith<$Res>
    implements $BasketFullInfoItemResponseCopyWith<$Res> {
  factory _$$BasketFullInfoItemResponseImplCopyWith(
          _$BasketFullInfoItemResponseImpl value,
          $Res Function(_$BasketFullInfoItemResponseImpl) then) =
      __$$BasketFullInfoItemResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? code,
      String? sku,
      int? count,
      String? type,
      String? identifier,
      @JsonKey(name: "section_categories_path")
      List<String>? sectionCategoriesPath,
      @JsonKey(name: "product_categories_path")
      List<String>? productCategoriesPath,
      @JsonKey(name: "title_screen") String? titleScreen,
      @JsonKey(name: "search_query") String? searchQuery,
      BasketDataInfoResponse? data,
      @JsonKey(name: 'sku_name') String? skuName});

  @override
  $BasketDataInfoResponseCopyWith<$Res>? get data;
}

/// @nodoc
class __$$BasketFullInfoItemResponseImplCopyWithImpl<$Res>
    extends _$BasketFullInfoItemResponseCopyWithImpl<$Res,
        _$BasketFullInfoItemResponseImpl>
    implements _$$BasketFullInfoItemResponseImplCopyWith<$Res> {
  __$$BasketFullInfoItemResponseImplCopyWithImpl(
      _$BasketFullInfoItemResponseImpl _value,
      $Res Function(_$BasketFullInfoItemResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? sku = freezed,
    Object? count = freezed,
    Object? type = freezed,
    Object? identifier = freezed,
    Object? sectionCategoriesPath = freezed,
    Object? productCategoriesPath = freezed,
    Object? titleScreen = freezed,
    Object? searchQuery = freezed,
    Object? data = freezed,
    Object? skuName = freezed,
  }) {
    return _then(_$BasketFullInfoItemResponseImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      sku: freezed == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String?,
      sectionCategoriesPath: freezed == sectionCategoriesPath
          ? _value._sectionCategoriesPath
          : sectionCategoriesPath // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      productCategoriesPath: freezed == productCategoriesPath
          ? _value._productCategoriesPath
          : productCategoriesPath // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      titleScreen: freezed == titleScreen
          ? _value.titleScreen
          : titleScreen // ignore: cast_nullable_to_non_nullable
              as String?,
      searchQuery: freezed == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BasketDataInfoResponse?,
      skuName: freezed == skuName
          ? _value.skuName
          : skuName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BasketFullInfoItemResponseImpl extends _BasketFullInfoItemResponse {
  _$BasketFullInfoItemResponseImpl(
      {this.code,
      this.sku,
      this.count,
      this.type,
      this.identifier,
      @JsonKey(name: "section_categories_path")
      final List<String>? sectionCategoriesPath,
      @JsonKey(name: "product_categories_path")
      final List<String>? productCategoriesPath,
      @JsonKey(name: "title_screen") this.titleScreen,
      @JsonKey(name: "search_query") this.searchQuery,
      this.data,
      @JsonKey(name: 'sku_name') this.skuName})
      : _sectionCategoriesPath = sectionCategoriesPath,
        _productCategoriesPath = productCategoriesPath,
        super._();

  factory _$BasketFullInfoItemResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BasketFullInfoItemResponseImplFromJson(json);

  @override
  final String? code;
  @override
  final String? sku;
  @override
  final int? count;
  @override
  final String? type;
  @override
  final String? identifier;
  final List<String>? _sectionCategoriesPath;
  @override
  @JsonKey(name: "section_categories_path")
  List<String>? get sectionCategoriesPath {
    final value = _sectionCategoriesPath;
    if (value == null) return null;
    if (_sectionCategoriesPath is EqualUnmodifiableListView)
      return _sectionCategoriesPath;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _productCategoriesPath;
  @override
  @JsonKey(name: "product_categories_path")
  List<String>? get productCategoriesPath {
    final value = _productCategoriesPath;
    if (value == null) return null;
    if (_productCategoriesPath is EqualUnmodifiableListView)
      return _productCategoriesPath;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "title_screen")
  final String? titleScreen;
  @override
  @JsonKey(name: "search_query")
  final String? searchQuery;
  @override
  final BasketDataInfoResponse? data;
  @override
  @JsonKey(name: 'sku_name')
  final String? skuName;

  @override
  String toString() {
    return 'BasketFullInfoItemResponse(code: $code, sku: $sku, count: $count, type: $type, identifier: $identifier, sectionCategoriesPath: $sectionCategoriesPath, productCategoriesPath: $productCategoriesPath, titleScreen: $titleScreen, searchQuery: $searchQuery, data: $data, skuName: $skuName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasketFullInfoItemResponseImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            const DeepCollectionEquality()
                .equals(other._sectionCategoriesPath, _sectionCategoriesPath) &&
            const DeepCollectionEquality()
                .equals(other._productCategoriesPath, _productCategoriesPath) &&
            (identical(other.titleScreen, titleScreen) ||
                other.titleScreen == titleScreen) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.skuName, skuName) || other.skuName == skuName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      code,
      sku,
      count,
      type,
      identifier,
      const DeepCollectionEquality().hash(_sectionCategoriesPath),
      const DeepCollectionEquality().hash(_productCategoriesPath),
      titleScreen,
      searchQuery,
      data,
      skuName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BasketFullInfoItemResponseImplCopyWith<_$BasketFullInfoItemResponseImpl>
      get copyWith => __$$BasketFullInfoItemResponseImplCopyWithImpl<
          _$BasketFullInfoItemResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BasketFullInfoItemResponseImplToJson(
      this,
    );
  }
}

abstract class _BasketFullInfoItemResponse extends BasketFullInfoItemResponse {
  factory _BasketFullInfoItemResponse(
          {final String? code,
          final String? sku,
          final int? count,
          final String? type,
          final String? identifier,
          @JsonKey(name: "section_categories_path")
          final List<String>? sectionCategoriesPath,
          @JsonKey(name: "product_categories_path")
          final List<String>? productCategoriesPath,
          @JsonKey(name: "title_screen") final String? titleScreen,
          @JsonKey(name: "search_query") final String? searchQuery,
          final BasketDataInfoResponse? data,
          @JsonKey(name: 'sku_name') final String? skuName}) =
      _$BasketFullInfoItemResponseImpl;
  _BasketFullInfoItemResponse._() : super._();

  factory _BasketFullInfoItemResponse.fromJson(Map<String, dynamic> json) =
      _$BasketFullInfoItemResponseImpl.fromJson;

  @override
  String? get code;
  @override
  String? get sku;
  @override
  int? get count;
  @override
  String? get type;
  @override
  String? get identifier;
  @override
  @JsonKey(name: "section_categories_path")
  List<String>? get sectionCategoriesPath;
  @override
  @JsonKey(name: "product_categories_path")
  List<String>? get productCategoriesPath;
  @override
  @JsonKey(name: "title_screen")
  String? get titleScreen;
  @override
  @JsonKey(name: "search_query")
  String? get searchQuery;
  @override
  BasketDataInfoResponse? get data;
  @override
  @JsonKey(name: 'sku_name')
  String? get skuName;
  @override
  @JsonKey(ignore: true)
  _$$BasketFullInfoItemResponseImplCopyWith<_$BasketFullInfoItemResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
