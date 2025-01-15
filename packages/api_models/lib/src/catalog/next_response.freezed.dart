// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'next_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NextResponse _$NextResponseFromJson(Map<String, dynamic> json) {
  return _NextResponse.fromJson(json);
}

/// @nodoc
mixin _$NextResponse {
  @JsonKey(name: 'Оправы')
  String? get frames => throw _privateConstructorUsedError;
  @JsonKey(name: 'Солнцезащитные очки')
  String? get sunglasses => throw _privateConstructorUsedError;
  @JsonKey(name: 'Горнолыжные маски')
  String? get skiMasks => throw _privateConstructorUsedError;

  /// Serializes this NextResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NextResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NextResponseCopyWith<NextResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NextResponseCopyWith<$Res> {
  factory $NextResponseCopyWith(
          NextResponse value, $Res Function(NextResponse) then) =
      _$NextResponseCopyWithImpl<$Res, NextResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Оправы') String? frames,
      @JsonKey(name: 'Солнцезащитные очки') String? sunglasses,
      @JsonKey(name: 'Горнолыжные маски') String? skiMasks});
}

/// @nodoc
class _$NextResponseCopyWithImpl<$Res, $Val extends NextResponse>
    implements $NextResponseCopyWith<$Res> {
  _$NextResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NextResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frames = freezed,
    Object? sunglasses = freezed,
    Object? skiMasks = freezed,
  }) {
    return _then(_value.copyWith(
      frames: freezed == frames
          ? _value.frames
          : frames // ignore: cast_nullable_to_non_nullable
              as String?,
      sunglasses: freezed == sunglasses
          ? _value.sunglasses
          : sunglasses // ignore: cast_nullable_to_non_nullable
              as String?,
      skiMasks: freezed == skiMasks
          ? _value.skiMasks
          : skiMasks // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NextResponseImplCopyWith<$Res>
    implements $NextResponseCopyWith<$Res> {
  factory _$$NextResponseImplCopyWith(
          _$NextResponseImpl value, $Res Function(_$NextResponseImpl) then) =
      __$$NextResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Оправы') String? frames,
      @JsonKey(name: 'Солнцезащитные очки') String? sunglasses,
      @JsonKey(name: 'Горнолыжные маски') String? skiMasks});
}

/// @nodoc
class __$$NextResponseImplCopyWithImpl<$Res>
    extends _$NextResponseCopyWithImpl<$Res, _$NextResponseImpl>
    implements _$$NextResponseImplCopyWith<$Res> {
  __$$NextResponseImplCopyWithImpl(
      _$NextResponseImpl _value, $Res Function(_$NextResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of NextResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frames = freezed,
    Object? sunglasses = freezed,
    Object? skiMasks = freezed,
  }) {
    return _then(_$NextResponseImpl(
      frames: freezed == frames
          ? _value.frames
          : frames // ignore: cast_nullable_to_non_nullable
              as String?,
      sunglasses: freezed == sunglasses
          ? _value.sunglasses
          : sunglasses // ignore: cast_nullable_to_non_nullable
              as String?,
      skiMasks: freezed == skiMasks
          ? _value.skiMasks
          : skiMasks // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NextResponseImpl extends _NextResponse {
  _$NextResponseImpl(
      {@JsonKey(name: 'Оправы') this.frames,
      @JsonKey(name: 'Солнцезащитные очки') this.sunglasses,
      @JsonKey(name: 'Горнолыжные маски') this.skiMasks})
      : super._();

  factory _$NextResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$NextResponseImplFromJson(json);

  @override
  @JsonKey(name: 'Оправы')
  final String? frames;
  @override
  @JsonKey(name: 'Солнцезащитные очки')
  final String? sunglasses;
  @override
  @JsonKey(name: 'Горнолыжные маски')
  final String? skiMasks;

  @override
  String toString() {
    return 'NextResponse(frames: $frames, sunglasses: $sunglasses, skiMasks: $skiMasks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NextResponseImpl &&
            (identical(other.frames, frames) || other.frames == frames) &&
            (identical(other.sunglasses, sunglasses) ||
                other.sunglasses == sunglasses) &&
            (identical(other.skiMasks, skiMasks) ||
                other.skiMasks == skiMasks));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, frames, sunglasses, skiMasks);

  /// Create a copy of NextResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NextResponseImplCopyWith<_$NextResponseImpl> get copyWith =>
      __$$NextResponseImplCopyWithImpl<_$NextResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NextResponseImplToJson(
      this,
    );
  }
}

abstract class _NextResponse extends NextResponse {
  factory _NextResponse(
          {@JsonKey(name: 'Оправы') final String? frames,
          @JsonKey(name: 'Солнцезащитные очки') final String? sunglasses,
          @JsonKey(name: 'Горнолыжные маски') final String? skiMasks}) =
      _$NextResponseImpl;
  _NextResponse._() : super._();

  factory _NextResponse.fromJson(Map<String, dynamic> json) =
      _$NextResponseImpl.fromJson;

  @override
  @JsonKey(name: 'Оправы')
  String? get frames;
  @override
  @JsonKey(name: 'Солнцезащитные очки')
  String? get sunglasses;
  @override
  @JsonKey(name: 'Горнолыжные маски')
  String? get skiMasks;

  /// Create a copy of NextResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NextResponseImplCopyWith<_$NextResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
