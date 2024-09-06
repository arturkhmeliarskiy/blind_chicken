// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error_analyzer_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ErrorAnalyzerResponse _$ErrorAnalyzerResponseFromJson(
    Map<String, dynamic> json) {
  return _ErrorAnalyzerResponse.fromJson(json);
}

/// @nodoc
mixin _$ErrorAnalyzerResponse {
  String? get r => throw _privateConstructorUsedError;
  @JsonKey(name: 'e')
  String? get errorMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorAnalyzerResponseCopyWith<ErrorAnalyzerResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorAnalyzerResponseCopyWith<$Res> {
  factory $ErrorAnalyzerResponseCopyWith(ErrorAnalyzerResponse value,
          $Res Function(ErrorAnalyzerResponse) then) =
      _$ErrorAnalyzerResponseCopyWithImpl<$Res, ErrorAnalyzerResponse>;
  @useResult
  $Res call({String? r, @JsonKey(name: 'e') String? errorMessage});
}

/// @nodoc
class _$ErrorAnalyzerResponseCopyWithImpl<$Res,
        $Val extends ErrorAnalyzerResponse>
    implements $ErrorAnalyzerResponseCopyWith<$Res> {
  _$ErrorAnalyzerResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      r: freezed == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ErrorAnalyzerResponseImplCopyWith<$Res>
    implements $ErrorAnalyzerResponseCopyWith<$Res> {
  factory _$$ErrorAnalyzerResponseImplCopyWith(
          _$ErrorAnalyzerResponseImpl value,
          $Res Function(_$ErrorAnalyzerResponseImpl) then) =
      __$$ErrorAnalyzerResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? r, @JsonKey(name: 'e') String? errorMessage});
}

/// @nodoc
class __$$ErrorAnalyzerResponseImplCopyWithImpl<$Res>
    extends _$ErrorAnalyzerResponseCopyWithImpl<$Res,
        _$ErrorAnalyzerResponseImpl>
    implements _$$ErrorAnalyzerResponseImplCopyWith<$Res> {
  __$$ErrorAnalyzerResponseImplCopyWithImpl(_$ErrorAnalyzerResponseImpl _value,
      $Res Function(_$ErrorAnalyzerResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$ErrorAnalyzerResponseImpl(
      r: freezed == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
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
class _$ErrorAnalyzerResponseImpl extends _ErrorAnalyzerResponse {
  _$ErrorAnalyzerResponseImpl({this.r, @JsonKey(name: 'e') this.errorMessage})
      : super._();

  factory _$ErrorAnalyzerResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ErrorAnalyzerResponseImplFromJson(json);

  @override
  final String? r;
  @override
  @JsonKey(name: 'e')
  final String? errorMessage;

  @override
  String toString() {
    return 'ErrorAnalyzerResponse(r: $r, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorAnalyzerResponseImpl &&
            (identical(other.r, r) || other.r == r) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, r, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorAnalyzerResponseImplCopyWith<_$ErrorAnalyzerResponseImpl>
      get copyWith => __$$ErrorAnalyzerResponseImplCopyWithImpl<
          _$ErrorAnalyzerResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorAnalyzerResponseImplToJson(
      this,
    );
  }
}

abstract class _ErrorAnalyzerResponse extends ErrorAnalyzerResponse {
  factory _ErrorAnalyzerResponse(
          {final String? r, @JsonKey(name: 'e') final String? errorMessage}) =
      _$ErrorAnalyzerResponseImpl;
  _ErrorAnalyzerResponse._() : super._();

  factory _ErrorAnalyzerResponse.fromJson(Map<String, dynamic> json) =
      _$ErrorAnalyzerResponseImpl.fromJson;

  @override
  String? get r;
  @override
  @JsonKey(name: 'e')
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$ErrorAnalyzerResponseImplCopyWith<_$ErrorAnalyzerResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
