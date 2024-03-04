// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_section_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CatalogSectionResponse _$CatalogSectionResponseFromJson(
    Map<String, dynamic> json) {
  return _CatalogSectionResponse.fromJson(json);
}

/// @nodoc
mixin _$CatalogSectionResponse {
  String? get n => throw _privateConstructorUsedError;
  String? get u => throw _privateConstructorUsedError;
  String? get g => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CatalogSectionResponseCopyWith<CatalogSectionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogSectionResponseCopyWith<$Res> {
  factory $CatalogSectionResponseCopyWith(CatalogSectionResponse value,
          $Res Function(CatalogSectionResponse) then) =
      _$CatalogSectionResponseCopyWithImpl<$Res, CatalogSectionResponse>;
  @useResult
  $Res call({String? n, String? u, String? g});
}

/// @nodoc
class _$CatalogSectionResponseCopyWithImpl<$Res,
        $Val extends CatalogSectionResponse>
    implements $CatalogSectionResponseCopyWith<$Res> {
  _$CatalogSectionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? n = freezed,
    Object? u = freezed,
    Object? g = freezed,
  }) {
    return _then(_value.copyWith(
      n: freezed == n
          ? _value.n
          : n // ignore: cast_nullable_to_non_nullable
              as String?,
      u: freezed == u
          ? _value.u
          : u // ignore: cast_nullable_to_non_nullable
              as String?,
      g: freezed == g
          ? _value.g
          : g // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CatalogSectionResponseImplCopyWith<$Res>
    implements $CatalogSectionResponseCopyWith<$Res> {
  factory _$$CatalogSectionResponseImplCopyWith(
          _$CatalogSectionResponseImpl value,
          $Res Function(_$CatalogSectionResponseImpl) then) =
      __$$CatalogSectionResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? n, String? u, String? g});
}

/// @nodoc
class __$$CatalogSectionResponseImplCopyWithImpl<$Res>
    extends _$CatalogSectionResponseCopyWithImpl<$Res,
        _$CatalogSectionResponseImpl>
    implements _$$CatalogSectionResponseImplCopyWith<$Res> {
  __$$CatalogSectionResponseImplCopyWithImpl(
      _$CatalogSectionResponseImpl _value,
      $Res Function(_$CatalogSectionResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? n = freezed,
    Object? u = freezed,
    Object? g = freezed,
  }) {
    return _then(_$CatalogSectionResponseImpl(
      n: freezed == n
          ? _value.n
          : n // ignore: cast_nullable_to_non_nullable
              as String?,
      u: freezed == u
          ? _value.u
          : u // ignore: cast_nullable_to_non_nullable
              as String?,
      g: freezed == g
          ? _value.g
          : g // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CatalogSectionResponseImpl extends _CatalogSectionResponse {
  _$CatalogSectionResponseImpl({this.n, this.u, this.g}) : super._();

  factory _$CatalogSectionResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CatalogSectionResponseImplFromJson(json);

  @override
  final String? n;
  @override
  final String? u;
  @override
  final String? g;

  @override
  String toString() {
    return 'CatalogSectionResponse(n: $n, u: $u, g: $g)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CatalogSectionResponseImpl &&
            (identical(other.n, n) || other.n == n) &&
            (identical(other.u, u) || other.u == u) &&
            (identical(other.g, g) || other.g == g));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, n, u, g);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CatalogSectionResponseImplCopyWith<_$CatalogSectionResponseImpl>
      get copyWith => __$$CatalogSectionResponseImplCopyWithImpl<
          _$CatalogSectionResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CatalogSectionResponseImplToJson(
      this,
    );
  }
}

abstract class _CatalogSectionResponse extends CatalogSectionResponse {
  factory _CatalogSectionResponse(
      {final String? n,
      final String? u,
      final String? g}) = _$CatalogSectionResponseImpl;
  _CatalogSectionResponse._() : super._();

  factory _CatalogSectionResponse.fromJson(Map<String, dynamic> json) =
      _$CatalogSectionResponseImpl.fromJson;

  @override
  String? get n;
  @override
  String? get u;
  @override
  String? get g;
  @override
  @JsonKey(ignore: true)
  _$$CatalogSectionResponseImplCopyWith<_$CatalogSectionResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
