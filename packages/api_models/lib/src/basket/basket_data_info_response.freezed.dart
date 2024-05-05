// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basket_data_info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BasketDataInfoResponse _$BasketDataInfoResponseFromJson(
    Map<String, dynamic> json) {
  return _BasketDataInfoResponse.fromJson(json);
}

/// @nodoc
mixin _$BasketDataInfoResponse {
  String? get foto => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'base_price')
  int? get basePrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_1')
  int? get price1 => throw _privateConstructorUsedError;
  @JsonKey(name: 'base_price_1')
  int? get basePrice1 => throw _privateConstructorUsedError;
  @JsonKey(name: 'promo_discount_1')
  int? get promoDiscount1 => throw _privateConstructorUsedError;
  @JsonKey(name: 'loyalty_discount_1')
  double? get loyaltyDiscount1 => throw _privateConstructorUsedError;
  BasketBrandResponse? get brand => throw _privateConstructorUsedError;
  BasketCategoryResponse? get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'name_view')
  String? get nameView => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BasketDataInfoResponseCopyWith<BasketDataInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasketDataInfoResponseCopyWith<$Res> {
  factory $BasketDataInfoResponseCopyWith(BasketDataInfoResponse value,
          $Res Function(BasketDataInfoResponse) then) =
      _$BasketDataInfoResponseCopyWithImpl<$Res, BasketDataInfoResponse>;
  @useResult
  $Res call(
      {String? foto,
      int? price,
      @JsonKey(name: 'base_price') int? basePrice,
      @JsonKey(name: 'price_1') int? price1,
      @JsonKey(name: 'base_price_1') int? basePrice1,
      @JsonKey(name: 'promo_discount_1') int? promoDiscount1,
      @JsonKey(name: 'loyalty_discount_1') double? loyaltyDiscount1,
      BasketBrandResponse? brand,
      BasketCategoryResponse? category,
      @JsonKey(name: 'name_view') String? nameView});

  $BasketBrandResponseCopyWith<$Res>? get brand;
  $BasketCategoryResponseCopyWith<$Res>? get category;
}

/// @nodoc
class _$BasketDataInfoResponseCopyWithImpl<$Res,
        $Val extends BasketDataInfoResponse>
    implements $BasketDataInfoResponseCopyWith<$Res> {
  _$BasketDataInfoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foto = freezed,
    Object? price = freezed,
    Object? basePrice = freezed,
    Object? price1 = freezed,
    Object? basePrice1 = freezed,
    Object? promoDiscount1 = freezed,
    Object? loyaltyDiscount1 = freezed,
    Object? brand = freezed,
    Object? category = freezed,
    Object? nameView = freezed,
  }) {
    return _then(_value.copyWith(
      foto: freezed == foto
          ? _value.foto
          : foto // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      basePrice: freezed == basePrice
          ? _value.basePrice
          : basePrice // ignore: cast_nullable_to_non_nullable
              as int?,
      price1: freezed == price1
          ? _value.price1
          : price1 // ignore: cast_nullable_to_non_nullable
              as int?,
      basePrice1: freezed == basePrice1
          ? _value.basePrice1
          : basePrice1 // ignore: cast_nullable_to_non_nullable
              as int?,
      promoDiscount1: freezed == promoDiscount1
          ? _value.promoDiscount1
          : promoDiscount1 // ignore: cast_nullable_to_non_nullable
              as int?,
      loyaltyDiscount1: freezed == loyaltyDiscount1
          ? _value.loyaltyDiscount1
          : loyaltyDiscount1 // ignore: cast_nullable_to_non_nullable
              as double?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as BasketBrandResponse?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as BasketCategoryResponse?,
      nameView: freezed == nameView
          ? _value.nameView
          : nameView // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BasketBrandResponseCopyWith<$Res>? get brand {
    if (_value.brand == null) {
      return null;
    }

    return $BasketBrandResponseCopyWith<$Res>(_value.brand!, (value) {
      return _then(_value.copyWith(brand: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BasketCategoryResponseCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $BasketCategoryResponseCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BasketDataInfoResponseImplCopyWith<$Res>
    implements $BasketDataInfoResponseCopyWith<$Res> {
  factory _$$BasketDataInfoResponseImplCopyWith(
          _$BasketDataInfoResponseImpl value,
          $Res Function(_$BasketDataInfoResponseImpl) then) =
      __$$BasketDataInfoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? foto,
      int? price,
      @JsonKey(name: 'base_price') int? basePrice,
      @JsonKey(name: 'price_1') int? price1,
      @JsonKey(name: 'base_price_1') int? basePrice1,
      @JsonKey(name: 'promo_discount_1') int? promoDiscount1,
      @JsonKey(name: 'loyalty_discount_1') double? loyaltyDiscount1,
      BasketBrandResponse? brand,
      BasketCategoryResponse? category,
      @JsonKey(name: 'name_view') String? nameView});

  @override
  $BasketBrandResponseCopyWith<$Res>? get brand;
  @override
  $BasketCategoryResponseCopyWith<$Res>? get category;
}

/// @nodoc
class __$$BasketDataInfoResponseImplCopyWithImpl<$Res>
    extends _$BasketDataInfoResponseCopyWithImpl<$Res,
        _$BasketDataInfoResponseImpl>
    implements _$$BasketDataInfoResponseImplCopyWith<$Res> {
  __$$BasketDataInfoResponseImplCopyWithImpl(
      _$BasketDataInfoResponseImpl _value,
      $Res Function(_$BasketDataInfoResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foto = freezed,
    Object? price = freezed,
    Object? basePrice = freezed,
    Object? price1 = freezed,
    Object? basePrice1 = freezed,
    Object? promoDiscount1 = freezed,
    Object? loyaltyDiscount1 = freezed,
    Object? brand = freezed,
    Object? category = freezed,
    Object? nameView = freezed,
  }) {
    return _then(_$BasketDataInfoResponseImpl(
      foto: freezed == foto
          ? _value.foto
          : foto // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      basePrice: freezed == basePrice
          ? _value.basePrice
          : basePrice // ignore: cast_nullable_to_non_nullable
              as int?,
      price1: freezed == price1
          ? _value.price1
          : price1 // ignore: cast_nullable_to_non_nullable
              as int?,
      basePrice1: freezed == basePrice1
          ? _value.basePrice1
          : basePrice1 // ignore: cast_nullable_to_non_nullable
              as int?,
      promoDiscount1: freezed == promoDiscount1
          ? _value.promoDiscount1
          : promoDiscount1 // ignore: cast_nullable_to_non_nullable
              as int?,
      loyaltyDiscount1: freezed == loyaltyDiscount1
          ? _value.loyaltyDiscount1
          : loyaltyDiscount1 // ignore: cast_nullable_to_non_nullable
              as double?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as BasketBrandResponse?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as BasketCategoryResponse?,
      nameView: freezed == nameView
          ? _value.nameView
          : nameView // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BasketDataInfoResponseImpl extends _BasketDataInfoResponse {
  _$BasketDataInfoResponseImpl(
      {this.foto,
      this.price,
      @JsonKey(name: 'base_price') this.basePrice,
      @JsonKey(name: 'price_1') this.price1,
      @JsonKey(name: 'base_price_1') this.basePrice1,
      @JsonKey(name: 'promo_discount_1') this.promoDiscount1,
      @JsonKey(name: 'loyalty_discount_1') this.loyaltyDiscount1,
      this.brand,
      this.category,
      @JsonKey(name: 'name_view') this.nameView})
      : super._();

  factory _$BasketDataInfoResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BasketDataInfoResponseImplFromJson(json);

  @override
  final String? foto;
  @override
  final int? price;
  @override
  @JsonKey(name: 'base_price')
  final int? basePrice;
  @override
  @JsonKey(name: 'price_1')
  final int? price1;
  @override
  @JsonKey(name: 'base_price_1')
  final int? basePrice1;
  @override
  @JsonKey(name: 'promo_discount_1')
  final int? promoDiscount1;
  @override
  @JsonKey(name: 'loyalty_discount_1')
  final double? loyaltyDiscount1;
  @override
  final BasketBrandResponse? brand;
  @override
  final BasketCategoryResponse? category;
  @override
  @JsonKey(name: 'name_view')
  final String? nameView;

  @override
  String toString() {
    return 'BasketDataInfoResponse(foto: $foto, price: $price, basePrice: $basePrice, price1: $price1, basePrice1: $basePrice1, promoDiscount1: $promoDiscount1, loyaltyDiscount1: $loyaltyDiscount1, brand: $brand, category: $category, nameView: $nameView)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasketDataInfoResponseImpl &&
            (identical(other.foto, foto) || other.foto == foto) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.basePrice, basePrice) ||
                other.basePrice == basePrice) &&
            (identical(other.price1, price1) || other.price1 == price1) &&
            (identical(other.basePrice1, basePrice1) ||
                other.basePrice1 == basePrice1) &&
            (identical(other.promoDiscount1, promoDiscount1) ||
                other.promoDiscount1 == promoDiscount1) &&
            (identical(other.loyaltyDiscount1, loyaltyDiscount1) ||
                other.loyaltyDiscount1 == loyaltyDiscount1) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.nameView, nameView) ||
                other.nameView == nameView));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, foto, price, basePrice, price1,
      basePrice1, promoDiscount1, loyaltyDiscount1, brand, category, nameView);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BasketDataInfoResponseImplCopyWith<_$BasketDataInfoResponseImpl>
      get copyWith => __$$BasketDataInfoResponseImplCopyWithImpl<
          _$BasketDataInfoResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BasketDataInfoResponseImplToJson(
      this,
    );
  }
}

abstract class _BasketDataInfoResponse extends BasketDataInfoResponse {
  factory _BasketDataInfoResponse(
          {final String? foto,
          final int? price,
          @JsonKey(name: 'base_price') final int? basePrice,
          @JsonKey(name: 'price_1') final int? price1,
          @JsonKey(name: 'base_price_1') final int? basePrice1,
          @JsonKey(name: 'promo_discount_1') final int? promoDiscount1,
          @JsonKey(name: 'loyalty_discount_1') final double? loyaltyDiscount1,
          final BasketBrandResponse? brand,
          final BasketCategoryResponse? category,
          @JsonKey(name: 'name_view') final String? nameView}) =
      _$BasketDataInfoResponseImpl;
  _BasketDataInfoResponse._() : super._();

  factory _BasketDataInfoResponse.fromJson(Map<String, dynamic> json) =
      _$BasketDataInfoResponseImpl.fromJson;

  @override
  String? get foto;
  @override
  int? get price;
  @override
  @JsonKey(name: 'base_price')
  int? get basePrice;
  @override
  @JsonKey(name: 'price_1')
  int? get price1;
  @override
  @JsonKey(name: 'base_price_1')
  int? get basePrice1;
  @override
  @JsonKey(name: 'promo_discount_1')
  int? get promoDiscount1;
  @override
  @JsonKey(name: 'loyalty_discount_1')
  double? get loyaltyDiscount1;
  @override
  BasketBrandResponse? get brand;
  @override
  BasketCategoryResponse? get category;
  @override
  @JsonKey(name: 'name_view')
  String? get nameView;
  @override
  @JsonKey(ignore: true)
  _$$BasketDataInfoResponseImplCopyWith<_$BasketDataInfoResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
