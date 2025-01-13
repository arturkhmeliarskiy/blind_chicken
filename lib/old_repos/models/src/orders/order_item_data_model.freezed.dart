// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_item_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderItemDataModel {
  String get id => throw _privateConstructorUsedError;
  int get sum => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderItemDataModelCopyWith<OrderItemDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderItemDataModelCopyWith<$Res> {
  factory $OrderItemDataModelCopyWith(
          OrderItemDataModel value, $Res Function(OrderItemDataModel) then) =
      _$OrderItemDataModelCopyWithImpl<$Res, OrderItemDataModel>;
  @useResult
  $Res call({String id, int sum, String status, String date});
}

/// @nodoc
class _$OrderItemDataModelCopyWithImpl<$Res, $Val extends OrderItemDataModel>
    implements $OrderItemDataModelCopyWith<$Res> {
  _$OrderItemDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sum = null,
    Object? status = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sum: null == sum
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderItemDataModelImplCopyWith<$Res>
    implements $OrderItemDataModelCopyWith<$Res> {
  factory _$$OrderItemDataModelImplCopyWith(_$OrderItemDataModelImpl value,
          $Res Function(_$OrderItemDataModelImpl) then) =
      __$$OrderItemDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, int sum, String status, String date});
}

/// @nodoc
class __$$OrderItemDataModelImplCopyWithImpl<$Res>
    extends _$OrderItemDataModelCopyWithImpl<$Res, _$OrderItemDataModelImpl>
    implements _$$OrderItemDataModelImplCopyWith<$Res> {
  __$$OrderItemDataModelImplCopyWithImpl(_$OrderItemDataModelImpl _value,
      $Res Function(_$OrderItemDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sum = null,
    Object? status = null,
    Object? date = null,
  }) {
    return _then(_$OrderItemDataModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sum: null == sum
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OrderItemDataModelImpl extends _OrderItemDataModel {
  _$OrderItemDataModelImpl(
      {required this.id,
      required this.sum,
      required this.status,
      required this.date})
      : super._();

  @override
  final String id;
  @override
  final int sum;
  @override
  final String status;
  @override
  final String date;

  @override
  String toString() {
    return 'OrderItemDataModel(id: $id, sum: $sum, status: $status, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderItemDataModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sum, sum) || other.sum == sum) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, sum, status, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderItemDataModelImplCopyWith<_$OrderItemDataModelImpl> get copyWith =>
      __$$OrderItemDataModelImplCopyWithImpl<_$OrderItemDataModelImpl>(
          this, _$identity);
}

abstract class _OrderItemDataModel extends OrderItemDataModel {
  factory _OrderItemDataModel(
      {required final String id,
      required final int sum,
      required final String status,
      required final String date}) = _$OrderItemDataModelImpl;
  _OrderItemDataModel._() : super._();

  @override
  String get id;
  @override
  int get sum;
  @override
  String get status;
  @override
  String get date;
  @override
  @JsonKey(ignore: true)
  _$$OrderItemDataModelImplCopyWith<_$OrderItemDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
