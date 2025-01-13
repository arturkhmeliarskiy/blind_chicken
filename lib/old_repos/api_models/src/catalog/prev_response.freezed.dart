// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prev_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PrevResponse _$PrevResponseFromJson(Map<String, dynamic> json) {
  return _PrevResponse.fromJson(json);
}

/// @nodoc
mixin _$PrevResponse {
  @JsonKey(name: 'Оптика')
  String? get optics => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrevResponseCopyWith<PrevResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrevResponseCopyWith<$Res> {
  factory $PrevResponseCopyWith(
          PrevResponse value, $Res Function(PrevResponse) then) =
      _$PrevResponseCopyWithImpl<$Res, PrevResponse>;
  @useResult
  $Res call({@JsonKey(name: 'Оптика') String? optics});
}

/// @nodoc
class _$PrevResponseCopyWithImpl<$Res, $Val extends PrevResponse>
    implements $PrevResponseCopyWith<$Res> {
  _$PrevResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? optics = freezed,
  }) {
    return _then(_value.copyWith(
      optics: freezed == optics
          ? _value.optics
          : optics // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrevResponseImplCopyWith<$Res>
    implements $PrevResponseCopyWith<$Res> {
  factory _$$PrevResponseImplCopyWith(
          _$PrevResponseImpl value, $Res Function(_$PrevResponseImpl) then) =
      __$$PrevResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'Оптика') String? optics});
}

/// @nodoc
class __$$PrevResponseImplCopyWithImpl<$Res>
    extends _$PrevResponseCopyWithImpl<$Res, _$PrevResponseImpl>
    implements _$$PrevResponseImplCopyWith<$Res> {
  __$$PrevResponseImplCopyWithImpl(
      _$PrevResponseImpl _value, $Res Function(_$PrevResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? optics = freezed,
  }) {
    return _then(_$PrevResponseImpl(
      optics: freezed == optics
          ? _value.optics
          : optics // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrevResponseImpl extends _PrevResponse {
  _$PrevResponseImpl({@JsonKey(name: 'Оптика') this.optics}) : super._();

  factory _$PrevResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrevResponseImplFromJson(json);

  @override
  @JsonKey(name: 'Оптика')
  final String? optics;

  @override
  String toString() {
    return 'PrevResponse(optics: $optics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrevResponseImpl &&
            (identical(other.optics, optics) || other.optics == optics));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, optics);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PrevResponseImplCopyWith<_$PrevResponseImpl> get copyWith =>
      __$$PrevResponseImplCopyWithImpl<_$PrevResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrevResponseImplToJson(
      this,
    );
  }
}

abstract class _PrevResponse extends PrevResponse {
  factory _PrevResponse({@JsonKey(name: 'Оптика') final String? optics}) =
      _$PrevResponseImpl;
  _PrevResponse._() : super._();

  factory _PrevResponse.fromJson(Map<String, dynamic> json) =
      _$PrevResponseImpl.fromJson;

  @override
  @JsonKey(name: 'Оптика')
  String? get optics;
  @override
  @JsonKey(ignore: true)
  _$$PrevResponseImplCopyWith<_$PrevResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
