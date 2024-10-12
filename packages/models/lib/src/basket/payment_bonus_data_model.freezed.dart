// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_bonus_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaymentBonusDataModel {
  String get r => throw _privateConstructorUsedError;
  String get e => throw _privateConstructorUsedError;
  String get info => throw _privateConstructorUsedError;
  int get balance => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentBonusDataModelCopyWith<PaymentBonusDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentBonusDataModelCopyWith<$Res> {
  factory $PaymentBonusDataModelCopyWith(PaymentBonusDataModel value,
          $Res Function(PaymentBonusDataModel) then) =
      _$PaymentBonusDataModelCopyWithImpl<$Res, PaymentBonusDataModel>;
  @useResult
  $Res call(
      {String r, String e, String info, int balance, String errorMessage});
}

/// @nodoc
class _$PaymentBonusDataModelCopyWithImpl<$Res,
        $Val extends PaymentBonusDataModel>
    implements $PaymentBonusDataModelCopyWith<$Res> {
  _$PaymentBonusDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = null,
    Object? e = null,
    Object? info = null,
    Object? balance = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      r: null == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String,
      e: null == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as String,
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentBonusDataModelImplCopyWith<$Res>
    implements $PaymentBonusDataModelCopyWith<$Res> {
  factory _$$PaymentBonusDataModelImplCopyWith(
          _$PaymentBonusDataModelImpl value,
          $Res Function(_$PaymentBonusDataModelImpl) then) =
      __$$PaymentBonusDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String r, String e, String info, int balance, String errorMessage});
}

/// @nodoc
class __$$PaymentBonusDataModelImplCopyWithImpl<$Res>
    extends _$PaymentBonusDataModelCopyWithImpl<$Res,
        _$PaymentBonusDataModelImpl>
    implements _$$PaymentBonusDataModelImplCopyWith<$Res> {
  __$$PaymentBonusDataModelImplCopyWithImpl(_$PaymentBonusDataModelImpl _value,
      $Res Function(_$PaymentBonusDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = null,
    Object? e = null,
    Object? info = null,
    Object? balance = null,
    Object? errorMessage = null,
  }) {
    return _then(_$PaymentBonusDataModelImpl(
      r: null == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String,
      e: null == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as String,
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PaymentBonusDataModelImpl extends _PaymentBonusDataModel {
  _$PaymentBonusDataModelImpl(
      {required this.r,
      required this.e,
      required this.info,
      required this.balance,
      required this.errorMessage})
      : super._();

  @override
  final String r;
  @override
  final String e;
  @override
  final String info;
  @override
  final int balance;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'PaymentBonusDataModel(r: $r, e: $e, info: $info, balance: $balance, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentBonusDataModelImpl &&
            (identical(other.r, r) || other.r == r) &&
            (identical(other.e, e) || other.e == e) &&
            (identical(other.info, info) || other.info == info) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, r, e, info, balance, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentBonusDataModelImplCopyWith<_$PaymentBonusDataModelImpl>
      get copyWith => __$$PaymentBonusDataModelImplCopyWithImpl<
          _$PaymentBonusDataModelImpl>(this, _$identity);
}

abstract class _PaymentBonusDataModel extends PaymentBonusDataModel {
  factory _PaymentBonusDataModel(
      {required final String r,
      required final String e,
      required final String info,
      required final int balance,
      required final String errorMessage}) = _$PaymentBonusDataModelImpl;
  _PaymentBonusDataModel._() : super._();

  @override
  String get r;
  @override
  String get e;
  @override
  String get info;
  @override
  int get balance;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$PaymentBonusDataModelImplCopyWith<_$PaymentBonusDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
