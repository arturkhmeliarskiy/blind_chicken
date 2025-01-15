// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_version_app_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StoreVersionAppDataModel {
  String get r => throw _privateConstructorUsedError;
  String get e => throw _privateConstructorUsedError;
  StoreVersionAppInfoDataModel get version =>
      throw _privateConstructorUsedError;

  /// Create a copy of StoreVersionAppDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoreVersionAppDataModelCopyWith<StoreVersionAppDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreVersionAppDataModelCopyWith<$Res> {
  factory $StoreVersionAppDataModelCopyWith(StoreVersionAppDataModel value,
          $Res Function(StoreVersionAppDataModel) then) =
      _$StoreVersionAppDataModelCopyWithImpl<$Res, StoreVersionAppDataModel>;
  @useResult
  $Res call({String r, String e, StoreVersionAppInfoDataModel version});

  $StoreVersionAppInfoDataModelCopyWith<$Res> get version;
}

/// @nodoc
class _$StoreVersionAppDataModelCopyWithImpl<$Res,
        $Val extends StoreVersionAppDataModel>
    implements $StoreVersionAppDataModelCopyWith<$Res> {
  _$StoreVersionAppDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoreVersionAppDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = null,
    Object? e = null,
    Object? version = null,
  }) {
    return _then(_value.copyWith(
      r: null == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String,
      e: null == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as StoreVersionAppInfoDataModel,
    ) as $Val);
  }

  /// Create a copy of StoreVersionAppDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoreVersionAppInfoDataModelCopyWith<$Res> get version {
    return $StoreVersionAppInfoDataModelCopyWith<$Res>(_value.version, (value) {
      return _then(_value.copyWith(version: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StoreVersionAppDataModelImplCopyWith<$Res>
    implements $StoreVersionAppDataModelCopyWith<$Res> {
  factory _$$StoreVersionAppDataModelImplCopyWith(
          _$StoreVersionAppDataModelImpl value,
          $Res Function(_$StoreVersionAppDataModelImpl) then) =
      __$$StoreVersionAppDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String r, String e, StoreVersionAppInfoDataModel version});

  @override
  $StoreVersionAppInfoDataModelCopyWith<$Res> get version;
}

/// @nodoc
class __$$StoreVersionAppDataModelImplCopyWithImpl<$Res>
    extends _$StoreVersionAppDataModelCopyWithImpl<$Res,
        _$StoreVersionAppDataModelImpl>
    implements _$$StoreVersionAppDataModelImplCopyWith<$Res> {
  __$$StoreVersionAppDataModelImplCopyWithImpl(
      _$StoreVersionAppDataModelImpl _value,
      $Res Function(_$StoreVersionAppDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoreVersionAppDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = null,
    Object? e = null,
    Object? version = null,
  }) {
    return _then(_$StoreVersionAppDataModelImpl(
      r: null == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String,
      e: null == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as StoreVersionAppInfoDataModel,
    ));
  }
}

/// @nodoc

class _$StoreVersionAppDataModelImpl extends _StoreVersionAppDataModel {
  _$StoreVersionAppDataModelImpl(
      {required this.r, required this.e, required this.version})
      : super._();

  @override
  final String r;
  @override
  final String e;
  @override
  final StoreVersionAppInfoDataModel version;

  @override
  String toString() {
    return 'StoreVersionAppDataModel(r: $r, e: $e, version: $version)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreVersionAppDataModelImpl &&
            (identical(other.r, r) || other.r == r) &&
            (identical(other.e, e) || other.e == e) &&
            (identical(other.version, version) || other.version == version));
  }

  @override
  int get hashCode => Object.hash(runtimeType, r, e, version);

  /// Create a copy of StoreVersionAppDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreVersionAppDataModelImplCopyWith<_$StoreVersionAppDataModelImpl>
      get copyWith => __$$StoreVersionAppDataModelImplCopyWithImpl<
          _$StoreVersionAppDataModelImpl>(this, _$identity);
}

abstract class _StoreVersionAppDataModel extends StoreVersionAppDataModel {
  factory _StoreVersionAppDataModel(
          {required final String r,
          required final String e,
          required final StoreVersionAppInfoDataModel version}) =
      _$StoreVersionAppDataModelImpl;
  _StoreVersionAppDataModel._() : super._();

  @override
  String get r;
  @override
  String get e;
  @override
  StoreVersionAppInfoDataModel get version;

  /// Create a copy of StoreVersionAppDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoreVersionAppDataModelImplCopyWith<_$StoreVersionAppDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
