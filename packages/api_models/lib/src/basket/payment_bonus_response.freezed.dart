// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_bonus_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentBonusResponse _$PaymentBonusResponseFromJson(Map<String, dynamic> json) {
  return _PaymentBonusResponse.fromJson(json);
}

/// @nodoc
mixin _$PaymentBonusResponse {
  String? get r => throw _privateConstructorUsedError;
  String? get e => throw _privateConstructorUsedError;
  String? get info => throw _privateConstructorUsedError;
  int? get balance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentBonusResponseCopyWith<PaymentBonusResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentBonusResponseCopyWith<$Res> {
  factory $PaymentBonusResponseCopyWith(PaymentBonusResponse value,
          $Res Function(PaymentBonusResponse) then) =
      _$PaymentBonusResponseCopyWithImpl<$Res, PaymentBonusResponse>;
  @useResult
  $Res call({String? r, String? e, String? info, int? balance});
}

/// @nodoc
class _$PaymentBonusResponseCopyWithImpl<$Res,
        $Val extends PaymentBonusResponse>
    implements $PaymentBonusResponseCopyWith<$Res> {
  _$PaymentBonusResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = freezed,
    Object? e = freezed,
    Object? info = freezed,
    Object? balance = freezed,
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
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String?,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentBonusResponseImplCopyWith<$Res>
    implements $PaymentBonusResponseCopyWith<$Res> {
  factory _$$PaymentBonusResponseImplCopyWith(_$PaymentBonusResponseImpl value,
          $Res Function(_$PaymentBonusResponseImpl) then) =
      __$$PaymentBonusResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? r, String? e, String? info, int? balance});
}

/// @nodoc
class __$$PaymentBonusResponseImplCopyWithImpl<$Res>
    extends _$PaymentBonusResponseCopyWithImpl<$Res, _$PaymentBonusResponseImpl>
    implements _$$PaymentBonusResponseImplCopyWith<$Res> {
  __$$PaymentBonusResponseImplCopyWithImpl(_$PaymentBonusResponseImpl _value,
      $Res Function(_$PaymentBonusResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = freezed,
    Object? e = freezed,
    Object? info = freezed,
    Object? balance = freezed,
  }) {
    return _then(_$PaymentBonusResponseImpl(
      r: freezed == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String?,
      e: freezed == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as String?,
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String?,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentBonusResponseImpl extends _PaymentBonusResponse {
  _$PaymentBonusResponseImpl({this.r, this.e, this.info, this.balance})
      : super._();

  factory _$PaymentBonusResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentBonusResponseImplFromJson(json);

  @override
  final String? r;
  @override
  final String? e;
  @override
  final String? info;
  @override
  final int? balance;

  @override
  String toString() {
    return 'PaymentBonusResponse(r: $r, e: $e, info: $info, balance: $balance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentBonusResponseImpl &&
            (identical(other.r, r) || other.r == r) &&
            (identical(other.e, e) || other.e == e) &&
            (identical(other.info, info) || other.info == info) &&
            (identical(other.balance, balance) || other.balance == balance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, r, e, info, balance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentBonusResponseImplCopyWith<_$PaymentBonusResponseImpl>
      get copyWith =>
          __$$PaymentBonusResponseImplCopyWithImpl<_$PaymentBonusResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentBonusResponseImplToJson(
      this,
    );
  }
}

abstract class _PaymentBonusResponse extends PaymentBonusResponse {
  factory _PaymentBonusResponse(
      {final String? r,
      final String? e,
      final String? info,
      final int? balance}) = _$PaymentBonusResponseImpl;
  _PaymentBonusResponse._() : super._();

  factory _PaymentBonusResponse.fromJson(Map<String, dynamic> json) =
      _$PaymentBonusResponseImpl.fromJson;

  @override
  String? get r;
  @override
  String? get e;
  @override
  String? get info;
  @override
  int? get balance;
  @override
  @JsonKey(ignore: true)
  _$$PaymentBonusResponseImplCopyWith<_$PaymentBonusResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
