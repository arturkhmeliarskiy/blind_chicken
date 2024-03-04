// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payments_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaymentsDataModel {
  List<PaymentItemDataModel>? get payments =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentsDataModelCopyWith<PaymentsDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentsDataModelCopyWith<$Res> {
  factory $PaymentsDataModelCopyWith(
          PaymentsDataModel value, $Res Function(PaymentsDataModel) then) =
      _$PaymentsDataModelCopyWithImpl<$Res, PaymentsDataModel>;
  @useResult
  $Res call({List<PaymentItemDataModel>? payments});
}

/// @nodoc
class _$PaymentsDataModelCopyWithImpl<$Res, $Val extends PaymentsDataModel>
    implements $PaymentsDataModelCopyWith<$Res> {
  _$PaymentsDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payments = freezed,
  }) {
    return _then(_value.copyWith(
      payments: freezed == payments
          ? _value.payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<PaymentItemDataModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentsDataModelImplCopyWith<$Res>
    implements $PaymentsDataModelCopyWith<$Res> {
  factory _$$PaymentsDataModelImplCopyWith(_$PaymentsDataModelImpl value,
          $Res Function(_$PaymentsDataModelImpl) then) =
      __$$PaymentsDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PaymentItemDataModel>? payments});
}

/// @nodoc
class __$$PaymentsDataModelImplCopyWithImpl<$Res>
    extends _$PaymentsDataModelCopyWithImpl<$Res, _$PaymentsDataModelImpl>
    implements _$$PaymentsDataModelImplCopyWith<$Res> {
  __$$PaymentsDataModelImplCopyWithImpl(_$PaymentsDataModelImpl _value,
      $Res Function(_$PaymentsDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payments = freezed,
  }) {
    return _then(_$PaymentsDataModelImpl(
      payments: freezed == payments
          ? _value._payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<PaymentItemDataModel>?,
    ));
  }
}

/// @nodoc

class _$PaymentsDataModelImpl extends _PaymentsDataModel {
  _$PaymentsDataModelImpl({final List<PaymentItemDataModel>? payments})
      : _payments = payments,
        super._();

  final List<PaymentItemDataModel>? _payments;
  @override
  List<PaymentItemDataModel>? get payments {
    final value = _payments;
    if (value == null) return null;
    if (_payments is EqualUnmodifiableListView) return _payments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PaymentsDataModel(payments: $payments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentsDataModelImpl &&
            const DeepCollectionEquality().equals(other._payments, _payments));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_payments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentsDataModelImplCopyWith<_$PaymentsDataModelImpl> get copyWith =>
      __$$PaymentsDataModelImplCopyWithImpl<_$PaymentsDataModelImpl>(
          this, _$identity);
}

abstract class _PaymentsDataModel extends PaymentsDataModel {
  factory _PaymentsDataModel({final List<PaymentItemDataModel>? payments}) =
      _$PaymentsDataModelImpl;
  _PaymentsDataModel._() : super._();

  @override
  List<PaymentItemDataModel>? get payments;
  @override
  @JsonKey(ignore: true)
  _$$PaymentsDataModelImplCopyWith<_$PaymentsDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
