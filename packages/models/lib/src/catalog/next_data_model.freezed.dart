// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'next_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NextDataModel {
  String get frames => throw _privateConstructorUsedError;
  String get sunglasses => throw _privateConstructorUsedError;
  String get skiMasks => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NextDataModelCopyWith<NextDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NextDataModelCopyWith<$Res> {
  factory $NextDataModelCopyWith(
          NextDataModel value, $Res Function(NextDataModel) then) =
      _$NextDataModelCopyWithImpl<$Res, NextDataModel>;
  @useResult
  $Res call({String frames, String sunglasses, String skiMasks});
}

/// @nodoc
class _$NextDataModelCopyWithImpl<$Res, $Val extends NextDataModel>
    implements $NextDataModelCopyWith<$Res> {
  _$NextDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frames = null,
    Object? sunglasses = null,
    Object? skiMasks = null,
  }) {
    return _then(_value.copyWith(
      frames: null == frames
          ? _value.frames
          : frames // ignore: cast_nullable_to_non_nullable
              as String,
      sunglasses: null == sunglasses
          ? _value.sunglasses
          : sunglasses // ignore: cast_nullable_to_non_nullable
              as String,
      skiMasks: null == skiMasks
          ? _value.skiMasks
          : skiMasks // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NextDataModelImplCopyWith<$Res>
    implements $NextDataModelCopyWith<$Res> {
  factory _$$NextDataModelImplCopyWith(
          _$NextDataModelImpl value, $Res Function(_$NextDataModelImpl) then) =
      __$$NextDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String frames, String sunglasses, String skiMasks});
}

/// @nodoc
class __$$NextDataModelImplCopyWithImpl<$Res>
    extends _$NextDataModelCopyWithImpl<$Res, _$NextDataModelImpl>
    implements _$$NextDataModelImplCopyWith<$Res> {
  __$$NextDataModelImplCopyWithImpl(
      _$NextDataModelImpl _value, $Res Function(_$NextDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frames = null,
    Object? sunglasses = null,
    Object? skiMasks = null,
  }) {
    return _then(_$NextDataModelImpl(
      frames: null == frames
          ? _value.frames
          : frames // ignore: cast_nullable_to_non_nullable
              as String,
      sunglasses: null == sunglasses
          ? _value.sunglasses
          : sunglasses // ignore: cast_nullable_to_non_nullable
              as String,
      skiMasks: null == skiMasks
          ? _value.skiMasks
          : skiMasks // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NextDataModelImpl extends _NextDataModel {
  _$NextDataModelImpl(
      {required this.frames, required this.sunglasses, required this.skiMasks})
      : super._();

  @override
  final String frames;
  @override
  final String sunglasses;
  @override
  final String skiMasks;

  @override
  String toString() {
    return 'NextDataModel(frames: $frames, sunglasses: $sunglasses, skiMasks: $skiMasks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NextDataModelImpl &&
            (identical(other.frames, frames) || other.frames == frames) &&
            (identical(other.sunglasses, sunglasses) ||
                other.sunglasses == sunglasses) &&
            (identical(other.skiMasks, skiMasks) ||
                other.skiMasks == skiMasks));
  }

  @override
  int get hashCode => Object.hash(runtimeType, frames, sunglasses, skiMasks);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NextDataModelImplCopyWith<_$NextDataModelImpl> get copyWith =>
      __$$NextDataModelImplCopyWithImpl<_$NextDataModelImpl>(this, _$identity);
}

abstract class _NextDataModel extends NextDataModel {
  factory _NextDataModel(
      {required final String frames,
      required final String sunglasses,
      required final String skiMasks}) = _$NextDataModelImpl;
  _NextDataModel._() : super._();

  @override
  String get frames;
  @override
  String get sunglasses;
  @override
  String get skiMasks;
  @override
  @JsonKey(ignore: true)
  _$$NextDataModelImplCopyWith<_$NextDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
