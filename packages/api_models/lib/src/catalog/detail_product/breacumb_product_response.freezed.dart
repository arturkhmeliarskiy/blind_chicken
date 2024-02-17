// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'breacumb_product_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BreacumbProductResponse _$BreacumbProductResponseFromJson(
    Map<String, dynamic> json) {
  return _BreacumbProductResponse.fromJson(json);
}

/// @nodoc
mixin _$BreacumbProductResponse {
  String? get name => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BreacumbProductResponseCopyWith<BreacumbProductResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BreacumbProductResponseCopyWith<$Res> {
  factory $BreacumbProductResponseCopyWith(BreacumbProductResponse value,
          $Res Function(BreacumbProductResponse) then) =
      _$BreacumbProductResponseCopyWithImpl<$Res, BreacumbProductResponse>;
  @useResult
  $Res call({String? name, String? value});
}

/// @nodoc
class _$BreacumbProductResponseCopyWithImpl<$Res,
        $Val extends BreacumbProductResponse>
    implements $BreacumbProductResponseCopyWith<$Res> {
  _$BreacumbProductResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$BreacumbProductResponseImplCopyWith<$Res>
    implements $BreacumbProductResponseCopyWith<$Res> {
  factory _$$BreacumbProductResponseImplCopyWith(
          _$BreacumbProductResponseImpl value,
          $Res Function(_$BreacumbProductResponseImpl) then) =
      __$$BreacumbProductResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? value});
}

/// @nodoc
class __$$BreacumbProductResponseImplCopyWithImpl<$Res>
    extends _$BreacumbProductResponseCopyWithImpl<$Res,
        _$BreacumbProductResponseImpl>
    implements _$$BreacumbProductResponseImplCopyWith<$Res> {
  __$$BreacumbProductResponseImplCopyWithImpl(
      _$BreacumbProductResponseImpl _value,
      $Res Function(_$BreacumbProductResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? value = freezed,
  }) {
    return _then(_$BreacumbProductResponseImpl(
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
class _$BreacumbProductResponseImpl extends _BreacumbProductResponse {
  _$BreacumbProductResponseImpl({this.name, this.value}) : super._();

  factory _$BreacumbProductResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BreacumbProductResponseImplFromJson(json);

  @override
  final String? name;
  @override
  final String? value;

  @override
  String toString() {
    return 'BreacumbProductResponse(name: $name, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BreacumbProductResponseImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BreacumbProductResponseImplCopyWith<_$BreacumbProductResponseImpl>
      get copyWith => __$$BreacumbProductResponseImplCopyWithImpl<
          _$BreacumbProductResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BreacumbProductResponseImplToJson(
      this,
    );
  }
}

abstract class _BreacumbProductResponse extends BreacumbProductResponse {
  factory _BreacumbProductResponse({final String? name, final String? value}) =
      _$BreacumbProductResponseImpl;
  _BreacumbProductResponse._() : super._();

  factory _BreacumbProductResponse.fromJson(Map<String, dynamic> json) =
      _$BreacumbProductResponseImpl.fromJson;

  @override
  String? get name;
  @override
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$BreacumbProductResponseImplCopyWith<_$BreacumbProductResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
