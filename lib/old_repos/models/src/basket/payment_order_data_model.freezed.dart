// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_order_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaymentOrderDataModel {
  String get r => throw _privateConstructorUsedError;
  String get e => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentOrderDataModelCopyWith<PaymentOrderDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentOrderDataModelCopyWith<$Res> {
  factory $PaymentOrderDataModelCopyWith(PaymentOrderDataModel value,
          $Res Function(PaymentOrderDataModel) then) =
      _$PaymentOrderDataModelCopyWithImpl<$Res, PaymentOrderDataModel>;
  @useResult
  $Res call({String r, String e, int id, String errorMessage});
}

/// @nodoc
class _$PaymentOrderDataModelCopyWithImpl<$Res,
        $Val extends PaymentOrderDataModel>
    implements $PaymentOrderDataModelCopyWith<$Res> {
  _$PaymentOrderDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = null,
    Object? e = null,
    Object? id = null,
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
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentOrderDataModelImplCopyWith<$Res>
    implements $PaymentOrderDataModelCopyWith<$Res> {
  factory _$$PaymentOrderDataModelImplCopyWith(
          _$PaymentOrderDataModelImpl value,
          $Res Function(_$PaymentOrderDataModelImpl) then) =
      __$$PaymentOrderDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String r, String e, int id, String errorMessage});
}

/// @nodoc
class __$$PaymentOrderDataModelImplCopyWithImpl<$Res>
    extends _$PaymentOrderDataModelCopyWithImpl<$Res,
        _$PaymentOrderDataModelImpl>
    implements _$$PaymentOrderDataModelImplCopyWith<$Res> {
  __$$PaymentOrderDataModelImplCopyWithImpl(_$PaymentOrderDataModelImpl _value,
      $Res Function(_$PaymentOrderDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = null,
    Object? e = null,
    Object? id = null,
    Object? errorMessage = null,
  }) {
    return _then(_$PaymentOrderDataModelImpl(
      r: null == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String,
      e: null == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PaymentOrderDataModelImpl extends _PaymentOrderDataModel {
  _$PaymentOrderDataModelImpl(
      {required this.r,
      required this.e,
      required this.id,
      required this.errorMessage})
      : super._();

  @override
  final String r;
  @override
  final String e;
  @override
  final int id;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'PaymentOrderDataModel(r: $r, e: $e, id: $id, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentOrderDataModelImpl &&
            (identical(other.r, r) || other.r == r) &&
            (identical(other.e, e) || other.e == e) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, r, e, id, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentOrderDataModelImplCopyWith<_$PaymentOrderDataModelImpl>
      get copyWith => __$$PaymentOrderDataModelImplCopyWithImpl<
          _$PaymentOrderDataModelImpl>(this, _$identity);
}

abstract class _PaymentOrderDataModel extends PaymentOrderDataModel {
  factory _PaymentOrderDataModel(
      {required final String r,
      required final String e,
      required final int id,
      required final String errorMessage}) = _$PaymentOrderDataModelImpl;
  _PaymentOrderDataModel._() : super._();

  @override
  String get r;
  @override
  String get e;
  @override
  int get id;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$PaymentOrderDataModelImplCopyWith<_$PaymentOrderDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
