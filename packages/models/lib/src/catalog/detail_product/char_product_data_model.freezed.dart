// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'char_product_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CharProductDataModel {
  String get name => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  /// Create a copy of CharProductDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CharProductDataModelCopyWith<CharProductDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharProductDataModelCopyWith<$Res> {
  factory $CharProductDataModelCopyWith(CharProductDataModel value,
          $Res Function(CharProductDataModel) then) =
      _$CharProductDataModelCopyWithImpl<$Res, CharProductDataModel>;
  @useResult
  $Res call({String name, String value});
}

/// @nodoc
class _$CharProductDataModelCopyWithImpl<$Res,
        $Val extends CharProductDataModel>
    implements $CharProductDataModelCopyWith<$Res> {
  _$CharProductDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CharProductDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CharProductDataModelImplCopyWith<$Res>
    implements $CharProductDataModelCopyWith<$Res> {
  factory _$$CharProductDataModelImplCopyWith(_$CharProductDataModelImpl value,
          $Res Function(_$CharProductDataModelImpl) then) =
      __$$CharProductDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String value});
}

/// @nodoc
class __$$CharProductDataModelImplCopyWithImpl<$Res>
    extends _$CharProductDataModelCopyWithImpl<$Res, _$CharProductDataModelImpl>
    implements _$$CharProductDataModelImplCopyWith<$Res> {
  __$$CharProductDataModelImplCopyWithImpl(_$CharProductDataModelImpl _value,
      $Res Function(_$CharProductDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CharProductDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
  }) {
    return _then(_$CharProductDataModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CharProductDataModelImpl extends _CharProductDataModel {
  _$CharProductDataModelImpl({required this.name, required this.value})
      : super._();

  @override
  final String name;
  @override
  final String value;

  @override
  String toString() {
    return 'CharProductDataModel(name: $name, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharProductDataModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, value);

  /// Create a copy of CharProductDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CharProductDataModelImplCopyWith<_$CharProductDataModelImpl>
      get copyWith =>
          __$$CharProductDataModelImplCopyWithImpl<_$CharProductDataModelImpl>(
              this, _$identity);
}

abstract class _CharProductDataModel extends CharProductDataModel {
  factory _CharProductDataModel(
      {required final String name,
      required final String value}) = _$CharProductDataModelImpl;
  _CharProductDataModel._() : super._();

  @override
  String get name;
  @override
  String get value;

  /// Create a copy of CharProductDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CharProductDataModelImplCopyWith<_$CharProductDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
