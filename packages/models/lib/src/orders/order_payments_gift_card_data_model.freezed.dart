// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_payments_gift_card_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrderPaymentsGiftCardDataModel {
  String get number => throw _privateConstructorUsedError;
  String get sum => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderPaymentsGiftCardDataModelCopyWith<OrderPaymentsGiftCardDataModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderPaymentsGiftCardDataModelCopyWith<$Res> {
  factory $OrderPaymentsGiftCardDataModelCopyWith(
          OrderPaymentsGiftCardDataModel value,
          $Res Function(OrderPaymentsGiftCardDataModel) then) =
      _$OrderPaymentsGiftCardDataModelCopyWithImpl<$Res,
          OrderPaymentsGiftCardDataModel>;
  @useResult
  $Res call({String number, String sum});
}

/// @nodoc
class _$OrderPaymentsGiftCardDataModelCopyWithImpl<$Res,
        $Val extends OrderPaymentsGiftCardDataModel>
    implements $OrderPaymentsGiftCardDataModelCopyWith<$Res> {
  _$OrderPaymentsGiftCardDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? sum = null,
  }) {
    return _then(_value.copyWith(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      sum: null == sum
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderPaymentsGiftCardDataModelImplCopyWith<$Res>
    implements $OrderPaymentsGiftCardDataModelCopyWith<$Res> {
  factory _$$OrderPaymentsGiftCardDataModelImplCopyWith(
          _$OrderPaymentsGiftCardDataModelImpl value,
          $Res Function(_$OrderPaymentsGiftCardDataModelImpl) then) =
      __$$OrderPaymentsGiftCardDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String number, String sum});
}

/// @nodoc
class __$$OrderPaymentsGiftCardDataModelImplCopyWithImpl<$Res>
    extends _$OrderPaymentsGiftCardDataModelCopyWithImpl<$Res,
        _$OrderPaymentsGiftCardDataModelImpl>
    implements _$$OrderPaymentsGiftCardDataModelImplCopyWith<$Res> {
  __$$OrderPaymentsGiftCardDataModelImplCopyWithImpl(
      _$OrderPaymentsGiftCardDataModelImpl _value,
      $Res Function(_$OrderPaymentsGiftCardDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? sum = null,
  }) {
    return _then(_$OrderPaymentsGiftCardDataModelImpl(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      sum: null == sum
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OrderPaymentsGiftCardDataModelImpl
    extends _OrderPaymentsGiftCardDataModel {
  _$OrderPaymentsGiftCardDataModelImpl(
      {required this.number, required this.sum})
      : super._();

  @override
  final String number;
  @override
  final String sum;

  @override
  String toString() {
    return 'OrderPaymentsGiftCardDataModel(number: $number, sum: $sum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderPaymentsGiftCardDataModelImpl &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.sum, sum) || other.sum == sum));
  }

  @override
  int get hashCode => Object.hash(runtimeType, number, sum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderPaymentsGiftCardDataModelImplCopyWith<
          _$OrderPaymentsGiftCardDataModelImpl>
      get copyWith => __$$OrderPaymentsGiftCardDataModelImplCopyWithImpl<
          _$OrderPaymentsGiftCardDataModelImpl>(this, _$identity);
}

abstract class _OrderPaymentsGiftCardDataModel
    extends OrderPaymentsGiftCardDataModel {
  factory _OrderPaymentsGiftCardDataModel(
      {required final String number,
      required final String sum}) = _$OrderPaymentsGiftCardDataModelImpl;
  _OrderPaymentsGiftCardDataModel._() : super._();

  @override
  String get number;
  @override
  String get sum;
  @override
  @JsonKey(ignore: true)
  _$$OrderPaymentsGiftCardDataModelImplCopyWith<
          _$OrderPaymentsGiftCardDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
