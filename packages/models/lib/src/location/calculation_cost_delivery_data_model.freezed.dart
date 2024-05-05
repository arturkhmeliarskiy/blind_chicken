// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calculation_cost_delivery_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CalculationCostDeliveryDataModel {
  String get r => throw _privateConstructorUsedError;
  String get e => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CalculationCostDeliveryDataModelCopyWith<CalculationCostDeliveryDataModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalculationCostDeliveryDataModelCopyWith<$Res> {
  factory $CalculationCostDeliveryDataModelCopyWith(
          CalculationCostDeliveryDataModel value,
          $Res Function(CalculationCostDeliveryDataModel) then) =
      _$CalculationCostDeliveryDataModelCopyWithImpl<$Res,
          CalculationCostDeliveryDataModel>;
  @useResult
  $Res call({String r, String e, int price});
}

/// @nodoc
class _$CalculationCostDeliveryDataModelCopyWithImpl<$Res,
        $Val extends CalculationCostDeliveryDataModel>
    implements $CalculationCostDeliveryDataModelCopyWith<$Res> {
  _$CalculationCostDeliveryDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = null,
    Object? e = null,
    Object? price = null,
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
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CalculationCostDeliveryDataModelImplCopyWith<$Res>
    implements $CalculationCostDeliveryDataModelCopyWith<$Res> {
  factory _$$CalculationCostDeliveryDataModelImplCopyWith(
          _$CalculationCostDeliveryDataModelImpl value,
          $Res Function(_$CalculationCostDeliveryDataModelImpl) then) =
      __$$CalculationCostDeliveryDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String r, String e, int price});
}

/// @nodoc
class __$$CalculationCostDeliveryDataModelImplCopyWithImpl<$Res>
    extends _$CalculationCostDeliveryDataModelCopyWithImpl<$Res,
        _$CalculationCostDeliveryDataModelImpl>
    implements _$$CalculationCostDeliveryDataModelImplCopyWith<$Res> {
  __$$CalculationCostDeliveryDataModelImplCopyWithImpl(
      _$CalculationCostDeliveryDataModelImpl _value,
      $Res Function(_$CalculationCostDeliveryDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = null,
    Object? e = null,
    Object? price = null,
  }) {
    return _then(_$CalculationCostDeliveryDataModelImpl(
      r: null == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String,
      e: null == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CalculationCostDeliveryDataModelImpl
    extends _CalculationCostDeliveryDataModel {
  _$CalculationCostDeliveryDataModelImpl(
      {required this.r, required this.e, required this.price})
      : super._();

  @override
  final String r;
  @override
  final String e;
  @override
  final int price;

  @override
  String toString() {
    return 'CalculationCostDeliveryDataModel(r: $r, e: $e, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalculationCostDeliveryDataModelImpl &&
            (identical(other.r, r) || other.r == r) &&
            (identical(other.e, e) || other.e == e) &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode => Object.hash(runtimeType, r, e, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CalculationCostDeliveryDataModelImplCopyWith<
          _$CalculationCostDeliveryDataModelImpl>
      get copyWith => __$$CalculationCostDeliveryDataModelImplCopyWithImpl<
          _$CalculationCostDeliveryDataModelImpl>(this, _$identity);
}

abstract class _CalculationCostDeliveryDataModel
    extends CalculationCostDeliveryDataModel {
  factory _CalculationCostDeliveryDataModel(
      {required final String r,
      required final String e,
      required final int price}) = _$CalculationCostDeliveryDataModelImpl;
  _CalculationCostDeliveryDataModel._() : super._();

  @override
  String get r;
  @override
  String get e;
  @override
  int get price;
  @override
  @JsonKey(ignore: true)
  _$$CalculationCostDeliveryDataModelImplCopyWith<
          _$CalculationCostDeliveryDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
