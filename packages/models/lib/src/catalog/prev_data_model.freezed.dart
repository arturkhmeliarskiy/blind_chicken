// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prev_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PrevDataModel {
  String get optics => throw _privateConstructorUsedError;

  /// Create a copy of PrevDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PrevDataModelCopyWith<PrevDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrevDataModelCopyWith<$Res> {
  factory $PrevDataModelCopyWith(
          PrevDataModel value, $Res Function(PrevDataModel) then) =
      _$PrevDataModelCopyWithImpl<$Res, PrevDataModel>;
  @useResult
  $Res call({String optics});
}

/// @nodoc
class _$PrevDataModelCopyWithImpl<$Res, $Val extends PrevDataModel>
    implements $PrevDataModelCopyWith<$Res> {
  _$PrevDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PrevDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? optics = null,
  }) {
    return _then(_value.copyWith(
      optics: null == optics
          ? _value.optics
          : optics // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrevDataModelImplCopyWith<$Res>
    implements $PrevDataModelCopyWith<$Res> {
  factory _$$PrevDataModelImplCopyWith(
          _$PrevDataModelImpl value, $Res Function(_$PrevDataModelImpl) then) =
      __$$PrevDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String optics});
}

/// @nodoc
class __$$PrevDataModelImplCopyWithImpl<$Res>
    extends _$PrevDataModelCopyWithImpl<$Res, _$PrevDataModelImpl>
    implements _$$PrevDataModelImplCopyWith<$Res> {
  __$$PrevDataModelImplCopyWithImpl(
      _$PrevDataModelImpl _value, $Res Function(_$PrevDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PrevDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? optics = null,
  }) {
    return _then(_$PrevDataModelImpl(
      optics: null == optics
          ? _value.optics
          : optics // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PrevDataModelImpl extends _PrevDataModel {
  _$PrevDataModelImpl({required this.optics}) : super._();

  @override
  final String optics;

  @override
  String toString() {
    return 'PrevDataModel(optics: $optics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrevDataModelImpl &&
            (identical(other.optics, optics) || other.optics == optics));
  }

  @override
  int get hashCode => Object.hash(runtimeType, optics);

  /// Create a copy of PrevDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PrevDataModelImplCopyWith<_$PrevDataModelImpl> get copyWith =>
      __$$PrevDataModelImplCopyWithImpl<_$PrevDataModelImpl>(this, _$identity);
}

abstract class _PrevDataModel extends PrevDataModel {
  factory _PrevDataModel({required final String optics}) = _$PrevDataModelImpl;
  _PrevDataModel._() : super._();

  @override
  String get optics;

  /// Create a copy of PrevDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PrevDataModelImplCopyWith<_$PrevDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
