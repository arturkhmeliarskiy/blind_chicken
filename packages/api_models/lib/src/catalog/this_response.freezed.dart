// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'this_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ThisResponse _$ThisResponseFromJson(Map<String, dynamic> json) {
  return _ThisResponse.fromJson(json);
}

/// @nodoc
mixin _$ThisResponse {
  @JsonKey(name: 'Очки')
  String? get glasses => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThisResponseCopyWith<ThisResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThisResponseCopyWith<$Res> {
  factory $ThisResponseCopyWith(
          ThisResponse value, $Res Function(ThisResponse) then) =
      _$ThisResponseCopyWithImpl<$Res, ThisResponse>;
  @useResult
  $Res call({@JsonKey(name: 'Очки') String? glasses});
}

/// @nodoc
class _$ThisResponseCopyWithImpl<$Res, $Val extends ThisResponse>
    implements $ThisResponseCopyWith<$Res> {
  _$ThisResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? glasses = freezed,
  }) {
    return _then(_value.copyWith(
      glasses: freezed == glasses
          ? _value.glasses
          : glasses // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ThisResponseImplCopyWith<$Res>
    implements $ThisResponseCopyWith<$Res> {
  factory _$$ThisResponseImplCopyWith(
          _$ThisResponseImpl value, $Res Function(_$ThisResponseImpl) then) =
      __$$ThisResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'Очки') String? glasses});
}

/// @nodoc
class __$$ThisResponseImplCopyWithImpl<$Res>
    extends _$ThisResponseCopyWithImpl<$Res, _$ThisResponseImpl>
    implements _$$ThisResponseImplCopyWith<$Res> {
  __$$ThisResponseImplCopyWithImpl(
      _$ThisResponseImpl _value, $Res Function(_$ThisResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? glasses = freezed,
  }) {
    return _then(_$ThisResponseImpl(
      glasses: freezed == glasses
          ? _value.glasses
          : glasses // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ThisResponseImpl extends _ThisResponse {
  _$ThisResponseImpl({@JsonKey(name: 'Очки') this.glasses}) : super._();

  factory _$ThisResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ThisResponseImplFromJson(json);

  @override
  @JsonKey(name: 'Очки')
  final String? glasses;

  @override
  String toString() {
    return 'ThisResponse(glasses: $glasses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThisResponseImpl &&
            (identical(other.glasses, glasses) || other.glasses == glasses));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, glasses);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThisResponseImplCopyWith<_$ThisResponseImpl> get copyWith =>
      __$$ThisResponseImplCopyWithImpl<_$ThisResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ThisResponseImplToJson(
      this,
    );
  }
}

abstract class _ThisResponse extends ThisResponse {
  factory _ThisResponse({@JsonKey(name: 'Очки') final String? glasses}) =
      _$ThisResponseImpl;
  _ThisResponse._() : super._();

  factory _ThisResponse.fromJson(Map<String, dynamic> json) =
      _$ThisResponseImpl.fromJson;

  @override
  @JsonKey(name: 'Очки')
  String? get glasses;
  @override
  @JsonKey(ignore: true)
  _$$ThisResponseImplCopyWith<_$ThisResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
