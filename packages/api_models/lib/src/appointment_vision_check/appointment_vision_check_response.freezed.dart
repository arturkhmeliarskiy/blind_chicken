// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment_vision_check_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppointmentVisionCheckResponse _$AppointmentVisionCheckResponseFromJson(
    Map<String, dynamic> json) {
  return _AppointmentVisionCheckResponse.fromJson(json);
}

/// @nodoc
mixin _$AppointmentVisionCheckResponse {
  String? get name => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  String? get time => throw _privateConstructorUsedError;
  String? get r => throw _privateConstructorUsedError;
  String? get e => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppointmentVisionCheckResponseCopyWith<AppointmentVisionCheckResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentVisionCheckResponseCopyWith<$Res> {
  factory $AppointmentVisionCheckResponseCopyWith(
          AppointmentVisionCheckResponse value,
          $Res Function(AppointmentVisionCheckResponse) then) =
      _$AppointmentVisionCheckResponseCopyWithImpl<$Res,
          AppointmentVisionCheckResponse>;
  @useResult
  $Res call(
      {String? name,
      String? date,
      String? time,
      String? r,
      String? e,
      String? errorMessage});
}

/// @nodoc
class _$AppointmentVisionCheckResponseCopyWithImpl<$Res,
        $Val extends AppointmentVisionCheckResponse>
    implements $AppointmentVisionCheckResponseCopyWith<$Res> {
  _$AppointmentVisionCheckResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? date = freezed,
    Object? time = freezed,
    Object? r = freezed,
    Object? e = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      r: freezed == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String?,
      e: freezed == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppointmentVisionCheckResponseImplCopyWith<$Res>
    implements $AppointmentVisionCheckResponseCopyWith<$Res> {
  factory _$$AppointmentVisionCheckResponseImplCopyWith(
          _$AppointmentVisionCheckResponseImpl value,
          $Res Function(_$AppointmentVisionCheckResponseImpl) then) =
      __$$AppointmentVisionCheckResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? date,
      String? time,
      String? r,
      String? e,
      String? errorMessage});
}

/// @nodoc
class __$$AppointmentVisionCheckResponseImplCopyWithImpl<$Res>
    extends _$AppointmentVisionCheckResponseCopyWithImpl<$Res,
        _$AppointmentVisionCheckResponseImpl>
    implements _$$AppointmentVisionCheckResponseImplCopyWith<$Res> {
  __$$AppointmentVisionCheckResponseImplCopyWithImpl(
      _$AppointmentVisionCheckResponseImpl _value,
      $Res Function(_$AppointmentVisionCheckResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? date = freezed,
    Object? time = freezed,
    Object? r = freezed,
    Object? e = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$AppointmentVisionCheckResponseImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      r: freezed == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String?,
      e: freezed == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
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
class _$AppointmentVisionCheckResponseImpl
    extends _AppointmentVisionCheckResponse {
  _$AppointmentVisionCheckResponseImpl(
      {this.name, this.date, this.time, this.r, this.e, this.errorMessage})
      : super._();

  factory _$AppointmentVisionCheckResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AppointmentVisionCheckResponseImplFromJson(json);

  @override
  final String? name;
  @override
  final String? date;
  @override
  final String? time;
  @override
  final String? r;
  @override
  final String? e;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'AppointmentVisionCheckResponse(name: $name, date: $date, time: $time, r: $r, e: $e, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentVisionCheckResponseImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.r, r) || other.r == r) &&
            (identical(other.e, e) || other.e == e) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, date, time, r, e, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppointmentVisionCheckResponseImplCopyWith<
          _$AppointmentVisionCheckResponseImpl>
      get copyWith => __$$AppointmentVisionCheckResponseImplCopyWithImpl<
          _$AppointmentVisionCheckResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppointmentVisionCheckResponseImplToJson(
      this,
    );
  }
}

abstract class _AppointmentVisionCheckResponse
    extends AppointmentVisionCheckResponse {
  factory _AppointmentVisionCheckResponse(
      {final String? name,
      final String? date,
      final String? time,
      final String? r,
      final String? e,
      final String? errorMessage}) = _$AppointmentVisionCheckResponseImpl;
  _AppointmentVisionCheckResponse._() : super._();

  factory _AppointmentVisionCheckResponse.fromJson(Map<String, dynamic> json) =
      _$AppointmentVisionCheckResponseImpl.fromJson;

  @override
  String? get name;
  @override
  String? get date;
  @override
  String? get time;
  @override
  String? get r;
  @override
  String? get e;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$AppointmentVisionCheckResponseImplCopyWith<
          _$AppointmentVisionCheckResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
