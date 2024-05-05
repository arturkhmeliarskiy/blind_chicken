// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_order_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentOrderResponse _$PaymentOrderResponseFromJson(Map<String, dynamic> json) {
  return _PaymentOrderResponse.fromJson(json);
}

/// @nodoc
mixin _$PaymentOrderResponse {
  String? get r => throw _privateConstructorUsedError;
  String? get e => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentOrderResponseCopyWith<PaymentOrderResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentOrderResponseCopyWith<$Res> {
  factory $PaymentOrderResponseCopyWith(PaymentOrderResponse value,
          $Res Function(PaymentOrderResponse) then) =
      _$PaymentOrderResponseCopyWithImpl<$Res, PaymentOrderResponse>;
  @useResult
  $Res call({String? r, String? e, int? id});
}

/// @nodoc
class _$PaymentOrderResponseCopyWithImpl<$Res,
        $Val extends PaymentOrderResponse>
    implements $PaymentOrderResponseCopyWith<$Res> {
  _$PaymentOrderResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = freezed,
    Object? e = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      r: freezed == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String?,
      e: freezed == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentOrderResponseImplCopyWith<$Res>
    implements $PaymentOrderResponseCopyWith<$Res> {
  factory _$$PaymentOrderResponseImplCopyWith(_$PaymentOrderResponseImpl value,
          $Res Function(_$PaymentOrderResponseImpl) then) =
      __$$PaymentOrderResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? r, String? e, int? id});
}

/// @nodoc
class __$$PaymentOrderResponseImplCopyWithImpl<$Res>
    extends _$PaymentOrderResponseCopyWithImpl<$Res, _$PaymentOrderResponseImpl>
    implements _$$PaymentOrderResponseImplCopyWith<$Res> {
  __$$PaymentOrderResponseImplCopyWithImpl(_$PaymentOrderResponseImpl _value,
      $Res Function(_$PaymentOrderResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = freezed,
    Object? e = freezed,
    Object? id = freezed,
  }) {
    return _then(_$PaymentOrderResponseImpl(
      r: freezed == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String?,
      e: freezed == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentOrderResponseImpl extends _PaymentOrderResponse {
  _$PaymentOrderResponseImpl({this.r, this.e, this.id}) : super._();

  factory _$PaymentOrderResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentOrderResponseImplFromJson(json);

  @override
  final String? r;
  @override
  final String? e;
  @override
  final int? id;

  @override
  String toString() {
    return 'PaymentOrderResponse(r: $r, e: $e, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentOrderResponseImpl &&
            (identical(other.r, r) || other.r == r) &&
            (identical(other.e, e) || other.e == e) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, r, e, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentOrderResponseImplCopyWith<_$PaymentOrderResponseImpl>
      get copyWith =>
          __$$PaymentOrderResponseImplCopyWithImpl<_$PaymentOrderResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentOrderResponseImplToJson(
      this,
    );
  }
}

abstract class _PaymentOrderResponse extends PaymentOrderResponse {
  factory _PaymentOrderResponse(
      {final String? r,
      final String? e,
      final int? id}) = _$PaymentOrderResponseImpl;
  _PaymentOrderResponse._() : super._();

  factory _PaymentOrderResponse.fromJson(Map<String, dynamic> json) =
      _$PaymentOrderResponseImpl.fromJson;

  @override
  String? get r;
  @override
  String? get e;
  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$PaymentOrderResponseImplCopyWith<_$PaymentOrderResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
