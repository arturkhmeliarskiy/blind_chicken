// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_product_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PlaceProductDataModel {
  int get b => throw _privateConstructorUsedError;
  int get s => throw _privateConstructorUsedError;

  /// Create a copy of PlaceProductDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlaceProductDataModelCopyWith<PlaceProductDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceProductDataModelCopyWith<$Res> {
  factory $PlaceProductDataModelCopyWith(PlaceProductDataModel value,
          $Res Function(PlaceProductDataModel) then) =
      _$PlaceProductDataModelCopyWithImpl<$Res, PlaceProductDataModel>;
  @useResult
  $Res call({int b, int s});
}

/// @nodoc
class _$PlaceProductDataModelCopyWithImpl<$Res,
        $Val extends PlaceProductDataModel>
    implements $PlaceProductDataModelCopyWith<$Res> {
  _$PlaceProductDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlaceProductDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? b = null,
    Object? s = null,
  }) {
    return _then(_value.copyWith(
      b: null == b
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as int,
      s: null == s
          ? _value.s
          : s // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlaceProductDataModelImplCopyWith<$Res>
    implements $PlaceProductDataModelCopyWith<$Res> {
  factory _$$PlaceProductDataModelImplCopyWith(
          _$PlaceProductDataModelImpl value,
          $Res Function(_$PlaceProductDataModelImpl) then) =
      __$$PlaceProductDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int b, int s});
}

/// @nodoc
class __$$PlaceProductDataModelImplCopyWithImpl<$Res>
    extends _$PlaceProductDataModelCopyWithImpl<$Res,
        _$PlaceProductDataModelImpl>
    implements _$$PlaceProductDataModelImplCopyWith<$Res> {
  __$$PlaceProductDataModelImplCopyWithImpl(_$PlaceProductDataModelImpl _value,
      $Res Function(_$PlaceProductDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlaceProductDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? b = null,
    Object? s = null,
  }) {
    return _then(_$PlaceProductDataModelImpl(
      b: null == b
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as int,
      s: null == s
          ? _value.s
          : s // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PlaceProductDataModelImpl extends _PlaceProductDataModel {
  _$PlaceProductDataModelImpl({required this.b, required this.s}) : super._();

  @override
  final int b;
  @override
  final int s;

  @override
  String toString() {
    return 'PlaceProductDataModel(b: $b, s: $s)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceProductDataModelImpl &&
            (identical(other.b, b) || other.b == b) &&
            (identical(other.s, s) || other.s == s));
  }

  @override
  int get hashCode => Object.hash(runtimeType, b, s);

  /// Create a copy of PlaceProductDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceProductDataModelImplCopyWith<_$PlaceProductDataModelImpl>
      get copyWith => __$$PlaceProductDataModelImplCopyWithImpl<
          _$PlaceProductDataModelImpl>(this, _$identity);
}

abstract class _PlaceProductDataModel extends PlaceProductDataModel {
  factory _PlaceProductDataModel({required final int b, required final int s}) =
      _$PlaceProductDataModelImpl;
  _PlaceProductDataModel._() : super._();

  @override
  int get b;
  @override
  int get s;

  /// Create a copy of PlaceProductDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlaceProductDataModelImplCopyWith<_$PlaceProductDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
