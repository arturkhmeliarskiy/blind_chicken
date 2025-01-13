// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_gift_card_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CatalogGiftCardRequest {
  String get type => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;
  BasketOrderDeliveryRequest get delivery => throw _privateConstructorUsedError;
  String get payment => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get sum => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CatalogGiftCardRequestCopyWith<CatalogGiftCardRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogGiftCardRequestCopyWith<$Res> {
  factory $CatalogGiftCardRequestCopyWith(CatalogGiftCardRequest value,
          $Res Function(CatalogGiftCardRequest) then) =
      _$CatalogGiftCardRequestCopyWithImpl<$Res, CatalogGiftCardRequest>;
  @useResult
  $Res call(
      {String type,
      String color,
      BasketOrderDeliveryRequest delivery,
      String payment,
      String city,
      String sum});

  $BasketOrderDeliveryRequestCopyWith<$Res> get delivery;
}

/// @nodoc
class _$CatalogGiftCardRequestCopyWithImpl<$Res,
        $Val extends CatalogGiftCardRequest>
    implements $CatalogGiftCardRequestCopyWith<$Res> {
  _$CatalogGiftCardRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? color = null,
    Object? delivery = null,
    Object? payment = null,
    Object? city = null,
    Object? sum = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      delivery: null == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as BasketOrderDeliveryRequest,
      payment: null == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      sum: null == sum
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BasketOrderDeliveryRequestCopyWith<$Res> get delivery {
    return $BasketOrderDeliveryRequestCopyWith<$Res>(_value.delivery, (value) {
      return _then(_value.copyWith(delivery: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CatalogGiftCardRequestImplCopyWith<$Res>
    implements $CatalogGiftCardRequestCopyWith<$Res> {
  factory _$$CatalogGiftCardRequestImplCopyWith(
          _$CatalogGiftCardRequestImpl value,
          $Res Function(_$CatalogGiftCardRequestImpl) then) =
      __$$CatalogGiftCardRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String type,
      String color,
      BasketOrderDeliveryRequest delivery,
      String payment,
      String city,
      String sum});

  @override
  $BasketOrderDeliveryRequestCopyWith<$Res> get delivery;
}

/// @nodoc
class __$$CatalogGiftCardRequestImplCopyWithImpl<$Res>
    extends _$CatalogGiftCardRequestCopyWithImpl<$Res,
        _$CatalogGiftCardRequestImpl>
    implements _$$CatalogGiftCardRequestImplCopyWith<$Res> {
  __$$CatalogGiftCardRequestImplCopyWithImpl(
      _$CatalogGiftCardRequestImpl _value,
      $Res Function(_$CatalogGiftCardRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? color = null,
    Object? delivery = null,
    Object? payment = null,
    Object? city = null,
    Object? sum = null,
  }) {
    return _then(_$CatalogGiftCardRequestImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      delivery: null == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as BasketOrderDeliveryRequest,
      payment: null == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      sum: null == sum
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CatalogGiftCardRequestImpl extends _CatalogGiftCardRequest {
  _$CatalogGiftCardRequestImpl(
      {required this.type,
      required this.color,
      required this.delivery,
      required this.payment,
      required this.city,
      required this.sum})
      : super._();

  @override
  final String type;
  @override
  final String color;
  @override
  final BasketOrderDeliveryRequest delivery;
  @override
  final String payment;
  @override
  final String city;
  @override
  final String sum;

  @override
  String toString() {
    return 'CatalogGiftCardRequest(type: $type, color: $color, delivery: $delivery, payment: $payment, city: $city, sum: $sum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CatalogGiftCardRequestImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.delivery, delivery) ||
                other.delivery == delivery) &&
            (identical(other.payment, payment) || other.payment == payment) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.sum, sum) || other.sum == sum));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, type, color, delivery, payment, city, sum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CatalogGiftCardRequestImplCopyWith<_$CatalogGiftCardRequestImpl>
      get copyWith => __$$CatalogGiftCardRequestImplCopyWithImpl<
          _$CatalogGiftCardRequestImpl>(this, _$identity);
}

abstract class _CatalogGiftCardRequest extends CatalogGiftCardRequest {
  factory _CatalogGiftCardRequest(
      {required final String type,
      required final String color,
      required final BasketOrderDeliveryRequest delivery,
      required final String payment,
      required final String city,
      required final String sum}) = _$CatalogGiftCardRequestImpl;
  _CatalogGiftCardRequest._() : super._();

  @override
  String get type;
  @override
  String get color;
  @override
  BasketOrderDeliveryRequest get delivery;
  @override
  String get payment;
  @override
  String get city;
  @override
  String get sum;
  @override
  @JsonKey(ignore: true)
  _$$CatalogGiftCardRequestImplCopyWith<_$CatalogGiftCardRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
