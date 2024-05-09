// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_blank_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrdersBlankResponse _$OrdersBlankResponseFromJson(Map<String, dynamic> json) {
  return _OrdersBlankResponse.fromJson(json);
}

/// @nodoc
mixin _$OrdersBlankResponse {
  String? get r => throw _privateConstructorUsedError;
  @JsonKey(name: 'e')
  String? get message => throw _privateConstructorUsedError;
  List<OrderBlankResponse>? get orders => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrdersBlankResponseCopyWith<OrdersBlankResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersBlankResponseCopyWith<$Res> {
  factory $OrdersBlankResponseCopyWith(
          OrdersBlankResponse value, $Res Function(OrdersBlankResponse) then) =
      _$OrdersBlankResponseCopyWithImpl<$Res, OrdersBlankResponse>;
  @useResult
  $Res call(
      {String? r,
      @JsonKey(name: 'e') String? message,
      List<OrderBlankResponse>? orders});
}

/// @nodoc
class _$OrdersBlankResponseCopyWithImpl<$Res, $Val extends OrdersBlankResponse>
    implements $OrdersBlankResponseCopyWith<$Res> {
  _$OrdersBlankResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = freezed,
    Object? message = freezed,
    Object? orders = freezed,
  }) {
    return _then(_value.copyWith(
      r: freezed == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      orders: freezed == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderBlankResponse>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrdersBlankResponseImplCopyWith<$Res>
    implements $OrdersBlankResponseCopyWith<$Res> {
  factory _$$OrdersBlankResponseImplCopyWith(_$OrdersBlankResponseImpl value,
          $Res Function(_$OrdersBlankResponseImpl) then) =
      __$$OrdersBlankResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? r,
      @JsonKey(name: 'e') String? message,
      List<OrderBlankResponse>? orders});
}

/// @nodoc
class __$$OrdersBlankResponseImplCopyWithImpl<$Res>
    extends _$OrdersBlankResponseCopyWithImpl<$Res, _$OrdersBlankResponseImpl>
    implements _$$OrdersBlankResponseImplCopyWith<$Res> {
  __$$OrdersBlankResponseImplCopyWithImpl(_$OrdersBlankResponseImpl _value,
      $Res Function(_$OrdersBlankResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = freezed,
    Object? message = freezed,
    Object? orders = freezed,
  }) {
    return _then(_$OrdersBlankResponseImpl(
      r: freezed == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      orders: freezed == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderBlankResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrdersBlankResponseImpl extends _OrdersBlankResponse {
  _$OrdersBlankResponseImpl(
      {this.r,
      @JsonKey(name: 'e') this.message,
      final List<OrderBlankResponse>? orders})
      : _orders = orders,
        super._();

  factory _$OrdersBlankResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrdersBlankResponseImplFromJson(json);

  @override
  final String? r;
  @override
  @JsonKey(name: 'e')
  final String? message;
  final List<OrderBlankResponse>? _orders;
  @override
  List<OrderBlankResponse>? get orders {
    final value = _orders;
    if (value == null) return null;
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'OrdersBlankResponse(r: $r, message: $message, orders: $orders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrdersBlankResponseImpl &&
            (identical(other.r, r) || other.r == r) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._orders, _orders));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, r, message, const DeepCollectionEquality().hash(_orders));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrdersBlankResponseImplCopyWith<_$OrdersBlankResponseImpl> get copyWith =>
      __$$OrdersBlankResponseImplCopyWithImpl<_$OrdersBlankResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrdersBlankResponseImplToJson(
      this,
    );
  }
}

abstract class _OrdersBlankResponse extends OrdersBlankResponse {
  factory _OrdersBlankResponse(
      {final String? r,
      @JsonKey(name: 'e') final String? message,
      final List<OrderBlankResponse>? orders}) = _$OrdersBlankResponseImpl;
  _OrdersBlankResponse._() : super._();

  factory _OrdersBlankResponse.fromJson(Map<String, dynamic> json) =
      _$OrdersBlankResponseImpl.fromJson;

  @override
  String? get r;
  @override
  @JsonKey(name: 'e')
  String? get message;
  @override
  List<OrderBlankResponse>? get orders;
  @override
  @JsonKey(ignore: true)
  _$$OrdersBlankResponseImplCopyWith<_$OrdersBlankResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
