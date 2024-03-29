// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_product_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DetailProductResponse _$DetailProductResponseFromJson(
    Map<String, dynamic> json) {
  return _DetailProductResponse.fromJson(json);
}

/// @nodoc
mixin _$DetailProductResponse {
  int? get code => throw _privateConstructorUsedError;
  PhotoProductResponse? get photo => throw _privateConstructorUsedError;
  @JsonKey(name: 'breadcrumb', fromJson: _convertBreadcrumb)
  List<BreacumbProductResponse>? get breadcrumb =>
      throw _privateConstructorUsedError;
  BrandProductResponse? get brand => throw _privateConstructorUsedError;
  CategoryProductResponse? get category => throw _privateConstructorUsedError;
  List<OptionProductResponse>? get option => throw _privateConstructorUsedError;
  @JsonKey(name: 'sku', fromJson: _convertSku)
  List<SkuProductResponse>? get sku => throw _privateConstructorUsedError;
  @JsonKey(name: 'stock', fromJson: _convertStock)
  List<StockProductResponse>? get stock => throw _privateConstructorUsedError;
  PlaceProductResponse? get place => throw _privateConstructorUsedError;
  @JsonKey(name: 'char', fromJson: _convertChar)
  List<CharProductResponse>? get char => throw _privateConstructorUsedError;
  @JsonKey(name: 'sections', fromJson: _convertSections)
  List<SectionsProductResponse>? get sections =>
      throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  String? get art => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_discount')
  int? get userDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_buy_for_next_discount')
  int? get userBuyForNextDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_buy_for_next_discount_val')
  int? get userBuyForNextDiscountVal => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_next_discount')
  int? get userNextDiscount => throw _privateConstructorUsedError;
  PriceProductResponse? get price => throw _privateConstructorUsedError;
  String? get r => throw _privateConstructorUsedError;
  String? get e => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailProductResponseCopyWith<DetailProductResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailProductResponseCopyWith<$Res> {
  factory $DetailProductResponseCopyWith(DetailProductResponse value,
          $Res Function(DetailProductResponse) then) =
      _$DetailProductResponseCopyWithImpl<$Res, DetailProductResponse>;
  @useResult
  $Res call(
      {int? code,
      PhotoProductResponse? photo,
      @JsonKey(name: 'breadcrumb', fromJson: _convertBreadcrumb)
      List<BreacumbProductResponse>? breadcrumb,
      BrandProductResponse? brand,
      CategoryProductResponse? category,
      List<OptionProductResponse>? option,
      @JsonKey(name: 'sku', fromJson: _convertSku)
      List<SkuProductResponse>? sku,
      @JsonKey(name: 'stock', fromJson: _convertStock)
      List<StockProductResponse>? stock,
      PlaceProductResponse? place,
      @JsonKey(name: 'char', fromJson: _convertChar)
      List<CharProductResponse>? char,
      @JsonKey(name: 'sections', fromJson: _convertSections)
      List<SectionsProductResponse>? sections,
      String? text,
      String? name,
      int? quantity,
      String? art,
      @JsonKey(name: 'user_discount') int? userDiscount,
      @JsonKey(name: 'user_buy_for_next_discount') int? userBuyForNextDiscount,
      @JsonKey(name: 'user_buy_for_next_discount_val')
      int? userBuyForNextDiscountVal,
      @JsonKey(name: 'user_next_discount') int? userNextDiscount,
      PriceProductResponse? price,
      String? r,
      String? e,
      String? errorMessage});

  $PhotoProductResponseCopyWith<$Res>? get photo;
  $BrandProductResponseCopyWith<$Res>? get brand;
  $CategoryProductResponseCopyWith<$Res>? get category;
  $PlaceProductResponseCopyWith<$Res>? get place;
  $PriceProductResponseCopyWith<$Res>? get price;
}

/// @nodoc
class _$DetailProductResponseCopyWithImpl<$Res,
        $Val extends DetailProductResponse>
    implements $DetailProductResponseCopyWith<$Res> {
  _$DetailProductResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? photo = freezed,
    Object? breadcrumb = freezed,
    Object? brand = freezed,
    Object? category = freezed,
    Object? option = freezed,
    Object? sku = freezed,
    Object? stock = freezed,
    Object? place = freezed,
    Object? char = freezed,
    Object? sections = freezed,
    Object? text = freezed,
    Object? name = freezed,
    Object? quantity = freezed,
    Object? art = freezed,
    Object? userDiscount = freezed,
    Object? userBuyForNextDiscount = freezed,
    Object? userBuyForNextDiscountVal = freezed,
    Object? userNextDiscount = freezed,
    Object? price = freezed,
    Object? r = freezed,
    Object? e = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as PhotoProductResponse?,
      breadcrumb: freezed == breadcrumb
          ? _value.breadcrumb
          : breadcrumb // ignore: cast_nullable_to_non_nullable
              as List<BreacumbProductResponse>?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as BrandProductResponse?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryProductResponse?,
      option: freezed == option
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as List<OptionProductResponse>?,
      sku: freezed == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as List<SkuProductResponse>?,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as List<StockProductResponse>?,
      place: freezed == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as PlaceProductResponse?,
      char: freezed == char
          ? _value.char
          : char // ignore: cast_nullable_to_non_nullable
              as List<CharProductResponse>?,
      sections: freezed == sections
          ? _value.sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<SectionsProductResponse>?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      art: freezed == art
          ? _value.art
          : art // ignore: cast_nullable_to_non_nullable
              as String?,
      userDiscount: freezed == userDiscount
          ? _value.userDiscount
          : userDiscount // ignore: cast_nullable_to_non_nullable
              as int?,
      userBuyForNextDiscount: freezed == userBuyForNextDiscount
          ? _value.userBuyForNextDiscount
          : userBuyForNextDiscount // ignore: cast_nullable_to_non_nullable
              as int?,
      userBuyForNextDiscountVal: freezed == userBuyForNextDiscountVal
          ? _value.userBuyForNextDiscountVal
          : userBuyForNextDiscountVal // ignore: cast_nullable_to_non_nullable
              as int?,
      userNextDiscount: freezed == userNextDiscount
          ? _value.userNextDiscount
          : userNextDiscount // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as PriceProductResponse?,
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
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PhotoProductResponseCopyWith<$Res>? get photo {
    if (_value.photo == null) {
      return null;
    }

    return $PhotoProductResponseCopyWith<$Res>(_value.photo!, (value) {
      return _then(_value.copyWith(photo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BrandProductResponseCopyWith<$Res>? get brand {
    if (_value.brand == null) {
      return null;
    }

    return $BrandProductResponseCopyWith<$Res>(_value.brand!, (value) {
      return _then(_value.copyWith(brand: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryProductResponseCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CategoryProductResponseCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PlaceProductResponseCopyWith<$Res>? get place {
    if (_value.place == null) {
      return null;
    }

    return $PlaceProductResponseCopyWith<$Res>(_value.place!, (value) {
      return _then(_value.copyWith(place: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PriceProductResponseCopyWith<$Res>? get price {
    if (_value.price == null) {
      return null;
    }

    return $PriceProductResponseCopyWith<$Res>(_value.price!, (value) {
      return _then(_value.copyWith(price: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DetailProductResponseImplCopyWith<$Res>
    implements $DetailProductResponseCopyWith<$Res> {
  factory _$$DetailProductResponseImplCopyWith(
          _$DetailProductResponseImpl value,
          $Res Function(_$DetailProductResponseImpl) then) =
      __$$DetailProductResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? code,
      PhotoProductResponse? photo,
      @JsonKey(name: 'breadcrumb', fromJson: _convertBreadcrumb)
      List<BreacumbProductResponse>? breadcrumb,
      BrandProductResponse? brand,
      CategoryProductResponse? category,
      List<OptionProductResponse>? option,
      @JsonKey(name: 'sku', fromJson: _convertSku)
      List<SkuProductResponse>? sku,
      @JsonKey(name: 'stock', fromJson: _convertStock)
      List<StockProductResponse>? stock,
      PlaceProductResponse? place,
      @JsonKey(name: 'char', fromJson: _convertChar)
      List<CharProductResponse>? char,
      @JsonKey(name: 'sections', fromJson: _convertSections)
      List<SectionsProductResponse>? sections,
      String? text,
      String? name,
      int? quantity,
      String? art,
      @JsonKey(name: 'user_discount') int? userDiscount,
      @JsonKey(name: 'user_buy_for_next_discount') int? userBuyForNextDiscount,
      @JsonKey(name: 'user_buy_for_next_discount_val')
      int? userBuyForNextDiscountVal,
      @JsonKey(name: 'user_next_discount') int? userNextDiscount,
      PriceProductResponse? price,
      String? r,
      String? e,
      String? errorMessage});

  @override
  $PhotoProductResponseCopyWith<$Res>? get photo;
  @override
  $BrandProductResponseCopyWith<$Res>? get brand;
  @override
  $CategoryProductResponseCopyWith<$Res>? get category;
  @override
  $PlaceProductResponseCopyWith<$Res>? get place;
  @override
  $PriceProductResponseCopyWith<$Res>? get price;
}

/// @nodoc
class __$$DetailProductResponseImplCopyWithImpl<$Res>
    extends _$DetailProductResponseCopyWithImpl<$Res,
        _$DetailProductResponseImpl>
    implements _$$DetailProductResponseImplCopyWith<$Res> {
  __$$DetailProductResponseImplCopyWithImpl(_$DetailProductResponseImpl _value,
      $Res Function(_$DetailProductResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? photo = freezed,
    Object? breadcrumb = freezed,
    Object? brand = freezed,
    Object? category = freezed,
    Object? option = freezed,
    Object? sku = freezed,
    Object? stock = freezed,
    Object? place = freezed,
    Object? char = freezed,
    Object? sections = freezed,
    Object? text = freezed,
    Object? name = freezed,
    Object? quantity = freezed,
    Object? art = freezed,
    Object? userDiscount = freezed,
    Object? userBuyForNextDiscount = freezed,
    Object? userBuyForNextDiscountVal = freezed,
    Object? userNextDiscount = freezed,
    Object? price = freezed,
    Object? r = freezed,
    Object? e = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$DetailProductResponseImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as PhotoProductResponse?,
      breadcrumb: freezed == breadcrumb
          ? _value._breadcrumb
          : breadcrumb // ignore: cast_nullable_to_non_nullable
              as List<BreacumbProductResponse>?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as BrandProductResponse?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryProductResponse?,
      option: freezed == option
          ? _value._option
          : option // ignore: cast_nullable_to_non_nullable
              as List<OptionProductResponse>?,
      sku: freezed == sku
          ? _value._sku
          : sku // ignore: cast_nullable_to_non_nullable
              as List<SkuProductResponse>?,
      stock: freezed == stock
          ? _value._stock
          : stock // ignore: cast_nullable_to_non_nullable
              as List<StockProductResponse>?,
      place: freezed == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as PlaceProductResponse?,
      char: freezed == char
          ? _value._char
          : char // ignore: cast_nullable_to_non_nullable
              as List<CharProductResponse>?,
      sections: freezed == sections
          ? _value._sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<SectionsProductResponse>?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      art: freezed == art
          ? _value.art
          : art // ignore: cast_nullable_to_non_nullable
              as String?,
      userDiscount: freezed == userDiscount
          ? _value.userDiscount
          : userDiscount // ignore: cast_nullable_to_non_nullable
              as int?,
      userBuyForNextDiscount: freezed == userBuyForNextDiscount
          ? _value.userBuyForNextDiscount
          : userBuyForNextDiscount // ignore: cast_nullable_to_non_nullable
              as int?,
      userBuyForNextDiscountVal: freezed == userBuyForNextDiscountVal
          ? _value.userBuyForNextDiscountVal
          : userBuyForNextDiscountVal // ignore: cast_nullable_to_non_nullable
              as int?,
      userNextDiscount: freezed == userNextDiscount
          ? _value.userNextDiscount
          : userNextDiscount // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as PriceProductResponse?,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailProductResponseImpl extends _DetailProductResponse {
  _$DetailProductResponseImpl(
      {this.code,
      this.photo,
      @JsonKey(name: 'breadcrumb', fromJson: _convertBreadcrumb)
      final List<BreacumbProductResponse>? breadcrumb,
      this.brand,
      this.category,
      final List<OptionProductResponse>? option,
      @JsonKey(name: 'sku', fromJson: _convertSku)
      final List<SkuProductResponse>? sku,
      @JsonKey(name: 'stock', fromJson: _convertStock)
      final List<StockProductResponse>? stock,
      this.place,
      @JsonKey(name: 'char', fromJson: _convertChar)
      final List<CharProductResponse>? char,
      @JsonKey(name: 'sections', fromJson: _convertSections)
      final List<SectionsProductResponse>? sections,
      this.text,
      this.name,
      this.quantity,
      this.art,
      @JsonKey(name: 'user_discount') this.userDiscount,
      @JsonKey(name: 'user_buy_for_next_discount') this.userBuyForNextDiscount,
      @JsonKey(name: 'user_buy_for_next_discount_val')
      this.userBuyForNextDiscountVal,
      @JsonKey(name: 'user_next_discount') this.userNextDiscount,
      this.price,
      this.r,
      this.e,
      this.errorMessage})
      : _breadcrumb = breadcrumb,
        _option = option,
        _sku = sku,
        _stock = stock,
        _char = char,
        _sections = sections,
        super._();

  factory _$DetailProductResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailProductResponseImplFromJson(json);

  @override
  final int? code;
  @override
  final PhotoProductResponse? photo;
  final List<BreacumbProductResponse>? _breadcrumb;
  @override
  @JsonKey(name: 'breadcrumb', fromJson: _convertBreadcrumb)
  List<BreacumbProductResponse>? get breadcrumb {
    final value = _breadcrumb;
    if (value == null) return null;
    if (_breadcrumb is EqualUnmodifiableListView) return _breadcrumb;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final BrandProductResponse? brand;
  @override
  final CategoryProductResponse? category;
  final List<OptionProductResponse>? _option;
  @override
  List<OptionProductResponse>? get option {
    final value = _option;
    if (value == null) return null;
    if (_option is EqualUnmodifiableListView) return _option;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SkuProductResponse>? _sku;
  @override
  @JsonKey(name: 'sku', fromJson: _convertSku)
  List<SkuProductResponse>? get sku {
    final value = _sku;
    if (value == null) return null;
    if (_sku is EqualUnmodifiableListView) return _sku;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<StockProductResponse>? _stock;
  @override
  @JsonKey(name: 'stock', fromJson: _convertStock)
  List<StockProductResponse>? get stock {
    final value = _stock;
    if (value == null) return null;
    if (_stock is EqualUnmodifiableListView) return _stock;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final PlaceProductResponse? place;
  final List<CharProductResponse>? _char;
  @override
  @JsonKey(name: 'char', fromJson: _convertChar)
  List<CharProductResponse>? get char {
    final value = _char;
    if (value == null) return null;
    if (_char is EqualUnmodifiableListView) return _char;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SectionsProductResponse>? _sections;
  @override
  @JsonKey(name: 'sections', fromJson: _convertSections)
  List<SectionsProductResponse>? get sections {
    final value = _sections;
    if (value == null) return null;
    if (_sections is EqualUnmodifiableListView) return _sections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? text;
  @override
  final String? name;
  @override
  final int? quantity;
  @override
  final String? art;
  @override
  @JsonKey(name: 'user_discount')
  final int? userDiscount;
  @override
  @JsonKey(name: 'user_buy_for_next_discount')
  final int? userBuyForNextDiscount;
  @override
  @JsonKey(name: 'user_buy_for_next_discount_val')
  final int? userBuyForNextDiscountVal;
  @override
  @JsonKey(name: 'user_next_discount')
  final int? userNextDiscount;
  @override
  final PriceProductResponse? price;
  @override
  final String? r;
  @override
  final String? e;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'DetailProductResponse(code: $code, photo: $photo, breadcrumb: $breadcrumb, brand: $brand, category: $category, option: $option, sku: $sku, stock: $stock, place: $place, char: $char, sections: $sections, text: $text, name: $name, quantity: $quantity, art: $art, userDiscount: $userDiscount, userBuyForNextDiscount: $userBuyForNextDiscount, userBuyForNextDiscountVal: $userBuyForNextDiscountVal, userNextDiscount: $userNextDiscount, price: $price, r: $r, e: $e, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailProductResponseImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            const DeepCollectionEquality()
                .equals(other._breadcrumb, _breadcrumb) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality().equals(other._option, _option) &&
            const DeepCollectionEquality().equals(other._sku, _sku) &&
            const DeepCollectionEquality().equals(other._stock, _stock) &&
            (identical(other.place, place) || other.place == place) &&
            const DeepCollectionEquality().equals(other._char, _char) &&
            const DeepCollectionEquality().equals(other._sections, _sections) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.art, art) || other.art == art) &&
            (identical(other.userDiscount, userDiscount) ||
                other.userDiscount == userDiscount) &&
            (identical(other.userBuyForNextDiscount, userBuyForNextDiscount) ||
                other.userBuyForNextDiscount == userBuyForNextDiscount) &&
            (identical(other.userBuyForNextDiscountVal,
                    userBuyForNextDiscountVal) ||
                other.userBuyForNextDiscountVal == userBuyForNextDiscountVal) &&
            (identical(other.userNextDiscount, userNextDiscount) ||
                other.userNextDiscount == userNextDiscount) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.r, r) || other.r == r) &&
            (identical(other.e, e) || other.e == e) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        code,
        photo,
        const DeepCollectionEquality().hash(_breadcrumb),
        brand,
        category,
        const DeepCollectionEquality().hash(_option),
        const DeepCollectionEquality().hash(_sku),
        const DeepCollectionEquality().hash(_stock),
        place,
        const DeepCollectionEquality().hash(_char),
        const DeepCollectionEquality().hash(_sections),
        text,
        name,
        quantity,
        art,
        userDiscount,
        userBuyForNextDiscount,
        userBuyForNextDiscountVal,
        userNextDiscount,
        price,
        r,
        e,
        errorMessage
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailProductResponseImplCopyWith<_$DetailProductResponseImpl>
      get copyWith => __$$DetailProductResponseImplCopyWithImpl<
          _$DetailProductResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailProductResponseImplToJson(
      this,
    );
  }
}

abstract class _DetailProductResponse extends DetailProductResponse {
  factory _DetailProductResponse(
      {final int? code,
      final PhotoProductResponse? photo,
      @JsonKey(name: 'breadcrumb', fromJson: _convertBreadcrumb)
      final List<BreacumbProductResponse>? breadcrumb,
      final BrandProductResponse? brand,
      final CategoryProductResponse? category,
      final List<OptionProductResponse>? option,
      @JsonKey(name: 'sku', fromJson: _convertSku)
      final List<SkuProductResponse>? sku,
      @JsonKey(name: 'stock', fromJson: _convertStock)
      final List<StockProductResponse>? stock,
      final PlaceProductResponse? place,
      @JsonKey(name: 'char', fromJson: _convertChar)
      final List<CharProductResponse>? char,
      @JsonKey(name: 'sections', fromJson: _convertSections)
      final List<SectionsProductResponse>? sections,
      final String? text,
      final String? name,
      final int? quantity,
      final String? art,
      @JsonKey(name: 'user_discount') final int? userDiscount,
      @JsonKey(name: 'user_buy_for_next_discount')
      final int? userBuyForNextDiscount,
      @JsonKey(name: 'user_buy_for_next_discount_val')
      final int? userBuyForNextDiscountVal,
      @JsonKey(name: 'user_next_discount') final int? userNextDiscount,
      final PriceProductResponse? price,
      final String? r,
      final String? e,
      final String? errorMessage}) = _$DetailProductResponseImpl;
  _DetailProductResponse._() : super._();

  factory _DetailProductResponse.fromJson(Map<String, dynamic> json) =
      _$DetailProductResponseImpl.fromJson;

  @override
  int? get code;
  @override
  PhotoProductResponse? get photo;
  @override
  @JsonKey(name: 'breadcrumb', fromJson: _convertBreadcrumb)
  List<BreacumbProductResponse>? get breadcrumb;
  @override
  BrandProductResponse? get brand;
  @override
  CategoryProductResponse? get category;
  @override
  List<OptionProductResponse>? get option;
  @override
  @JsonKey(name: 'sku', fromJson: _convertSku)
  List<SkuProductResponse>? get sku;
  @override
  @JsonKey(name: 'stock', fromJson: _convertStock)
  List<StockProductResponse>? get stock;
  @override
  PlaceProductResponse? get place;
  @override
  @JsonKey(name: 'char', fromJson: _convertChar)
  List<CharProductResponse>? get char;
  @override
  @JsonKey(name: 'sections', fromJson: _convertSections)
  List<SectionsProductResponse>? get sections;
  @override
  String? get text;
  @override
  String? get name;
  @override
  int? get quantity;
  @override
  String? get art;
  @override
  @JsonKey(name: 'user_discount')
  int? get userDiscount;
  @override
  @JsonKey(name: 'user_buy_for_next_discount')
  int? get userBuyForNextDiscount;
  @override
  @JsonKey(name: 'user_buy_for_next_discount_val')
  int? get userBuyForNextDiscountVal;
  @override
  @JsonKey(name: 'user_next_discount')
  int? get userNextDiscount;
  @override
  PriceProductResponse? get price;
  @override
  String? get r;
  @override
  String? get e;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$DetailProductResponseImplCopyWith<_$DetailProductResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
