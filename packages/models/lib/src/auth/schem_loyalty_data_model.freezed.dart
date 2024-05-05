// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schem_loyalty_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SchemLoyaltyDataModel {
  int get discount => throw _privateConstructorUsedError;
  int get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SchemLoyaltyDataModelCopyWith<SchemLoyaltyDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchemLoyaltyDataModelCopyWith<$Res> {
  factory $SchemLoyaltyDataModelCopyWith(SchemLoyaltyDataModel value,
          $Res Function(SchemLoyaltyDataModel) then) =
      _$SchemLoyaltyDataModelCopyWithImpl<$Res, SchemLoyaltyDataModel>;
  @useResult
  $Res call({int discount, int value});
}

/// @nodoc
class _$SchemLoyaltyDataModelCopyWithImpl<$Res,
        $Val extends SchemLoyaltyDataModel>
    implements $SchemLoyaltyDataModelCopyWith<$Res> {
  _$SchemLoyaltyDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discount = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SchemLoyaltyDataModelImplCopyWith<$Res>
    implements $SchemLoyaltyDataModelCopyWith<$Res> {
  factory _$$SchemLoyaltyDataModelImplCopyWith(
          _$SchemLoyaltyDataModelImpl value,
          $Res Function(_$SchemLoyaltyDataModelImpl) then) =
      __$$SchemLoyaltyDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int discount, int value});
}

/// @nodoc
class __$$SchemLoyaltyDataModelImplCopyWithImpl<$Res>
    extends _$SchemLoyaltyDataModelCopyWithImpl<$Res,
        _$SchemLoyaltyDataModelImpl>
    implements _$$SchemLoyaltyDataModelImplCopyWith<$Res> {
  __$$SchemLoyaltyDataModelImplCopyWithImpl(_$SchemLoyaltyDataModelImpl _value,
      $Res Function(_$SchemLoyaltyDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discount = null,
    Object? value = null,
  }) {
    return _then(_$SchemLoyaltyDataModelImpl(
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SchemLoyaltyDataModelImpl extends _SchemLoyaltyDataModel {
  _$SchemLoyaltyDataModelImpl({required this.discount, required this.value})
      : super._();

  @override
  final int discount;
  @override
  final int value;

  @override
  String toString() {
    return 'SchemLoyaltyDataModel(discount: $discount, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SchemLoyaltyDataModelImpl &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, discount, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SchemLoyaltyDataModelImplCopyWith<_$SchemLoyaltyDataModelImpl>
      get copyWith => __$$SchemLoyaltyDataModelImplCopyWithImpl<
          _$SchemLoyaltyDataModelImpl>(this, _$identity);
}

abstract class _SchemLoyaltyDataModel extends SchemLoyaltyDataModel {
  factory _SchemLoyaltyDataModel(
      {required final int discount,
      required final int value}) = _$SchemLoyaltyDataModelImpl;
  _SchemLoyaltyDataModel._() : super._();

  @override
  int get discount;
  @override
  int get value;
  @override
  @JsonKey(ignore: true)
  _$$SchemLoyaltyDataModelImplCopyWith<_$SchemLoyaltyDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
