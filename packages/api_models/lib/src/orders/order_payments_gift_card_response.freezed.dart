// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_payments_gift_card_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderPaymentsGiftCardResponse _$OrderPaymentsGiftCardResponseFromJson(
    Map<String, dynamic> json) {
  return _OrderPaymentsGiftCardResponse.fromJson(json);
}

/// @nodoc
mixin _$OrderPaymentsGiftCardResponse {
  @JsonKey(name: 'num')
  String? get number => throw _privateConstructorUsedError;
  String? get sum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderPaymentsGiftCardResponseCopyWith<OrderPaymentsGiftCardResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderPaymentsGiftCardResponseCopyWith<$Res> {
  factory $OrderPaymentsGiftCardResponseCopyWith(
          OrderPaymentsGiftCardResponse value,
          $Res Function(OrderPaymentsGiftCardResponse) then) =
      _$OrderPaymentsGiftCardResponseCopyWithImpl<$Res,
          OrderPaymentsGiftCardResponse>;
  @useResult
  $Res call({@JsonKey(name: 'num') String? number, String? sum});
}

/// @nodoc
class _$OrderPaymentsGiftCardResponseCopyWithImpl<$Res,
        $Val extends OrderPaymentsGiftCardResponse>
    implements $OrderPaymentsGiftCardResponseCopyWith<$Res> {
  _$OrderPaymentsGiftCardResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
    Object? sum = freezed,
  }) {
    return _then(_value.copyWith(
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      sum: freezed == sum
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderPaymentsGiftCardResponseImplCopyWith<$Res>
    implements $OrderPaymentsGiftCardResponseCopyWith<$Res> {
  factory _$$OrderPaymentsGiftCardResponseImplCopyWith(
          _$OrderPaymentsGiftCardResponseImpl value,
          $Res Function(_$OrderPaymentsGiftCardResponseImpl) then) =
      __$$OrderPaymentsGiftCardResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'num') String? number, String? sum});
}

/// @nodoc
class __$$OrderPaymentsGiftCardResponseImplCopyWithImpl<$Res>
    extends _$OrderPaymentsGiftCardResponseCopyWithImpl<$Res,
        _$OrderPaymentsGiftCardResponseImpl>
    implements _$$OrderPaymentsGiftCardResponseImplCopyWith<$Res> {
  __$$OrderPaymentsGiftCardResponseImplCopyWithImpl(
      _$OrderPaymentsGiftCardResponseImpl _value,
      $Res Function(_$OrderPaymentsGiftCardResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
    Object? sum = freezed,
  }) {
    return _then(_$OrderPaymentsGiftCardResponseImpl(
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      sum: freezed == sum
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderPaymentsGiftCardResponseImpl
    extends _OrderPaymentsGiftCardResponse {
  _$OrderPaymentsGiftCardResponseImpl(
      {@JsonKey(name: 'num') this.number, this.sum})
      : super._();

  factory _$OrderPaymentsGiftCardResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$OrderPaymentsGiftCardResponseImplFromJson(json);

  @override
  @JsonKey(name: 'num')
  final String? number;
  @override
  final String? sum;

  @override
  String toString() {
    return 'OrderPaymentsGiftCardResponse(number: $number, sum: $sum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderPaymentsGiftCardResponseImpl &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.sum, sum) || other.sum == sum));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, number, sum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderPaymentsGiftCardResponseImplCopyWith<
          _$OrderPaymentsGiftCardResponseImpl>
      get copyWith => __$$OrderPaymentsGiftCardResponseImplCopyWithImpl<
          _$OrderPaymentsGiftCardResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderPaymentsGiftCardResponseImplToJson(
      this,
    );
  }
}

abstract class _OrderPaymentsGiftCardResponse
    extends OrderPaymentsGiftCardResponse {
  factory _OrderPaymentsGiftCardResponse(
      {@JsonKey(name: 'num') final String? number,
      final String? sum}) = _$OrderPaymentsGiftCardResponseImpl;
  _OrderPaymentsGiftCardResponse._() : super._();

  factory _OrderPaymentsGiftCardResponse.fromJson(Map<String, dynamic> json) =
      _$OrderPaymentsGiftCardResponseImpl.fromJson;

  @override
  @JsonKey(name: 'num')
  String? get number;
  @override
  String? get sum;
  @override
  @JsonKey(ignore: true)
  _$$OrderPaymentsGiftCardResponseImplCopyWith<
          _$OrderPaymentsGiftCardResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
