// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'char_product_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CharProductResponse _$CharProductResponseFromJson(Map<String, dynamic> json) {
  return _CharProductResponse.fromJson(json);
}

/// @nodoc
mixin _$CharProductResponse {
  String? get name => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharProductResponseCopyWith<CharProductResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharProductResponseCopyWith<$Res> {
  factory $CharProductResponseCopyWith(
          CharProductResponse value, $Res Function(CharProductResponse) then) =
      _$CharProductResponseCopyWithImpl<$Res, CharProductResponse>;
  @useResult
  $Res call({String? name, String? value});
}

/// @nodoc
class _$CharProductResponseCopyWithImpl<$Res, $Val extends CharProductResponse>
    implements $CharProductResponseCopyWith<$Res> {
  _$CharProductResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CharProductResponseImplCopyWith<$Res>
    implements $CharProductResponseCopyWith<$Res> {
  factory _$$CharProductResponseImplCopyWith(_$CharProductResponseImpl value,
          $Res Function(_$CharProductResponseImpl) then) =
      __$$CharProductResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? value});
}

/// @nodoc
class __$$CharProductResponseImplCopyWithImpl<$Res>
    extends _$CharProductResponseCopyWithImpl<$Res, _$CharProductResponseImpl>
    implements _$$CharProductResponseImplCopyWith<$Res> {
  __$$CharProductResponseImplCopyWithImpl(_$CharProductResponseImpl _value,
      $Res Function(_$CharProductResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? value = freezed,
  }) {
    return _then(_$CharProductResponseImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CharProductResponseImpl extends _CharProductResponse {
  _$CharProductResponseImpl({this.name, this.value}) : super._();

  factory _$CharProductResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CharProductResponseImplFromJson(json);

  @override
  final String? name;
  @override
  final String? value;

  @override
  String toString() {
    return 'CharProductResponse(name: $name, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharProductResponseImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharProductResponseImplCopyWith<_$CharProductResponseImpl> get copyWith =>
      __$$CharProductResponseImplCopyWithImpl<_$CharProductResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CharProductResponseImplToJson(
      this,
    );
  }
}

abstract class _CharProductResponse extends CharProductResponse {
  factory _CharProductResponse({final String? name, final String? value}) =
      _$CharProductResponseImpl;
  _CharProductResponse._() : super._();

  factory _CharProductResponse.fromJson(Map<String, dynamic> json) =
      _$CharProductResponseImpl.fromJson;

  @override
  String? get name;
  @override
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$CharProductResponseImplCopyWith<_$CharProductResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
