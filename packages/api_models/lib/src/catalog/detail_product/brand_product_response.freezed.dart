// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brand_product_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BrandProductResponse _$BrandProductResponseFromJson(Map<String, dynamic> json) {
  return _BrandProductResponse.fromJson(json);
}

/// @nodoc
mixin _$BrandProductResponse {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'n')
  String? get n => throw _privateConstructorUsedError;
  @JsonKey(name: 'u')
  String? get u => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandProductResponseCopyWith<BrandProductResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandProductResponseCopyWith<$Res> {
  factory $BrandProductResponseCopyWith(BrandProductResponse value,
          $Res Function(BrandProductResponse) then) =
      _$BrandProductResponseCopyWithImpl<$Res, BrandProductResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'n') String? n,
      @JsonKey(name: 'u') String? u});
}

/// @nodoc
class _$BrandProductResponseCopyWithImpl<$Res,
        $Val extends BrandProductResponse>
    implements $BrandProductResponseCopyWith<$Res> {
  _$BrandProductResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? n = freezed,
    Object? u = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      n: freezed == n
          ? _value.n
          : n // ignore: cast_nullable_to_non_nullable
              as String?,
      u: freezed == u
          ? _value.u
          : u // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BrandProductResponseImplCopyWith<$Res>
    implements $BrandProductResponseCopyWith<$Res> {
  factory _$$BrandProductResponseImplCopyWith(_$BrandProductResponseImpl value,
          $Res Function(_$BrandProductResponseImpl) then) =
      __$$BrandProductResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'n') String? n,
      @JsonKey(name: 'u') String? u});
}

/// @nodoc
class __$$BrandProductResponseImplCopyWithImpl<$Res>
    extends _$BrandProductResponseCopyWithImpl<$Res, _$BrandProductResponseImpl>
    implements _$$BrandProductResponseImplCopyWith<$Res> {
  __$$BrandProductResponseImplCopyWithImpl(_$BrandProductResponseImpl _value,
      $Res Function(_$BrandProductResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? n = freezed,
    Object? u = freezed,
  }) {
    return _then(_$BrandProductResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      n: freezed == n
          ? _value.n
          : n // ignore: cast_nullable_to_non_nullable
              as String?,
      u: freezed == u
          ? _value.u
          : u // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BrandProductResponseImpl extends _BrandProductResponse {
  _$BrandProductResponseImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'n') this.n,
      @JsonKey(name: 'u') this.u})
      : super._();

  factory _$BrandProductResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BrandProductResponseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'n')
  final String? n;
  @override
  @JsonKey(name: 'u')
  final String? u;

  @override
  String toString() {
    return 'BrandProductResponse(id: $id, n: $n, u: $u)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandProductResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.n, n) || other.n == n) &&
            (identical(other.u, u) || other.u == u));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, n, u);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandProductResponseImplCopyWith<_$BrandProductResponseImpl>
      get copyWith =>
          __$$BrandProductResponseImplCopyWithImpl<_$BrandProductResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BrandProductResponseImplToJson(
      this,
    );
  }
}

abstract class _BrandProductResponse extends BrandProductResponse {
  factory _BrandProductResponse(
      {@JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'n') final String? n,
      @JsonKey(name: 'u') final String? u}) = _$BrandProductResponseImpl;
  _BrandProductResponse._() : super._();

  factory _BrandProductResponse.fromJson(Map<String, dynamic> json) =
      _$BrandProductResponseImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'n')
  String? get n;
  @override
  @JsonKey(name: 'u')
  String? get u;
  @override
  @JsonKey(ignore: true)
  _$$BrandProductResponseImplCopyWith<_$BrandProductResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
