// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_delivery_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderDeliveryResponse _$OrderDeliveryResponseFromJson(
    Map<String, dynamic> json) {
  return _OrderDeliveryResponse.fromJson(json);
}

/// @nodoc
mixin _$OrderDeliveryResponse {
  String? get price => throw _privateConstructorUsedError;
  String? get method => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;

  /// Serializes this OrderDeliveryResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderDeliveryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderDeliveryResponseCopyWith<OrderDeliveryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDeliveryResponseCopyWith<$Res> {
  factory $OrderDeliveryResponseCopyWith(OrderDeliveryResponse value,
          $Res Function(OrderDeliveryResponse) then) =
      _$OrderDeliveryResponseCopyWithImpl<$Res, OrderDeliveryResponse>;
  @useResult
  $Res call({String? price, String? method, String? address});
}

/// @nodoc
class _$OrderDeliveryResponseCopyWithImpl<$Res,
        $Val extends OrderDeliveryResponse>
    implements $OrderDeliveryResponseCopyWith<$Res> {
  _$OrderDeliveryResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderDeliveryResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = freezed,
    Object? method = freezed,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      method: freezed == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderDeliveryResponseImplCopyWith<$Res>
    implements $OrderDeliveryResponseCopyWith<$Res> {
  factory _$$OrderDeliveryResponseImplCopyWith(
          _$OrderDeliveryResponseImpl value,
          $Res Function(_$OrderDeliveryResponseImpl) then) =
      __$$OrderDeliveryResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? price, String? method, String? address});
}

/// @nodoc
class __$$OrderDeliveryResponseImplCopyWithImpl<$Res>
    extends _$OrderDeliveryResponseCopyWithImpl<$Res,
        _$OrderDeliveryResponseImpl>
    implements _$$OrderDeliveryResponseImplCopyWith<$Res> {
  __$$OrderDeliveryResponseImplCopyWithImpl(_$OrderDeliveryResponseImpl _value,
      $Res Function(_$OrderDeliveryResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderDeliveryResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = freezed,
    Object? method = freezed,
    Object? address = freezed,
  }) {
    return _then(_$OrderDeliveryResponseImpl(
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      method: freezed == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderDeliveryResponseImpl extends _OrderDeliveryResponse {
  _$OrderDeliveryResponseImpl({this.price, this.method, this.address})
      : super._();

  factory _$OrderDeliveryResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderDeliveryResponseImplFromJson(json);

  @override
  final String? price;
  @override
  final String? method;
  @override
  final String? address;

  @override
  String toString() {
    return 'OrderDeliveryResponse(price: $price, method: $method, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderDeliveryResponseImpl &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, price, method, address);

  /// Create a copy of OrderDeliveryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderDeliveryResponseImplCopyWith<_$OrderDeliveryResponseImpl>
      get copyWith => __$$OrderDeliveryResponseImplCopyWithImpl<
          _$OrderDeliveryResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderDeliveryResponseImplToJson(
      this,
    );
  }
}

abstract class _OrderDeliveryResponse extends OrderDeliveryResponse {
  factory _OrderDeliveryResponse(
      {final String? price,
      final String? method,
      final String? address}) = _$OrderDeliveryResponseImpl;
  _OrderDeliveryResponse._() : super._();

  factory _OrderDeliveryResponse.fromJson(Map<String, dynamic> json) =
      _$OrderDeliveryResponseImpl.fromJson;

  @override
  String? get price;
  @override
  String? get method;
  @override
  String? get address;

  /// Create a copy of OrderDeliveryResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderDeliveryResponseImplCopyWith<_$OrderDeliveryResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
