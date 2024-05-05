// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'boutique_foto_detail_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BoutiqueFotoDetailDataModel {
  String get orig => throw _privateConstructorUsedError;
  String get min => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BoutiqueFotoDetailDataModelCopyWith<BoutiqueFotoDetailDataModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoutiqueFotoDetailDataModelCopyWith<$Res> {
  factory $BoutiqueFotoDetailDataModelCopyWith(
          BoutiqueFotoDetailDataModel value,
          $Res Function(BoutiqueFotoDetailDataModel) then) =
      _$BoutiqueFotoDetailDataModelCopyWithImpl<$Res,
          BoutiqueFotoDetailDataModel>;
  @useResult
  $Res call({String orig, String min});
}

/// @nodoc
class _$BoutiqueFotoDetailDataModelCopyWithImpl<$Res,
        $Val extends BoutiqueFotoDetailDataModel>
    implements $BoutiqueFotoDetailDataModelCopyWith<$Res> {
  _$BoutiqueFotoDetailDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orig = null,
    Object? min = null,
  }) {
    return _then(_value.copyWith(
      orig: null == orig
          ? _value.orig
          : orig // ignore: cast_nullable_to_non_nullable
              as String,
      min: null == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BoutiqueFotoDetailDataModelImplCopyWith<$Res>
    implements $BoutiqueFotoDetailDataModelCopyWith<$Res> {
  factory _$$BoutiqueFotoDetailDataModelImplCopyWith(
          _$BoutiqueFotoDetailDataModelImpl value,
          $Res Function(_$BoutiqueFotoDetailDataModelImpl) then) =
      __$$BoutiqueFotoDetailDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String orig, String min});
}

/// @nodoc
class __$$BoutiqueFotoDetailDataModelImplCopyWithImpl<$Res>
    extends _$BoutiqueFotoDetailDataModelCopyWithImpl<$Res,
        _$BoutiqueFotoDetailDataModelImpl>
    implements _$$BoutiqueFotoDetailDataModelImplCopyWith<$Res> {
  __$$BoutiqueFotoDetailDataModelImplCopyWithImpl(
      _$BoutiqueFotoDetailDataModelImpl _value,
      $Res Function(_$BoutiqueFotoDetailDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orig = null,
    Object? min = null,
  }) {
    return _then(_$BoutiqueFotoDetailDataModelImpl(
      orig: null == orig
          ? _value.orig
          : orig // ignore: cast_nullable_to_non_nullable
              as String,
      min: null == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BoutiqueFotoDetailDataModelImpl extends _BoutiqueFotoDetailDataModel {
  _$BoutiqueFotoDetailDataModelImpl({required this.orig, required this.min})
      : super._();

  @override
  final String orig;
  @override
  final String min;

  @override
  String toString() {
    return 'BoutiqueFotoDetailDataModel(orig: $orig, min: $min)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoutiqueFotoDetailDataModelImpl &&
            (identical(other.orig, orig) || other.orig == orig) &&
            (identical(other.min, min) || other.min == min));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orig, min);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BoutiqueFotoDetailDataModelImplCopyWith<_$BoutiqueFotoDetailDataModelImpl>
      get copyWith => __$$BoutiqueFotoDetailDataModelImplCopyWithImpl<
          _$BoutiqueFotoDetailDataModelImpl>(this, _$identity);
}

abstract class _BoutiqueFotoDetailDataModel
    extends BoutiqueFotoDetailDataModel {
  factory _BoutiqueFotoDetailDataModel(
      {required final String orig,
      required final String min}) = _$BoutiqueFotoDetailDataModelImpl;
  _BoutiqueFotoDetailDataModel._() : super._();

  @override
  String get orig;
  @override
  String get min;
  @override
  @JsonKey(ignore: true)
  _$$BoutiqueFotoDetailDataModelImplCopyWith<_$BoutiqueFotoDetailDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
