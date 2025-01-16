// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'push_notification_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PushNotificationResponse _$PushNotificationResponseFromJson(
    Map<String, dynamic> json) {
  return _PushNotificationResponse.fromJson(json);
}

/// @nodoc
mixin _$PushNotificationResponse {
  String? get r => throw _privateConstructorUsedError;
  String? get e => throw _privateConstructorUsedError;

  /// Serializes this PushNotificationResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PushNotificationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PushNotificationResponseCopyWith<PushNotificationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PushNotificationResponseCopyWith<$Res> {
  factory $PushNotificationResponseCopyWith(PushNotificationResponse value,
          $Res Function(PushNotificationResponse) then) =
      _$PushNotificationResponseCopyWithImpl<$Res, PushNotificationResponse>;
  @useResult
  $Res call({String? r, String? e});
}

/// @nodoc
class _$PushNotificationResponseCopyWithImpl<$Res,
        $Val extends PushNotificationResponse>
    implements $PushNotificationResponseCopyWith<$Res> {
  _$PushNotificationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PushNotificationResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = freezed,
    Object? e = freezed,
  }) {
    return _then(_value.copyWith(
      r: freezed == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String?,
      e: freezed == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PushNotificationResponseImplCopyWith<$Res>
    implements $PushNotificationResponseCopyWith<$Res> {
  factory _$$PushNotificationResponseImplCopyWith(
          _$PushNotificationResponseImpl value,
          $Res Function(_$PushNotificationResponseImpl) then) =
      __$$PushNotificationResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? r, String? e});
}

/// @nodoc
class __$$PushNotificationResponseImplCopyWithImpl<$Res>
    extends _$PushNotificationResponseCopyWithImpl<$Res,
        _$PushNotificationResponseImpl>
    implements _$$PushNotificationResponseImplCopyWith<$Res> {
  __$$PushNotificationResponseImplCopyWithImpl(
      _$PushNotificationResponseImpl _value,
      $Res Function(_$PushNotificationResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PushNotificationResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = freezed,
    Object? e = freezed,
  }) {
    return _then(_$PushNotificationResponseImpl(
      r: freezed == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String?,
      e: freezed == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PushNotificationResponseImpl extends _PushNotificationResponse {
  _$PushNotificationResponseImpl({this.r, this.e}) : super._();

  factory _$PushNotificationResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PushNotificationResponseImplFromJson(json);

  @override
  final String? r;
  @override
  final String? e;

  @override
  String toString() {
    return 'PushNotificationResponse(r: $r, e: $e)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PushNotificationResponseImpl &&
            (identical(other.r, r) || other.r == r) &&
            (identical(other.e, e) || other.e == e));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, r, e);

  /// Create a copy of PushNotificationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PushNotificationResponseImplCopyWith<_$PushNotificationResponseImpl>
      get copyWith => __$$PushNotificationResponseImplCopyWithImpl<
          _$PushNotificationResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PushNotificationResponseImplToJson(
      this,
    );
  }
}

abstract class _PushNotificationResponse extends PushNotificationResponse {
  factory _PushNotificationResponse({final String? r, final String? e}) =
      _$PushNotificationResponseImpl;
  _PushNotificationResponse._() : super._();

  factory _PushNotificationResponse.fromJson(Map<String, dynamic> json) =
      _$PushNotificationResponseImpl.fromJson;

  @override
  String? get r;
  @override
  String? get e;

  /// Create a copy of PushNotificationResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PushNotificationResponseImplCopyWith<_$PushNotificationResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
