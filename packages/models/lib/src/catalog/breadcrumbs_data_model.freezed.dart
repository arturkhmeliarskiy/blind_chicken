// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'breadcrumbs_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BreadcrumbsDataModel {
  String get women => throw _privateConstructorUsedError;
  String get optics => throw _privateConstructorUsedError;
  String get glasses => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BreadcrumbsDataModelCopyWith<BreadcrumbsDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BreadcrumbsDataModelCopyWith<$Res> {
  factory $BreadcrumbsDataModelCopyWith(BreadcrumbsDataModel value,
          $Res Function(BreadcrumbsDataModel) then) =
      _$BreadcrumbsDataModelCopyWithImpl<$Res, BreadcrumbsDataModel>;
  @useResult
  $Res call({String women, String optics, String glasses});
}

/// @nodoc
class _$BreadcrumbsDataModelCopyWithImpl<$Res,
        $Val extends BreadcrumbsDataModel>
    implements $BreadcrumbsDataModelCopyWith<$Res> {
  _$BreadcrumbsDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? women = null,
    Object? optics = null,
    Object? glasses = null,
  }) {
    return _then(_value.copyWith(
      women: null == women
          ? _value.women
          : women // ignore: cast_nullable_to_non_nullable
              as String,
      optics: null == optics
          ? _value.optics
          : optics // ignore: cast_nullable_to_non_nullable
              as String,
      glasses: null == glasses
          ? _value.glasses
          : glasses // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BreadcrumbsDataModelImplCopyWith<$Res>
    implements $BreadcrumbsDataModelCopyWith<$Res> {
  factory _$$BreadcrumbsDataModelImplCopyWith(_$BreadcrumbsDataModelImpl value,
          $Res Function(_$BreadcrumbsDataModelImpl) then) =
      __$$BreadcrumbsDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String women, String optics, String glasses});
}

/// @nodoc
class __$$BreadcrumbsDataModelImplCopyWithImpl<$Res>
    extends _$BreadcrumbsDataModelCopyWithImpl<$Res, _$BreadcrumbsDataModelImpl>
    implements _$$BreadcrumbsDataModelImplCopyWith<$Res> {
  __$$BreadcrumbsDataModelImplCopyWithImpl(_$BreadcrumbsDataModelImpl _value,
      $Res Function(_$BreadcrumbsDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? women = null,
    Object? optics = null,
    Object? glasses = null,
  }) {
    return _then(_$BreadcrumbsDataModelImpl(
      women: null == women
          ? _value.women
          : women // ignore: cast_nullable_to_non_nullable
              as String,
      optics: null == optics
          ? _value.optics
          : optics // ignore: cast_nullable_to_non_nullable
              as String,
      glasses: null == glasses
          ? _value.glasses
          : glasses // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BreadcrumbsDataModelImpl extends _BreadcrumbsDataModel {
  _$BreadcrumbsDataModelImpl(
      {required this.women, required this.optics, required this.glasses})
      : super._();

  @override
  final String women;
  @override
  final String optics;
  @override
  final String glasses;

  @override
  String toString() {
    return 'BreadcrumbsDataModel(women: $women, optics: $optics, glasses: $glasses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BreadcrumbsDataModelImpl &&
            (identical(other.women, women) || other.women == women) &&
            (identical(other.optics, optics) || other.optics == optics) &&
            (identical(other.glasses, glasses) || other.glasses == glasses));
  }

  @override
  int get hashCode => Object.hash(runtimeType, women, optics, glasses);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BreadcrumbsDataModelImplCopyWith<_$BreadcrumbsDataModelImpl>
      get copyWith =>
          __$$BreadcrumbsDataModelImplCopyWithImpl<_$BreadcrumbsDataModelImpl>(
              this, _$identity);
}

abstract class _BreadcrumbsDataModel extends BreadcrumbsDataModel {
  factory _BreadcrumbsDataModel(
      {required final String women,
      required final String optics,
      required final String glasses}) = _$BreadcrumbsDataModelImpl;
  _BreadcrumbsDataModel._() : super._();

  @override
  String get women;
  @override
  String get optics;
  @override
  String get glasses;
  @override
  @JsonKey(ignore: true)
  _$$BreadcrumbsDataModelImplCopyWith<_$BreadcrumbsDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
