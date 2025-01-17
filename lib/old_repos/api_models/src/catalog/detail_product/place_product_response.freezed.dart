// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_product_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlaceProductResponse _$PlaceProductResponseFromJson(Map<String, dynamic> json) {
  return _PlaceProductResponse.fromJson(json);
}

/// @nodoc
mixin _$PlaceProductResponse {
  @JsonKey(name: 'b')
  int? get b => throw _privateConstructorUsedError;
  @JsonKey(name: 's')
  int? get s => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceProductResponseCopyWith<PlaceProductResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceProductResponseCopyWith<$Res> {
  factory $PlaceProductResponseCopyWith(PlaceProductResponse value,
          $Res Function(PlaceProductResponse) then) =
      _$PlaceProductResponseCopyWithImpl<$Res, PlaceProductResponse>;
  @useResult
  $Res call({@JsonKey(name: 'b') int? b, @JsonKey(name: 's') int? s});
}

/// @nodoc
class _$PlaceProductResponseCopyWithImpl<$Res,
        $Val extends PlaceProductResponse>
    implements $PlaceProductResponseCopyWith<$Res> {
  _$PlaceProductResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? b = freezed,
    Object? s = freezed,
  }) {
    return _then(_value.copyWith(
      b: freezed == b
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as int?,
      s: freezed == s
          ? _value.s
          : s // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlaceProductResponseImplCopyWith<$Res>
    implements $PlaceProductResponseCopyWith<$Res> {
  factory _$$PlaceProductResponseImplCopyWith(_$PlaceProductResponseImpl value,
          $Res Function(_$PlaceProductResponseImpl) then) =
      __$$PlaceProductResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'b') int? b, @JsonKey(name: 's') int? s});
}

/// @nodoc
class __$$PlaceProductResponseImplCopyWithImpl<$Res>
    extends _$PlaceProductResponseCopyWithImpl<$Res, _$PlaceProductResponseImpl>
    implements _$$PlaceProductResponseImplCopyWith<$Res> {
  __$$PlaceProductResponseImplCopyWithImpl(_$PlaceProductResponseImpl _value,
      $Res Function(_$PlaceProductResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? b = freezed,
    Object? s = freezed,
  }) {
    return _then(_$PlaceProductResponseImpl(
      b: freezed == b
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as int?,
      s: freezed == s
          ? _value.s
          : s // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaceProductResponseImpl extends _PlaceProductResponse {
  _$PlaceProductResponseImpl(
      {@JsonKey(name: 'b') this.b, @JsonKey(name: 's') this.s})
      : super._();

  factory _$PlaceProductResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaceProductResponseImplFromJson(json);

  @override
  @JsonKey(name: 'b')
  final int? b;
  @override
  @JsonKey(name: 's')
  final int? s;

  @override
  String toString() {
    return 'PlaceProductResponse(b: $b, s: $s)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceProductResponseImpl &&
            (identical(other.b, b) || other.b == b) &&
            (identical(other.s, s) || other.s == s));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, b, s);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceProductResponseImplCopyWith<_$PlaceProductResponseImpl>
      get copyWith =>
          __$$PlaceProductResponseImplCopyWithImpl<_$PlaceProductResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaceProductResponseImplToJson(
      this,
    );
  }
}

abstract class _PlaceProductResponse extends PlaceProductResponse {
  factory _PlaceProductResponse(
      {@JsonKey(name: 'b') final int? b,
      @JsonKey(name: 's') final int? s}) = _$PlaceProductResponseImpl;
  _PlaceProductResponse._() : super._();

  factory _PlaceProductResponse.fromJson(Map<String, dynamic> json) =
      _$PlaceProductResponseImpl.fromJson;

  @override
  @JsonKey(name: 'b')
  int? get b;
  @override
  @JsonKey(name: 's')
  int? get s;
  @override
  @JsonKey(ignore: true)
  _$$PlaceProductResponseImplCopyWith<_$PlaceProductResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
