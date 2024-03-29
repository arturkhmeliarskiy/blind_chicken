// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_store_info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppStoreInfoResponse _$AppStoreInfoResponseFromJson(Map<String, dynamic> json) {
  return _AppStoreInfoResponse.fromJson(json);
}

/// @nodoc
mixin _$AppStoreInfoResponse {
  String? get appStroreVersion => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppStoreInfoResponseCopyWith<AppStoreInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStoreInfoResponseCopyWith<$Res> {
  factory $AppStoreInfoResponseCopyWith(AppStoreInfoResponse value,
          $Res Function(AppStoreInfoResponse) then) =
      _$AppStoreInfoResponseCopyWithImpl<$Res, AppStoreInfoResponse>;
  @useResult
  $Res call({String? appStroreVersion, String? errorMessage});
}

/// @nodoc
class _$AppStoreInfoResponseCopyWithImpl<$Res,
        $Val extends AppStoreInfoResponse>
    implements $AppStoreInfoResponseCopyWith<$Res> {
  _$AppStoreInfoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appStroreVersion = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      appStroreVersion: freezed == appStroreVersion
          ? _value.appStroreVersion
          : appStroreVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppStoreInfoResponseImplCopyWith<$Res>
    implements $AppStoreInfoResponseCopyWith<$Res> {
  factory _$$AppStoreInfoResponseImplCopyWith(_$AppStoreInfoResponseImpl value,
          $Res Function(_$AppStoreInfoResponseImpl) then) =
      __$$AppStoreInfoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? appStroreVersion, String? errorMessage});
}

/// @nodoc
class __$$AppStoreInfoResponseImplCopyWithImpl<$Res>
    extends _$AppStoreInfoResponseCopyWithImpl<$Res, _$AppStoreInfoResponseImpl>
    implements _$$AppStoreInfoResponseImplCopyWith<$Res> {
  __$$AppStoreInfoResponseImplCopyWithImpl(_$AppStoreInfoResponseImpl _value,
      $Res Function(_$AppStoreInfoResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appStroreVersion = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$AppStoreInfoResponseImpl(
      appStroreVersion: freezed == appStroreVersion
          ? _value.appStroreVersion
          : appStroreVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppStoreInfoResponseImpl extends _AppStoreInfoResponse {
  _$AppStoreInfoResponseImpl({this.appStroreVersion, this.errorMessage})
      : super._();

  factory _$AppStoreInfoResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppStoreInfoResponseImplFromJson(json);

  @override
  final String? appStroreVersion;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'AppStoreInfoResponse(appStroreVersion: $appStroreVersion, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStoreInfoResponseImpl &&
            (identical(other.appStroreVersion, appStroreVersion) ||
                other.appStroreVersion == appStroreVersion) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, appStroreVersion, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStoreInfoResponseImplCopyWith<_$AppStoreInfoResponseImpl>
      get copyWith =>
          __$$AppStoreInfoResponseImplCopyWithImpl<_$AppStoreInfoResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppStoreInfoResponseImplToJson(
      this,
    );
  }
}

abstract class _AppStoreInfoResponse extends AppStoreInfoResponse {
  factory _AppStoreInfoResponse(
      {final String? appStroreVersion,
      final String? errorMessage}) = _$AppStoreInfoResponseImpl;
  _AppStoreInfoResponse._() : super._();

  factory _AppStoreInfoResponse.fromJson(Map<String, dynamic> json) =
      _$AppStoreInfoResponseImpl.fromJson;

  @override
  String? get appStroreVersion;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$AppStoreInfoResponseImplCopyWith<_$AppStoreInfoResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
