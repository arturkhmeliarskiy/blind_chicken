// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_blank_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderBlankDataModel {
  String get id => throw _privateConstructorUsedError;
  String get number => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderBlankDataModelCopyWith<OrderBlankDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderBlankDataModelCopyWith<$Res> {
  factory $OrderBlankDataModelCopyWith(
          OrderBlankDataModel value, $Res Function(OrderBlankDataModel) then) =
      _$OrderBlankDataModelCopyWithImpl<$Res, OrderBlankDataModel>;
  @useResult
  $Res call({String id, String number, String date});
}

/// @nodoc
class _$OrderBlankDataModelCopyWithImpl<$Res, $Val extends OrderBlankDataModel>
    implements $OrderBlankDataModelCopyWith<$Res> {
  _$OrderBlankDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? number = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderBlankDataModelImplCopyWith<$Res>
    implements $OrderBlankDataModelCopyWith<$Res> {
  factory _$$OrderBlankDataModelImplCopyWith(_$OrderBlankDataModelImpl value,
          $Res Function(_$OrderBlankDataModelImpl) then) =
      __$$OrderBlankDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String number, String date});
}

/// @nodoc
class __$$OrderBlankDataModelImplCopyWithImpl<$Res>
    extends _$OrderBlankDataModelCopyWithImpl<$Res, _$OrderBlankDataModelImpl>
    implements _$$OrderBlankDataModelImplCopyWith<$Res> {
  __$$OrderBlankDataModelImplCopyWithImpl(_$OrderBlankDataModelImpl _value,
      $Res Function(_$OrderBlankDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? number = null,
    Object? date = null,
  }) {
    return _then(_$OrderBlankDataModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OrderBlankDataModelImpl extends _OrderBlankDataModel {
  _$OrderBlankDataModelImpl(
      {required this.id, required this.number, required this.date})
      : super._();

  @override
  final String id;
  @override
  final String number;
  @override
  final String date;

  @override
  String toString() {
    return 'OrderBlankDataModel(id: $id, number: $number, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderBlankDataModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, number, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderBlankDataModelImplCopyWith<_$OrderBlankDataModelImpl> get copyWith =>
      __$$OrderBlankDataModelImplCopyWithImpl<_$OrderBlankDataModelImpl>(
          this, _$identity);
}

abstract class _OrderBlankDataModel extends OrderBlankDataModel {
  factory _OrderBlankDataModel(
      {required final String id,
      required final String number,
      required final String date}) = _$OrderBlankDataModelImpl;
  _OrderBlankDataModel._() : super._();

  @override
  String get id;
  @override
  String get number;
  @override
  String get date;
  @override
  @JsonKey(ignore: true)
  _$$OrderBlankDataModelImplCopyWith<_$OrderBlankDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
