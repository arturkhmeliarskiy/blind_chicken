// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'captha_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CapthaResponse _$CapthaResponseFromJson(Map<String, dynamic> json) {
  return _CapthaResponse.fromJson(json);
}

/// @nodoc
mixin _$CapthaResponse {
  String? get img => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CapthaResponseCopyWith<CapthaResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CapthaResponseCopyWith<$Res> {
  factory $CapthaResponseCopyWith(
          CapthaResponse value, $Res Function(CapthaResponse) then) =
      _$CapthaResponseCopyWithImpl<$Res, CapthaResponse>;
  @useResult
  $Res call({String? img, String? code});
}

/// @nodoc
class _$CapthaResponseCopyWithImpl<$Res, $Val extends CapthaResponse>
    implements $CapthaResponseCopyWith<$Res> {
  _$CapthaResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? img = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      img: freezed == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CapthaResponseImplCopyWith<$Res>
    implements $CapthaResponseCopyWith<$Res> {
  factory _$$CapthaResponseImplCopyWith(_$CapthaResponseImpl value,
          $Res Function(_$CapthaResponseImpl) then) =
      __$$CapthaResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? img, String? code});
}

/// @nodoc
class __$$CapthaResponseImplCopyWithImpl<$Res>
    extends _$CapthaResponseCopyWithImpl<$Res, _$CapthaResponseImpl>
    implements _$$CapthaResponseImplCopyWith<$Res> {
  __$$CapthaResponseImplCopyWithImpl(
      _$CapthaResponseImpl _value, $Res Function(_$CapthaResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? img = freezed,
    Object? code = freezed,
  }) {
    return _then(_$CapthaResponseImpl(
      img: freezed == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CapthaResponseImpl extends _CapthaResponse {
  _$CapthaResponseImpl({this.img, this.code}) : super._();

  factory _$CapthaResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CapthaResponseImplFromJson(json);

  @override
  final String? img;
  @override
  final String? code;

  @override
  String toString() {
    return 'CapthaResponse(img: $img, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CapthaResponseImpl &&
            (identical(other.img, img) || other.img == img) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, img, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CapthaResponseImplCopyWith<_$CapthaResponseImpl> get copyWith =>
      __$$CapthaResponseImplCopyWithImpl<_$CapthaResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CapthaResponseImplToJson(
      this,
    );
  }
}

abstract class _CapthaResponse extends CapthaResponse {
  factory _CapthaResponse({final String? img, final String? code}) =
      _$CapthaResponseImpl;
  _CapthaResponse._() : super._();

  factory _CapthaResponse.fromJson(Map<String, dynamic> json) =
      _$CapthaResponseImpl.fromJson;

  @override
  String? get img;
  @override
  String? get code;
  @override
  @JsonKey(ignore: true)
  _$$CapthaResponseImplCopyWith<_$CapthaResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
