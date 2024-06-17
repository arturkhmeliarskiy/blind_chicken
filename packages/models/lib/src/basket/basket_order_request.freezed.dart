// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basket_order_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BasketOrderRequest {
  String get promo => throw _privateConstructorUsedError;
  BasketOrderDeliveryRequest get delivery => throw _privateConstructorUsedError;
  String? get bonus => throw _privateConstructorUsedError;
  String get payment => throw _privateConstructorUsedError;
  List<BasketSertDeliveryRequest>? get sert =>
      throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  bool get isValidAddress => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BasketOrderRequestCopyWith<BasketOrderRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasketOrderRequestCopyWith<$Res> {
  factory $BasketOrderRequestCopyWith(
          BasketOrderRequest value, $Res Function(BasketOrderRequest) then) =
      _$BasketOrderRequestCopyWithImpl<$Res, BasketOrderRequest>;
  @useResult
  $Res call(
      {String promo,
      BasketOrderDeliveryRequest delivery,
      String? bonus,
      String payment,
      List<BasketSertDeliveryRequest>? sert,
      String city,
      bool isValidAddress});

  $BasketOrderDeliveryRequestCopyWith<$Res> get delivery;
}

/// @nodoc
class _$BasketOrderRequestCopyWithImpl<$Res, $Val extends BasketOrderRequest>
    implements $BasketOrderRequestCopyWith<$Res> {
  _$BasketOrderRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promo = null,
    Object? delivery = null,
    Object? bonus = freezed,
    Object? payment = null,
    Object? sert = freezed,
    Object? city = null,
    Object? isValidAddress = null,
  }) {
    return _then(_value.copyWith(
      promo: null == promo
          ? _value.promo
          : promo // ignore: cast_nullable_to_non_nullable
              as String,
      delivery: null == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as BasketOrderDeliveryRequest,
      bonus: freezed == bonus
          ? _value.bonus
          : bonus // ignore: cast_nullable_to_non_nullable
              as String?,
      payment: null == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as String,
      sert: freezed == sert
          ? _value.sert
          : sert // ignore: cast_nullable_to_non_nullable
              as List<BasketSertDeliveryRequest>?,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      isValidAddress: null == isValidAddress
          ? _value.isValidAddress
          : isValidAddress // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$$BasketOrderRequestImplCopyWith<$Res>
    implements $BasketOrderRequestCopyWith<$Res> {
  factory _$$BasketOrderRequestImplCopyWith(_$BasketOrderRequestImpl value,
          $Res Function(_$BasketOrderRequestImpl) then) =
      __$$BasketOrderRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String promo,
      BasketOrderDeliveryRequest delivery,
      String? bonus,
      String payment,
      List<BasketSertDeliveryRequest>? sert,
      String city,
      bool isValidAddress});

  @override
  $BasketOrderDeliveryRequestCopyWith<$Res> get delivery;
}

/// @nodoc
class __$$BasketOrderRequestImplCopyWithImpl<$Res>
    extends _$BasketOrderRequestCopyWithImpl<$Res, _$BasketOrderRequestImpl>
    implements _$$BasketOrderRequestImplCopyWith<$Res> {
  __$$BasketOrderRequestImplCopyWithImpl(_$BasketOrderRequestImpl _value,
      $Res Function(_$BasketOrderRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promo = null,
    Object? delivery = null,
    Object? bonus = freezed,
    Object? payment = null,
    Object? sert = freezed,
    Object? city = null,
    Object? isValidAddress = null,
  }) {
    return _then(_$BasketOrderRequestImpl(
      promo: null == promo
          ? _value.promo
          : promo // ignore: cast_nullable_to_non_nullable
              as String,
      delivery: null == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as BasketOrderDeliveryRequest,
      bonus: freezed == bonus
          ? _value.bonus
          : bonus // ignore: cast_nullable_to_non_nullable
              as String?,
      payment: null == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as String,
      sert: freezed == sert
          ? _value._sert
          : sert // ignore: cast_nullable_to_non_nullable
              as List<BasketSertDeliveryRequest>?,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      isValidAddress: null == isValidAddress
          ? _value.isValidAddress
          : isValidAddress // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$BasketOrderRequestImpl extends _BasketOrderRequest {
  _$BasketOrderRequestImpl(
      {required this.promo,
      required this.delivery,
      this.bonus,
      required this.payment,
      final List<BasketSertDeliveryRequest>? sert,
      required this.city,
      required this.isValidAddress})
      : _sert = sert,
        super._();

  @override
  final String promo;
  @override
  final BasketOrderDeliveryRequest delivery;
  @override
  final String? bonus;
  @override
  final String payment;
  final List<BasketSertDeliveryRequest>? _sert;
  @override
  List<BasketSertDeliveryRequest>? get sert {
    final value = _sert;
    if (value == null) return null;
    if (_sert is EqualUnmodifiableListView) return _sert;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String city;
  @override
  final bool isValidAddress;

  @override
  String toString() {
    return 'BasketOrderRequest(promo: $promo, delivery: $delivery, bonus: $bonus, payment: $payment, sert: $sert, city: $city, isValidAddress: $isValidAddress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasketOrderRequestImpl &&
            (identical(other.promo, promo) || other.promo == promo) &&
            (identical(other.delivery, delivery) ||
                other.delivery == delivery) &&
            (identical(other.bonus, bonus) || other.bonus == bonus) &&
            (identical(other.payment, payment) || other.payment == payment) &&
            const DeepCollectionEquality().equals(other._sert, _sert) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.isValidAddress, isValidAddress) ||
                other.isValidAddress == isValidAddress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, promo, delivery, bonus, payment,
      const DeepCollectionEquality().hash(_sert), city, isValidAddress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BasketOrderRequestImplCopyWith<_$BasketOrderRequestImpl> get copyWith =>
      __$$BasketOrderRequestImplCopyWithImpl<_$BasketOrderRequestImpl>(
          this, _$identity);
}

abstract class _BasketOrderRequest extends BasketOrderRequest {
  factory _BasketOrderRequest(
      {required final String promo,
      required final BasketOrderDeliveryRequest delivery,
      final String? bonus,
      required final String payment,
      final List<BasketSertDeliveryRequest>? sert,
      required final String city,
      required final bool isValidAddress}) = _$BasketOrderRequestImpl;
  _BasketOrderRequest._() : super._();

  @override
  String get promo;
  @override
  BasketOrderDeliveryRequest get delivery;
  @override
  String? get bonus;
  @override
  String get payment;
  @override
  List<BasketSertDeliveryRequest>? get sert;
  @override
  String get city;
  @override
  bool get isValidAddress;
  @override
  @JsonKey(ignore: true)
  _$$BasketOrderRequestImplCopyWith<_$BasketOrderRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
