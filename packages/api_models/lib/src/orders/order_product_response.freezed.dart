// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_product_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderProductResponse _$OrderProductResponseFromJson(Map<String, dynamic> json) {
  return _OrderProductResponse.fromJson(json);
}

/// @nodoc
mixin _$OrderProductResponse {
  String? get code => throw _privateConstructorUsedError;
  String? get img => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  String? get count => throw _privateConstructorUsedError;
  @JsonKey(name: 'promocode_info')
  String? get promocodeInfo => throw _privateConstructorUsedError;
  String? get brand => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get sku => throw _privateConstructorUsedError;
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
  String? get promo => throw _privateConstructorUsedError;
  @JsonKey(name: 'promo_value')
  int? get promoValue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderProductResponseCopyWith<OrderProductResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderProductResponseCopyWith<$Res> {
  factory $OrderProductResponseCopyWith(OrderProductResponse value,
          $Res Function(OrderProductResponse) then) =
      _$OrderProductResponseCopyWithImpl<$Res, OrderProductResponse>;
  @useResult
  $Res call(
      {String? code,
      String? img,
      String? price,
      String? count,
      @JsonKey(name: 'promocode_info') String? promocodeInfo,
      String? brand,
      String? name,
      String? sku,
      String? type,
      String? identifier,
      @JsonKey(name: "section_categories_path")
      List<String>? sectionCategoriesPath,
      @JsonKey(name: "product_categories_path")
      List<String>? productCategoriesPath,
      @JsonKey(name: "title_screen") String? titleScreen,
      @JsonKey(name: "search_query") String? searchQuery,
      String? promo,
      @JsonKey(name: 'promo_value') int? promoValue});
}

/// @nodoc
class _$OrderProductResponseCopyWithImpl<$Res,
        $Val extends OrderProductResponse>
    implements $OrderProductResponseCopyWith<$Res> {
  _$OrderProductResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? img = freezed,
    Object? price = freezed,
    Object? count = freezed,
    Object? promocodeInfo = freezed,
    Object? brand = freezed,
    Object? name = freezed,
    Object? sku = freezed,
    Object? type = freezed,
    Object? identifier = freezed,
    Object? sectionCategoriesPath = freezed,
    Object? productCategoriesPath = freezed,
    Object? titleScreen = freezed,
    Object? searchQuery = freezed,
    Object? promo = freezed,
    Object? promoValue = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      img: freezed == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as String?,
      promocodeInfo: freezed == promocodeInfo
          ? _value.promocodeInfo
          : promocodeInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      sku: freezed == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
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
      promo: freezed == promo
          ? _value.promo
          : promo // ignore: cast_nullable_to_non_nullable
              as String?,
      promoValue: freezed == promoValue
          ? _value.promoValue
          : promoValue // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderProductResponseImplCopyWith<$Res>
    implements $OrderProductResponseCopyWith<$Res> {
  factory _$$OrderProductResponseImplCopyWith(_$OrderProductResponseImpl value,
          $Res Function(_$OrderProductResponseImpl) then) =
      __$$OrderProductResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? code,
      String? img,
      String? price,
      String? count,
      @JsonKey(name: 'promocode_info') String? promocodeInfo,
      String? brand,
      String? name,
      String? sku,
      String? type,
      String? identifier,
      @JsonKey(name: "section_categories_path")
      List<String>? sectionCategoriesPath,
      @JsonKey(name: "product_categories_path")
      List<String>? productCategoriesPath,
      @JsonKey(name: "title_screen") String? titleScreen,
      @JsonKey(name: "search_query") String? searchQuery,
      String? promo,
      @JsonKey(name: 'promo_value') int? promoValue});
}

/// @nodoc
class __$$OrderProductResponseImplCopyWithImpl<$Res>
    extends _$OrderProductResponseCopyWithImpl<$Res, _$OrderProductResponseImpl>
    implements _$$OrderProductResponseImplCopyWith<$Res> {
  __$$OrderProductResponseImplCopyWithImpl(_$OrderProductResponseImpl _value,
      $Res Function(_$OrderProductResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? img = freezed,
    Object? price = freezed,
    Object? count = freezed,
    Object? promocodeInfo = freezed,
    Object? brand = freezed,
    Object? name = freezed,
    Object? sku = freezed,
    Object? type = freezed,
    Object? identifier = freezed,
    Object? sectionCategoriesPath = freezed,
    Object? productCategoriesPath = freezed,
    Object? titleScreen = freezed,
    Object? searchQuery = freezed,
    Object? promo = freezed,
    Object? promoValue = freezed,
  }) {
    return _then(_$OrderProductResponseImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      img: freezed == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as String?,
      promocodeInfo: freezed == promocodeInfo
          ? _value.promocodeInfo
          : promocodeInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      sku: freezed == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
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
      promo: freezed == promo
          ? _value.promo
          : promo // ignore: cast_nullable_to_non_nullable
              as String?,
      promoValue: freezed == promoValue
          ? _value.promoValue
          : promoValue // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderProductResponseImpl extends _OrderProductResponse {
  _$OrderProductResponseImpl(
      {this.code,
      this.img,
      this.price,
      this.count,
      @JsonKey(name: 'promocode_info') this.promocodeInfo,
      this.brand,
      this.name,
      this.sku,
      this.type,
      this.identifier,
      @JsonKey(name: "section_categories_path")
      final List<String>? sectionCategoriesPath,
      @JsonKey(name: "product_categories_path")
      final List<String>? productCategoriesPath,
      @JsonKey(name: "title_screen") this.titleScreen,
      @JsonKey(name: "search_query") this.searchQuery,
      this.promo,
      @JsonKey(name: 'promo_value') this.promoValue})
      : _sectionCategoriesPath = sectionCategoriesPath,
        _productCategoriesPath = productCategoriesPath,
        super._();

  factory _$OrderProductResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderProductResponseImplFromJson(json);

  @override
  final String? code;
  @override
  final String? img;
  @override
  final String? price;
  @override
  final String? count;
  @override
  @JsonKey(name: 'promocode_info')
  final String? promocodeInfo;
  @override
  final String? brand;
  @override
  final String? name;
  @override
  final String? sku;
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
  final String? promo;
  @override
  @JsonKey(name: 'promo_value')
  final int? promoValue;

  @override
  String toString() {
    return 'OrderProductResponse(code: $code, img: $img, price: $price, count: $count, promocodeInfo: $promocodeInfo, brand: $brand, name: $name, sku: $sku, type: $type, identifier: $identifier, sectionCategoriesPath: $sectionCategoriesPath, productCategoriesPath: $productCategoriesPath, titleScreen: $titleScreen, searchQuery: $searchQuery, promo: $promo, promoValue: $promoValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderProductResponseImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.img, img) || other.img == img) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.promocodeInfo, promocodeInfo) ||
                other.promocodeInfo == promocodeInfo) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.sku, sku) || other.sku == sku) &&
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
            (identical(other.promo, promo) || other.promo == promo) &&
            (identical(other.promoValue, promoValue) ||
                other.promoValue == promoValue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      code,
      img,
      price,
      count,
      promocodeInfo,
      brand,
      name,
      sku,
      type,
      identifier,
      const DeepCollectionEquality().hash(_sectionCategoriesPath),
      const DeepCollectionEquality().hash(_productCategoriesPath),
      titleScreen,
      searchQuery,
      promo,
      promoValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderProductResponseImplCopyWith<_$OrderProductResponseImpl>
      get copyWith =>
          __$$OrderProductResponseImplCopyWithImpl<_$OrderProductResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderProductResponseImplToJson(
      this,
    );
  }
}

abstract class _OrderProductResponse extends OrderProductResponse {
  factory _OrderProductResponse(
          {final String? code,
          final String? img,
          final String? price,
          final String? count,
          @JsonKey(name: 'promocode_info') final String? promocodeInfo,
          final String? brand,
          final String? name,
          final String? sku,
          final String? type,
          final String? identifier,
          @JsonKey(name: "section_categories_path")
          final List<String>? sectionCategoriesPath,
          @JsonKey(name: "product_categories_path")
          final List<String>? productCategoriesPath,
          @JsonKey(name: "title_screen") final String? titleScreen,
          @JsonKey(name: "search_query") final String? searchQuery,
          final String? promo,
          @JsonKey(name: 'promo_value') final int? promoValue}) =
      _$OrderProductResponseImpl;
  _OrderProductResponse._() : super._();

  factory _OrderProductResponse.fromJson(Map<String, dynamic> json) =
      _$OrderProductResponseImpl.fromJson;

  @override
  String? get code;
  @override
  String? get img;
  @override
  String? get price;
  @override
  String? get count;
  @override
  @JsonKey(name: 'promocode_info')
  String? get promocodeInfo;
  @override
  String? get brand;
  @override
  String? get name;
  @override
  String? get sku;
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
  String? get promo;
  @override
  @JsonKey(name: 'promo_value')
  int? get promoValue;
  @override
  @JsonKey(ignore: true)
  _$$OrderProductResponseImplCopyWith<_$OrderProductResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
