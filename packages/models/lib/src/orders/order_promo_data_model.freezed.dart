// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_promo_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderPromoDataModel {
  String get promocode => throw _privateConstructorUsedError;
  String get promocodeInfo => throw _privateConstructorUsedError;

  /// Create a copy of OrderPromoDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderPromoDataModelCopyWith<OrderPromoDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderPromoDataModelCopyWith<$Res> {
  factory $OrderPromoDataModelCopyWith(
          OrderPromoDataModel value, $Res Function(OrderPromoDataModel) then) =
      _$OrderPromoDataModelCopyWithImpl<$Res, OrderPromoDataModel>;
  @useResult
  $Res call({String promocode, String promocodeInfo});
}

/// @nodoc
class _$OrderPromoDataModelCopyWithImpl<$Res, $Val extends OrderPromoDataModel>
    implements $OrderPromoDataModelCopyWith<$Res> {
  _$OrderPromoDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderPromoDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promocode = null,
    Object? promocodeInfo = null,
  }) {
    return _then(_value.copyWith(
      promocode: null == promocode
          ? _value.promocode
          : promocode // ignore: cast_nullable_to_non_nullable
              as String,
      promocodeInfo: null == promocodeInfo
          ? _value.promocodeInfo
          : promocodeInfo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderPromoDataModelImplCopyWith<$Res>
    implements $OrderPromoDataModelCopyWith<$Res> {
  factory _$$OrderPromoDataModelImplCopyWith(_$OrderPromoDataModelImpl value,
          $Res Function(_$OrderPromoDataModelImpl) then) =
      __$$OrderPromoDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String promocode, String promocodeInfo});
}

/// @nodoc
class __$$OrderPromoDataModelImplCopyWithImpl<$Res>
    extends _$OrderPromoDataModelCopyWithImpl<$Res, _$OrderPromoDataModelImpl>
    implements _$$OrderPromoDataModelImplCopyWith<$Res> {
  __$$OrderPromoDataModelImplCopyWithImpl(_$OrderPromoDataModelImpl _value,
      $Res Function(_$OrderPromoDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderPromoDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promocode = null,
    Object? promocodeInfo = null,
  }) {
    return _then(_$OrderPromoDataModelImpl(
      promocode: null == promocode
          ? _value.promocode
          : promocode // ignore: cast_nullable_to_non_nullable
              as String,
      promocodeInfo: null == promocodeInfo
          ? _value.promocodeInfo
          : promocodeInfo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OrderPromoDataModelImpl extends _OrderPromoDataModel {
  _$OrderPromoDataModelImpl(
      {required this.promocode, required this.promocodeInfo})
      : super._();

  @override
  final String promocode;
  @override
  final String promocodeInfo;

  @override
  String toString() {
    return 'OrderPromoDataModel(promocode: $promocode, promocodeInfo: $promocodeInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderPromoDataModelImpl &&
            (identical(other.promocode, promocode) ||
                other.promocode == promocode) &&
            (identical(other.promocodeInfo, promocodeInfo) ||
                other.promocodeInfo == promocodeInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, promocode, promocodeInfo);

  /// Create a copy of OrderPromoDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderPromoDataModelImplCopyWith<_$OrderPromoDataModelImpl> get copyWith =>
      __$$OrderPromoDataModelImplCopyWithImpl<_$OrderPromoDataModelImpl>(
          this, _$identity);
}

abstract class _OrderPromoDataModel extends OrderPromoDataModel {
  factory _OrderPromoDataModel(
      {required final String promocode,
      required final String promocodeInfo}) = _$OrderPromoDataModelImpl;
  _OrderPromoDataModel._() : super._();

  @override
  String get promocode;
  @override
  String get promocodeInfo;

  /// Create a copy of OrderPromoDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderPromoDataModelImplCopyWith<_$OrderPromoDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
