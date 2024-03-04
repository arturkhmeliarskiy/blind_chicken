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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
      String? sku});
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
      String? sku});
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
      this.sku})
      : super._();

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
  String toString() {
    return 'OrderProductResponse(code: $code, img: $img, price: $price, count: $count, promocodeInfo: $promocodeInfo, brand: $brand, name: $name, sku: $sku)';
  }

  @override
  bool operator ==(dynamic other) {
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
            (identical(other.sku, sku) || other.sku == sku));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, code, img, price, count, promocodeInfo, brand, name, sku);

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
      final String? sku}) = _$OrderProductResponseImpl;
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
  @JsonKey(ignore: true)
  _$$OrderProductResponseImplCopyWith<_$OrderProductResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
