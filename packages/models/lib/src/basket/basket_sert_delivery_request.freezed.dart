// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basket_sert_delivery_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BasketSertDeliveryRequest {
  String get n => throw _privateConstructorUsedError;
  String get p => throw _privateConstructorUsedError;
  String get v => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BasketSertDeliveryRequestCopyWith<BasketSertDeliveryRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasketSertDeliveryRequestCopyWith<$Res> {
  factory $BasketSertDeliveryRequestCopyWith(BasketSertDeliveryRequest value,
          $Res Function(BasketSertDeliveryRequest) then) =
      _$BasketSertDeliveryRequestCopyWithImpl<$Res, BasketSertDeliveryRequest>;
  @useResult
  $Res call({String n, String p, String v});
}

/// @nodoc
class _$BasketSertDeliveryRequestCopyWithImpl<$Res,
        $Val extends BasketSertDeliveryRequest>
    implements $BasketSertDeliveryRequestCopyWith<$Res> {
  _$BasketSertDeliveryRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? n = null,
    Object? p = null,
    Object? v = null,
  }) {
    return _then(_value.copyWith(
      n: null == n
          ? _value.n
          : n // ignore: cast_nullable_to_non_nullable
              as String,
      p: null == p
          ? _value.p
          : p // ignore: cast_nullable_to_non_nullable
              as String,
      v: null == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BasketSertDeliveryRequestImplCopyWith<$Res>
    implements $BasketSertDeliveryRequestCopyWith<$Res> {
  factory _$$BasketSertDeliveryRequestImplCopyWith(
          _$BasketSertDeliveryRequestImpl value,
          $Res Function(_$BasketSertDeliveryRequestImpl) then) =
      __$$BasketSertDeliveryRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String n, String p, String v});
}

/// @nodoc
class __$$BasketSertDeliveryRequestImplCopyWithImpl<$Res>
    extends _$BasketSertDeliveryRequestCopyWithImpl<$Res,
        _$BasketSertDeliveryRequestImpl>
    implements _$$BasketSertDeliveryRequestImplCopyWith<$Res> {
  __$$BasketSertDeliveryRequestImplCopyWithImpl(
      _$BasketSertDeliveryRequestImpl _value,
      $Res Function(_$BasketSertDeliveryRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? n = null,
    Object? p = null,
    Object? v = null,
  }) {
    return _then(_$BasketSertDeliveryRequestImpl(
      n: null == n
          ? _value.n
          : n // ignore: cast_nullable_to_non_nullable
              as String,
      p: null == p
          ? _value.p
          : p // ignore: cast_nullable_to_non_nullable
              as String,
      v: null == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BasketSertDeliveryRequestImpl extends _BasketSertDeliveryRequest {
  _$BasketSertDeliveryRequestImpl(
      {required this.n, required this.p, required this.v})
      : super._();

  @override
  final String n;
  @override
  final String p;
  @override
  final String v;

  @override
  String toString() {
    return 'BasketSertDeliveryRequest(n: $n, p: $p, v: $v)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasketSertDeliveryRequestImpl &&
            (identical(other.n, n) || other.n == n) &&
            (identical(other.p, p) || other.p == p) &&
            (identical(other.v, v) || other.v == v));
  }

  @override
  int get hashCode => Object.hash(runtimeType, n, p, v);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BasketSertDeliveryRequestImplCopyWith<_$BasketSertDeliveryRequestImpl>
      get copyWith => __$$BasketSertDeliveryRequestImplCopyWithImpl<
          _$BasketSertDeliveryRequestImpl>(this, _$identity);
}

abstract class _BasketSertDeliveryRequest extends BasketSertDeliveryRequest {
  factory _BasketSertDeliveryRequest(
      {required final String n,
      required final String p,
      required final String v}) = _$BasketSertDeliveryRequestImpl;
  _BasketSertDeliveryRequest._() : super._();

  @override
  String get n;
  @override
  String get p;
  @override
  String get v;
  @override
  @JsonKey(ignore: true)
  _$$BasketSertDeliveryRequestImplCopyWith<_$BasketSertDeliveryRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
