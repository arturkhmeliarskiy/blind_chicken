// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'captha_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CapthaDataModel {
  String get img => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CapthaDataModelCopyWith<CapthaDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CapthaDataModelCopyWith<$Res> {
  factory $CapthaDataModelCopyWith(
          CapthaDataModel value, $Res Function(CapthaDataModel) then) =
      _$CapthaDataModelCopyWithImpl<$Res, CapthaDataModel>;
  @useResult
  $Res call({String img, String code});
}

/// @nodoc
class _$CapthaDataModelCopyWithImpl<$Res, $Val extends CapthaDataModel>
    implements $CapthaDataModelCopyWith<$Res> {
  _$CapthaDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? img = null,
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      img: null == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CapthaDataModelImplCopyWith<$Res>
    implements $CapthaDataModelCopyWith<$Res> {
  factory _$$CapthaDataModelImplCopyWith(_$CapthaDataModelImpl value,
          $Res Function(_$CapthaDataModelImpl) then) =
      __$$CapthaDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String img, String code});
}

/// @nodoc
class __$$CapthaDataModelImplCopyWithImpl<$Res>
    extends _$CapthaDataModelCopyWithImpl<$Res, _$CapthaDataModelImpl>
    implements _$$CapthaDataModelImplCopyWith<$Res> {
  __$$CapthaDataModelImplCopyWithImpl(
      _$CapthaDataModelImpl _value, $Res Function(_$CapthaDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? img = null,
    Object? code = null,
  }) {
    return _then(_$CapthaDataModelImpl(
      img: null == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CapthaDataModelImpl extends _CapthaDataModel {
  _$CapthaDataModelImpl({required this.img, required this.code}) : super._();

  @override
  final String img;
  @override
  final String code;

  @override
  String toString() {
    return 'CapthaDataModel(img: $img, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CapthaDataModelImpl &&
            (identical(other.img, img) || other.img == img) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, img, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CapthaDataModelImplCopyWith<_$CapthaDataModelImpl> get copyWith =>
      __$$CapthaDataModelImplCopyWithImpl<_$CapthaDataModelImpl>(
          this, _$identity);
}

abstract class _CapthaDataModel extends CapthaDataModel {
  factory _CapthaDataModel(
      {required final String img,
      required final String code}) = _$CapthaDataModelImpl;
  _CapthaDataModel._() : super._();

  @override
  String get img;
  @override
  String get code;
  @override
  @JsonKey(ignore: true)
  _$$CapthaDataModelImplCopyWith<_$CapthaDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
