// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_version_app_data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StoreVersionAppDataResponse _$StoreVersionAppDataResponseFromJson(
    Map<String, dynamic> json) {
  return _StoreVersionAppDataResponse.fromJson(json);
}

/// @nodoc
mixin _$StoreVersionAppDataResponse {
  @JsonKey(name: 'iOS')
  String? get ios => throw _privateConstructorUsedError;
  @JsonKey(name: 'Android')
  String? get android => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreVersionAppDataResponseCopyWith<StoreVersionAppDataResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreVersionAppDataResponseCopyWith<$Res> {
  factory $StoreVersionAppDataResponseCopyWith(
          StoreVersionAppDataResponse value,
          $Res Function(StoreVersionAppDataResponse) then) =
      _$StoreVersionAppDataResponseCopyWithImpl<$Res,
          StoreVersionAppDataResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'iOS') String? ios,
      @JsonKey(name: 'Android') String? android});
}

/// @nodoc
class _$StoreVersionAppDataResponseCopyWithImpl<$Res,
        $Val extends StoreVersionAppDataResponse>
    implements $StoreVersionAppDataResponseCopyWith<$Res> {
  _$StoreVersionAppDataResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ios = freezed,
    Object? android = freezed,
  }) {
    return _then(_value.copyWith(
      ios: freezed == ios
          ? _value.ios
          : ios // ignore: cast_nullable_to_non_nullable
              as String?,
      android: freezed == android
          ? _value.android
          : android // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoreVersionAppDataResponseImplCopyWith<$Res>
    implements $StoreVersionAppDataResponseCopyWith<$Res> {
  factory _$$StoreVersionAppDataResponseImplCopyWith(
          _$StoreVersionAppDataResponseImpl value,
          $Res Function(_$StoreVersionAppDataResponseImpl) then) =
      __$$StoreVersionAppDataResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'iOS') String? ios,
      @JsonKey(name: 'Android') String? android});
}

/// @nodoc
class __$$StoreVersionAppDataResponseImplCopyWithImpl<$Res>
    extends _$StoreVersionAppDataResponseCopyWithImpl<$Res,
        _$StoreVersionAppDataResponseImpl>
    implements _$$StoreVersionAppDataResponseImplCopyWith<$Res> {
  __$$StoreVersionAppDataResponseImplCopyWithImpl(
      _$StoreVersionAppDataResponseImpl _value,
      $Res Function(_$StoreVersionAppDataResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ios = freezed,
    Object? android = freezed,
  }) {
    return _then(_$StoreVersionAppDataResponseImpl(
      ios: freezed == ios
          ? _value.ios
          : ios // ignore: cast_nullable_to_non_nullable
              as String?,
      android: freezed == android
          ? _value.android
          : android // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoreVersionAppDataResponseImpl extends _StoreVersionAppDataResponse {
  _$StoreVersionAppDataResponseImpl(
      {@JsonKey(name: 'iOS') this.ios, @JsonKey(name: 'Android') this.android})
      : super._();

  factory _$StoreVersionAppDataResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$StoreVersionAppDataResponseImplFromJson(json);

  @override
  @JsonKey(name: 'iOS')
  final String? ios;
  @override
  @JsonKey(name: 'Android')
  final String? android;

  @override
  String toString() {
    return 'StoreVersionAppDataResponse(ios: $ios, android: $android)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreVersionAppDataResponseImpl &&
            (identical(other.ios, ios) || other.ios == ios) &&
            (identical(other.android, android) || other.android == android));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ios, android);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreVersionAppDataResponseImplCopyWith<_$StoreVersionAppDataResponseImpl>
      get copyWith => __$$StoreVersionAppDataResponseImplCopyWithImpl<
          _$StoreVersionAppDataResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoreVersionAppDataResponseImplToJson(
      this,
    );
  }
}

abstract class _StoreVersionAppDataResponse
    extends StoreVersionAppDataResponse {
  factory _StoreVersionAppDataResponse(
          {@JsonKey(name: 'iOS') final String? ios,
          @JsonKey(name: 'Android') final String? android}) =
      _$StoreVersionAppDataResponseImpl;
  _StoreVersionAppDataResponse._() : super._();

  factory _StoreVersionAppDataResponse.fromJson(Map<String, dynamic> json) =
      _$StoreVersionAppDataResponseImpl.fromJson;

  @override
  @JsonKey(name: 'iOS')
  String? get ios;
  @override
  @JsonKey(name: 'Android')
  String? get android;
  @override
  @JsonKey(ignore: true)
  _$$StoreVersionAppDataResponseImplCopyWith<_$StoreVersionAppDataResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
