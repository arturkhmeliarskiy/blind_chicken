// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brand_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BrandItemResponse _$BrandItemResponseFromJson(Map<String, dynamic> json) {
  return _BrandItemResponse.fromJson(json);
}

/// @nodoc
mixin _$BrandItemResponse {
  @JsonKey(name: 'u')
  String? get u => throw _privateConstructorUsedError;
  @JsonKey(name: 'n')
  String? get n => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandItemResponseCopyWith<BrandItemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandItemResponseCopyWith<$Res> {
  factory $BrandItemResponseCopyWith(
          BrandItemResponse value, $Res Function(BrandItemResponse) then) =
      _$BrandItemResponseCopyWithImpl<$Res, BrandItemResponse>;
  @useResult
  $Res call({@JsonKey(name: 'u') String? u, @JsonKey(name: 'n') String? n});
}

/// @nodoc
class _$BrandItemResponseCopyWithImpl<$Res, $Val extends BrandItemResponse>
    implements $BrandItemResponseCopyWith<$Res> {
  _$BrandItemResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? u = freezed,
    Object? n = freezed,
  }) {
    return _then(_value.copyWith(
      u: freezed == u
          ? _value.u
          : u // ignore: cast_nullable_to_non_nullable
              as String?,
      n: freezed == n
          ? _value.n
          : n // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BrandItemResponseImplCopyWith<$Res>
    implements $BrandItemResponseCopyWith<$Res> {
  factory _$$BrandItemResponseImplCopyWith(_$BrandItemResponseImpl value,
          $Res Function(_$BrandItemResponseImpl) then) =
      __$$BrandItemResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'u') String? u, @JsonKey(name: 'n') String? n});
}

/// @nodoc
class __$$BrandItemResponseImplCopyWithImpl<$Res>
    extends _$BrandItemResponseCopyWithImpl<$Res, _$BrandItemResponseImpl>
    implements _$$BrandItemResponseImplCopyWith<$Res> {
  __$$BrandItemResponseImplCopyWithImpl(_$BrandItemResponseImpl _value,
      $Res Function(_$BrandItemResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? u = freezed,
    Object? n = freezed,
  }) {
    return _then(_$BrandItemResponseImpl(
      u: freezed == u
          ? _value.u
          : u // ignore: cast_nullable_to_non_nullable
              as String?,
      n: freezed == n
          ? _value.n
          : n // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BrandItemResponseImpl extends _BrandItemResponse {
  _$BrandItemResponseImpl(
      {@JsonKey(name: 'u') this.u, @JsonKey(name: 'n') this.n})
      : super._();

  factory _$BrandItemResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BrandItemResponseImplFromJson(json);

  @override
  @JsonKey(name: 'u')
  final String? u;
  @override
  @JsonKey(name: 'n')
  final String? n;

  @override
  String toString() {
    return 'BrandItemResponse(u: $u, n: $n)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandItemResponseImpl &&
            (identical(other.u, u) || other.u == u) &&
            (identical(other.n, n) || other.n == n));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, u, n);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandItemResponseImplCopyWith<_$BrandItemResponseImpl> get copyWith =>
      __$$BrandItemResponseImplCopyWithImpl<_$BrandItemResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BrandItemResponseImplToJson(
      this,
    );
  }
}

abstract class _BrandItemResponse extends BrandItemResponse {
  factory _BrandItemResponse(
      {@JsonKey(name: 'u') final String? u,
      @JsonKey(name: 'n') final String? n}) = _$BrandItemResponseImpl;
  _BrandItemResponse._() : super._();

  factory _BrandItemResponse.fromJson(Map<String, dynamic> json) =
      _$BrandItemResponseImpl.fromJson;

  @override
  @JsonKey(name: 'u')
  String? get u;
  @override
  @JsonKey(name: 'n')
  String? get n;
  @override
  @JsonKey(ignore: true)
  _$$BrandItemResponseImplCopyWith<_$BrandItemResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
