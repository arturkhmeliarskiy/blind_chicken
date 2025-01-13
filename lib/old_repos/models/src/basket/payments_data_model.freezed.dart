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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaymentsDataModel {
  List<PaymentItemDataModel> get payments => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

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
  $Res call({List<PaymentItemDataModel> payments, String? errorMessage});
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
    Object? payments = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      payments: null == payments
          ? _value.payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<PaymentItemDataModel>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
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
  $Res call({List<PaymentItemDataModel> payments, String? errorMessage});
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
    Object? payments = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$PaymentsDataModelImpl(
      payments: null == payments
          ? _value._payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<PaymentItemDataModel>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PaymentsDataModelImpl extends _PaymentsDataModel {
  _$PaymentsDataModelImpl(
      {required final List<PaymentItemDataModel> payments, this.errorMessage})
      : _payments = payments,
        super._();

  final List<PaymentItemDataModel> _payments;
  @override
  List<PaymentItemDataModel> get payments {
    if (_payments is EqualUnmodifiableListView) return _payments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_payments);
  }

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'PaymentsDataModel(payments: $payments, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentsDataModelImpl &&
            const DeepCollectionEquality().equals(other._payments, _payments) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_payments), errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentsDataModelImplCopyWith<_$PaymentsDataModelImpl> get copyWith =>
      __$$PaymentsDataModelImplCopyWithImpl<_$PaymentsDataModelImpl>(
          this, _$identity);
}

abstract class _PaymentsDataModel extends PaymentsDataModel {
  factory _PaymentsDataModel(
      {required final List<PaymentItemDataModel> payments,
      final String? errorMessage}) = _$PaymentsDataModelImpl;
  _PaymentsDataModel._() : super._();

  @override
  List<PaymentItemDataModel> get payments;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$PaymentsDataModelImplCopyWith<_$PaymentsDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
