// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_version_app_info_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StoreVersionAppInfoDataModel {
  String get ios => throw _privateConstructorUsedError;
  String get android => throw _privateConstructorUsedError;

  /// Create a copy of StoreVersionAppInfoDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoreVersionAppInfoDataModelCopyWith<StoreVersionAppInfoDataModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreVersionAppInfoDataModelCopyWith<$Res> {
  factory $StoreVersionAppInfoDataModelCopyWith(
          StoreVersionAppInfoDataModel value,
          $Res Function(StoreVersionAppInfoDataModel) then) =
      _$StoreVersionAppInfoDataModelCopyWithImpl<$Res,
          StoreVersionAppInfoDataModel>;
  @useResult
  $Res call({String ios, String android});
}

/// @nodoc
class _$StoreVersionAppInfoDataModelCopyWithImpl<$Res,
        $Val extends StoreVersionAppInfoDataModel>
    implements $StoreVersionAppInfoDataModelCopyWith<$Res> {
  _$StoreVersionAppInfoDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoreVersionAppInfoDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ios = null,
    Object? android = null,
  }) {
    return _then(_value.copyWith(
      ios: null == ios
          ? _value.ios
          : ios // ignore: cast_nullable_to_non_nullable
              as String,
      android: null == android
          ? _value.android
          : android // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoreVersionAppInfoDataModelImplCopyWith<$Res>
    implements $StoreVersionAppInfoDataModelCopyWith<$Res> {
  factory _$$StoreVersionAppInfoDataModelImplCopyWith(
          _$StoreVersionAppInfoDataModelImpl value,
          $Res Function(_$StoreVersionAppInfoDataModelImpl) then) =
      __$$StoreVersionAppInfoDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String ios, String android});
}

/// @nodoc
class __$$StoreVersionAppInfoDataModelImplCopyWithImpl<$Res>
    extends _$StoreVersionAppInfoDataModelCopyWithImpl<$Res,
        _$StoreVersionAppInfoDataModelImpl>
    implements _$$StoreVersionAppInfoDataModelImplCopyWith<$Res> {
  __$$StoreVersionAppInfoDataModelImplCopyWithImpl(
      _$StoreVersionAppInfoDataModelImpl _value,
      $Res Function(_$StoreVersionAppInfoDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoreVersionAppInfoDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ios = null,
    Object? android = null,
  }) {
    return _then(_$StoreVersionAppInfoDataModelImpl(
      ios: null == ios
          ? _value.ios
          : ios // ignore: cast_nullable_to_non_nullable
              as String,
      android: null == android
          ? _value.android
          : android // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StoreVersionAppInfoDataModelImpl extends _StoreVersionAppInfoDataModel {
  _$StoreVersionAppInfoDataModelImpl({required this.ios, required this.android})
      : super._();

  @override
  final String ios;
  @override
  final String android;

  @override
  String toString() {
    return 'StoreVersionAppInfoDataModel(ios: $ios, android: $android)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreVersionAppInfoDataModelImpl &&
            (identical(other.ios, ios) || other.ios == ios) &&
            (identical(other.android, android) || other.android == android));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ios, android);

  /// Create a copy of StoreVersionAppInfoDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreVersionAppInfoDataModelImplCopyWith<
          _$StoreVersionAppInfoDataModelImpl>
      get copyWith => __$$StoreVersionAppInfoDataModelImplCopyWithImpl<
          _$StoreVersionAppInfoDataModelImpl>(this, _$identity);
}

abstract class _StoreVersionAppInfoDataModel
    extends StoreVersionAppInfoDataModel {
  factory _StoreVersionAppInfoDataModel(
      {required final String ios,
      required final String android}) = _$StoreVersionAppInfoDataModelImpl;
  _StoreVersionAppInfoDataModel._() : super._();

  @override
  String get ios;
  @override
  String get android;

  /// Create a copy of StoreVersionAppInfoDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoreVersionAppInfoDataModelImplCopyWith<
          _$StoreVersionAppInfoDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
