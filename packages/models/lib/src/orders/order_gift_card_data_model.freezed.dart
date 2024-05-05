// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_gift_card_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderGiftCardDataModel {
  String get type => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get img => throw _privateConstructorUsedError;
  String get sum => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderGiftCardDataModelCopyWith<OrderGiftCardDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderGiftCardDataModelCopyWith<$Res> {
  factory $OrderGiftCardDataModelCopyWith(OrderGiftCardDataModel value,
          $Res Function(OrderGiftCardDataModel) then) =
      _$OrderGiftCardDataModelCopyWithImpl<$Res, OrderGiftCardDataModel>;
  @useResult
  $Res call({String type, String color, String name, String img, String sum});
}

/// @nodoc
class _$OrderGiftCardDataModelCopyWithImpl<$Res,
        $Val extends OrderGiftCardDataModel>
    implements $OrderGiftCardDataModelCopyWith<$Res> {
  _$OrderGiftCardDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? color = null,
    Object? name = null,
    Object? img = null,
    Object? sum = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      img: null == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String,
      sum: null == sum
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderGiftCardDataModelImplCopyWith<$Res>
    implements $OrderGiftCardDataModelCopyWith<$Res> {
  factory _$$OrderGiftCardDataModelImplCopyWith(
          _$OrderGiftCardDataModelImpl value,
          $Res Function(_$OrderGiftCardDataModelImpl) then) =
      __$$OrderGiftCardDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String color, String name, String img, String sum});
}

/// @nodoc
class __$$OrderGiftCardDataModelImplCopyWithImpl<$Res>
    extends _$OrderGiftCardDataModelCopyWithImpl<$Res,
        _$OrderGiftCardDataModelImpl>
    implements _$$OrderGiftCardDataModelImplCopyWith<$Res> {
  __$$OrderGiftCardDataModelImplCopyWithImpl(
      _$OrderGiftCardDataModelImpl _value,
      $Res Function(_$OrderGiftCardDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? color = null,
    Object? name = null,
    Object? img = null,
    Object? sum = null,
  }) {
    return _then(_$OrderGiftCardDataModelImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      img: null == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String,
      sum: null == sum
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OrderGiftCardDataModelImpl extends _OrderGiftCardDataModel {
  _$OrderGiftCardDataModelImpl(
      {required this.type,
      required this.color,
      required this.name,
      required this.img,
      required this.sum})
      : super._();

  @override
  final String type;
  @override
  final String color;
  @override
  final String name;
  @override
  final String img;
  @override
  final String sum;

  @override
  String toString() {
    return 'OrderGiftCardDataModel(type: $type, color: $color, name: $name, img: $img, sum: $sum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderGiftCardDataModelImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.img, img) || other.img == img) &&
            (identical(other.sum, sum) || other.sum == sum));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, color, name, img, sum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderGiftCardDataModelImplCopyWith<_$OrderGiftCardDataModelImpl>
      get copyWith => __$$OrderGiftCardDataModelImplCopyWithImpl<
          _$OrderGiftCardDataModelImpl>(this, _$identity);
}

abstract class _OrderGiftCardDataModel extends OrderGiftCardDataModel {
  factory _OrderGiftCardDataModel(
      {required final String type,
      required final String color,
      required final String name,
      required final String img,
      required final String sum}) = _$OrderGiftCardDataModelImpl;
  _OrderGiftCardDataModel._() : super._();

  @override
  String get type;
  @override
  String get color;
  @override
  String get name;
  @override
  String get img;
  @override
  String get sum;
  @override
  @JsonKey(ignore: true)
  _$$OrderGiftCardDataModelImplCopyWith<_$OrderGiftCardDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
