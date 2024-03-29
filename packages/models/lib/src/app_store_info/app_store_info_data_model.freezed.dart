// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_store_info_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppStoreInfoDataModel {
  String get appStroreVersion => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStoreInfoDataModelCopyWith<AppStoreInfoDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStoreInfoDataModelCopyWith<$Res> {
  factory $AppStoreInfoDataModelCopyWith(AppStoreInfoDataModel value,
          $Res Function(AppStoreInfoDataModel) then) =
      _$AppStoreInfoDataModelCopyWithImpl<$Res, AppStoreInfoDataModel>;
  @useResult
  $Res call({String appStroreVersion, String errorMessage});
}

/// @nodoc
class _$AppStoreInfoDataModelCopyWithImpl<$Res,
        $Val extends AppStoreInfoDataModel>
    implements $AppStoreInfoDataModelCopyWith<$Res> {
  _$AppStoreInfoDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appStroreVersion = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      appStroreVersion: null == appStroreVersion
          ? _value.appStroreVersion
          : appStroreVersion // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppStoreInfoDataModelImplCopyWith<$Res>
    implements $AppStoreInfoDataModelCopyWith<$Res> {
  factory _$$AppStoreInfoDataModelImplCopyWith(
          _$AppStoreInfoDataModelImpl value,
          $Res Function(_$AppStoreInfoDataModelImpl) then) =
      __$$AppStoreInfoDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String appStroreVersion, String errorMessage});
}

/// @nodoc
class __$$AppStoreInfoDataModelImplCopyWithImpl<$Res>
    extends _$AppStoreInfoDataModelCopyWithImpl<$Res,
        _$AppStoreInfoDataModelImpl>
    implements _$$AppStoreInfoDataModelImplCopyWith<$Res> {
  __$$AppStoreInfoDataModelImplCopyWithImpl(_$AppStoreInfoDataModelImpl _value,
      $Res Function(_$AppStoreInfoDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appStroreVersion = null,
    Object? errorMessage = null,
  }) {
    return _then(_$AppStoreInfoDataModelImpl(
      appStroreVersion: null == appStroreVersion
          ? _value.appStroreVersion
          : appStroreVersion // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AppStoreInfoDataModelImpl extends _AppStoreInfoDataModel {
  _$AppStoreInfoDataModelImpl(
      {required this.appStroreVersion, required this.errorMessage})
      : super._();

  @override
  final String appStroreVersion;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AppStoreInfoDataModel(appStroreVersion: $appStroreVersion, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStoreInfoDataModelImpl &&
            (identical(other.appStroreVersion, appStroreVersion) ||
                other.appStroreVersion == appStroreVersion) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appStroreVersion, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStoreInfoDataModelImplCopyWith<_$AppStoreInfoDataModelImpl>
      get copyWith => __$$AppStoreInfoDataModelImplCopyWithImpl<
          _$AppStoreInfoDataModelImpl>(this, _$identity);
}

abstract class _AppStoreInfoDataModel extends AppStoreInfoDataModel {
  factory _AppStoreInfoDataModel(
      {required final String appStroreVersion,
      required final String errorMessage}) = _$AppStoreInfoDataModelImpl;
  _AppStoreInfoDataModel._() : super._();

  @override
  String get appStroreVersion;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$AppStoreInfoDataModelImplCopyWith<_$AppStoreInfoDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
