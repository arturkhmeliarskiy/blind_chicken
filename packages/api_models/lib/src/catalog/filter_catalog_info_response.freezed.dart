// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_catalog_info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FilterCatalogInfoResponse _$FilterCatalogInfoResponseFromJson(
    Map<String, dynamic> json) {
  return _FilterCatalogInfoResponse.fromJson(json);
}

/// @nodoc
mixin _$FilterCatalogInfoResponse {
  List<VResponse>? get v => throw _privateConstructorUsedError;
  String? get n => throw _privateConstructorUsedError;
  String? get typeFilter => throw _privateConstructorUsedError;

  /// Serializes this FilterCatalogInfoResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FilterCatalogInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FilterCatalogInfoResponseCopyWith<FilterCatalogInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterCatalogInfoResponseCopyWith<$Res> {
  factory $FilterCatalogInfoResponseCopyWith(FilterCatalogInfoResponse value,
          $Res Function(FilterCatalogInfoResponse) then) =
      _$FilterCatalogInfoResponseCopyWithImpl<$Res, FilterCatalogInfoResponse>;
  @useResult
  $Res call({List<VResponse>? v, String? n, String? typeFilter});
}

/// @nodoc
class _$FilterCatalogInfoResponseCopyWithImpl<$Res,
        $Val extends FilterCatalogInfoResponse>
    implements $FilterCatalogInfoResponseCopyWith<$Res> {
  _$FilterCatalogInfoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FilterCatalogInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? v = freezed,
    Object? n = freezed,
    Object? typeFilter = freezed,
  }) {
    return _then(_value.copyWith(
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as List<VResponse>?,
      n: freezed == n
          ? _value.n
          : n // ignore: cast_nullable_to_non_nullable
              as String?,
      typeFilter: freezed == typeFilter
          ? _value.typeFilter
          : typeFilter // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilterCatalogInfoResponseImplCopyWith<$Res>
    implements $FilterCatalogInfoResponseCopyWith<$Res> {
  factory _$$FilterCatalogInfoResponseImplCopyWith(
          _$FilterCatalogInfoResponseImpl value,
          $Res Function(_$FilterCatalogInfoResponseImpl) then) =
      __$$FilterCatalogInfoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<VResponse>? v, String? n, String? typeFilter});
}

/// @nodoc
class __$$FilterCatalogInfoResponseImplCopyWithImpl<$Res>
    extends _$FilterCatalogInfoResponseCopyWithImpl<$Res,
        _$FilterCatalogInfoResponseImpl>
    implements _$$FilterCatalogInfoResponseImplCopyWith<$Res> {
  __$$FilterCatalogInfoResponseImplCopyWithImpl(
      _$FilterCatalogInfoResponseImpl _value,
      $Res Function(_$FilterCatalogInfoResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of FilterCatalogInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? v = freezed,
    Object? n = freezed,
    Object? typeFilter = freezed,
  }) {
    return _then(_$FilterCatalogInfoResponseImpl(
      v: freezed == v
          ? _value._v
          : v // ignore: cast_nullable_to_non_nullable
              as List<VResponse>?,
      n: freezed == n
          ? _value.n
          : n // ignore: cast_nullable_to_non_nullable
              as String?,
      typeFilter: freezed == typeFilter
          ? _value.typeFilter
          : typeFilter // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FilterCatalogInfoResponseImpl extends _FilterCatalogInfoResponse {
  _$FilterCatalogInfoResponseImpl(
      {final List<VResponse>? v, this.n, this.typeFilter})
      : _v = v,
        super._();

  factory _$FilterCatalogInfoResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FilterCatalogInfoResponseImplFromJson(json);

  final List<VResponse>? _v;
  @override
  List<VResponse>? get v {
    final value = _v;
    if (value == null) return null;
    if (_v is EqualUnmodifiableListView) return _v;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? n;
  @override
  final String? typeFilter;

  @override
  String toString() {
    return 'FilterCatalogInfoResponse(v: $v, n: $n, typeFilter: $typeFilter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterCatalogInfoResponseImpl &&
            const DeepCollectionEquality().equals(other._v, _v) &&
            (identical(other.n, n) || other.n == n) &&
            (identical(other.typeFilter, typeFilter) ||
                other.typeFilter == typeFilter));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_v), n, typeFilter);

  /// Create a copy of FilterCatalogInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterCatalogInfoResponseImplCopyWith<_$FilterCatalogInfoResponseImpl>
      get copyWith => __$$FilterCatalogInfoResponseImplCopyWithImpl<
          _$FilterCatalogInfoResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FilterCatalogInfoResponseImplToJson(
      this,
    );
  }
}

abstract class _FilterCatalogInfoResponse extends FilterCatalogInfoResponse {
  factory _FilterCatalogInfoResponse(
      {final List<VResponse>? v,
      final String? n,
      final String? typeFilter}) = _$FilterCatalogInfoResponseImpl;
  _FilterCatalogInfoResponse._() : super._();

  factory _FilterCatalogInfoResponse.fromJson(Map<String, dynamic> json) =
      _$FilterCatalogInfoResponseImpl.fromJson;

  @override
  List<VResponse>? get v;
  @override
  String? get n;
  @override
  String? get typeFilter;

  /// Create a copy of FilterCatalogInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilterCatalogInfoResponseImplCopyWith<_$FilterCatalogInfoResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
