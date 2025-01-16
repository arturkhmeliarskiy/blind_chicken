// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basket_order_delivery_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BasketOrderDeliveryRequest {
  String get id => throw _privateConstructorUsedError;
  String get pck => throw _privateConstructorUsedError;
  String get adr => throw _privateConstructorUsedError;
  String get adrId => throw _privateConstructorUsedError;
  String get zip => throw _privateConstructorUsedError;

  /// Create a copy of BasketOrderDeliveryRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BasketOrderDeliveryRequestCopyWith<BasketOrderDeliveryRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasketOrderDeliveryRequestCopyWith<$Res> {
  factory $BasketOrderDeliveryRequestCopyWith(BasketOrderDeliveryRequest value,
          $Res Function(BasketOrderDeliveryRequest) then) =
      _$BasketOrderDeliveryRequestCopyWithImpl<$Res,
          BasketOrderDeliveryRequest>;
  @useResult
  $Res call({String id, String pck, String adr, String adrId, String zip});
}

/// @nodoc
class _$BasketOrderDeliveryRequestCopyWithImpl<$Res,
        $Val extends BasketOrderDeliveryRequest>
    implements $BasketOrderDeliveryRequestCopyWith<$Res> {
  _$BasketOrderDeliveryRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BasketOrderDeliveryRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? pck = null,
    Object? adr = null,
    Object? adrId = null,
    Object? zip = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      pck: null == pck
          ? _value.pck
          : pck // ignore: cast_nullable_to_non_nullable
              as String,
      adr: null == adr
          ? _value.adr
          : adr // ignore: cast_nullable_to_non_nullable
              as String,
      adrId: null == adrId
          ? _value.adrId
          : adrId // ignore: cast_nullable_to_non_nullable
              as String,
      zip: null == zip
          ? _value.zip
          : zip // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BasketOrderDeliveryRequestImplCopyWith<$Res>
    implements $BasketOrderDeliveryRequestCopyWith<$Res> {
  factory _$$BasketOrderDeliveryRequestImplCopyWith(
          _$BasketOrderDeliveryRequestImpl value,
          $Res Function(_$BasketOrderDeliveryRequestImpl) then) =
      __$$BasketOrderDeliveryRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String pck, String adr, String adrId, String zip});
}

/// @nodoc
class __$$BasketOrderDeliveryRequestImplCopyWithImpl<$Res>
    extends _$BasketOrderDeliveryRequestCopyWithImpl<$Res,
        _$BasketOrderDeliveryRequestImpl>
    implements _$$BasketOrderDeliveryRequestImplCopyWith<$Res> {
  __$$BasketOrderDeliveryRequestImplCopyWithImpl(
      _$BasketOrderDeliveryRequestImpl _value,
      $Res Function(_$BasketOrderDeliveryRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of BasketOrderDeliveryRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? pck = null,
    Object? adr = null,
    Object? adrId = null,
    Object? zip = null,
  }) {
    return _then(_$BasketOrderDeliveryRequestImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      pck: null == pck
          ? _value.pck
          : pck // ignore: cast_nullable_to_non_nullable
              as String,
      adr: null == adr
          ? _value.adr
          : adr // ignore: cast_nullable_to_non_nullable
              as String,
      adrId: null == adrId
          ? _value.adrId
          : adrId // ignore: cast_nullable_to_non_nullable
              as String,
      zip: null == zip
          ? _value.zip
          : zip // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BasketOrderDeliveryRequestImpl extends _BasketOrderDeliveryRequest {
  _$BasketOrderDeliveryRequestImpl(
      {required this.id,
      required this.pck,
      required this.adr,
      required this.adrId,
      required this.zip})
      : super._();

  @override
  final String id;
  @override
  final String pck;
  @override
  final String adr;
  @override
  final String adrId;
  @override
  final String zip;

  @override
  String toString() {
    return 'BasketOrderDeliveryRequest(id: $id, pck: $pck, adr: $adr, adrId: $adrId, zip: $zip)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasketOrderDeliveryRequestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.pck, pck) || other.pck == pck) &&
            (identical(other.adr, adr) || other.adr == adr) &&
            (identical(other.adrId, adrId) || other.adrId == adrId) &&
            (identical(other.zip, zip) || other.zip == zip));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, pck, adr, adrId, zip);

  /// Create a copy of BasketOrderDeliveryRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BasketOrderDeliveryRequestImplCopyWith<_$BasketOrderDeliveryRequestImpl>
      get copyWith => __$$BasketOrderDeliveryRequestImplCopyWithImpl<
          _$BasketOrderDeliveryRequestImpl>(this, _$identity);
}

abstract class _BasketOrderDeliveryRequest extends BasketOrderDeliveryRequest {
  factory _BasketOrderDeliveryRequest(
      {required final String id,
      required final String pck,
      required final String adr,
      required final String adrId,
      required final String zip}) = _$BasketOrderDeliveryRequestImpl;
  _BasketOrderDeliveryRequest._() : super._();

  @override
  String get id;
  @override
  String get pck;
  @override
  String get adr;
  @override
  String get adrId;
  @override
  String get zip;

  /// Create a copy of BasketOrderDeliveryRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BasketOrderDeliveryRequestImplCopyWith<_$BasketOrderDeliveryRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
