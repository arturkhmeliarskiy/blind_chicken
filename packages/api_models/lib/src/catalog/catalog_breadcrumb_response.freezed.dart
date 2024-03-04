// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_breadcrumb_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CatalogBreadcrumbResponse _$CatalogBreadcrumbResponseFromJson(
    Map<String, dynamic> json) {
  return _CatalogBreadcrumbResponse.fromJson(json);
}

/// @nodoc
mixin _$CatalogBreadcrumbResponse {
  String? get name => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CatalogBreadcrumbResponseCopyWith<CatalogBreadcrumbResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogBreadcrumbResponseCopyWith<$Res> {
  factory $CatalogBreadcrumbResponseCopyWith(CatalogBreadcrumbResponse value,
          $Res Function(CatalogBreadcrumbResponse) then) =
      _$CatalogBreadcrumbResponseCopyWithImpl<$Res, CatalogBreadcrumbResponse>;
  @useResult
  $Res call({String? name, String? value});
}

/// @nodoc
class _$CatalogBreadcrumbResponseCopyWithImpl<$Res,
        $Val extends CatalogBreadcrumbResponse>
    implements $CatalogBreadcrumbResponseCopyWith<$Res> {
  _$CatalogBreadcrumbResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$CatalogBreadcrumbResponseImplCopyWith<$Res>
    implements $CatalogBreadcrumbResponseCopyWith<$Res> {
  factory _$$CatalogBreadcrumbResponseImplCopyWith(
          _$CatalogBreadcrumbResponseImpl value,
          $Res Function(_$CatalogBreadcrumbResponseImpl) then) =
      __$$CatalogBreadcrumbResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? value});
}

/// @nodoc
class __$$CatalogBreadcrumbResponseImplCopyWithImpl<$Res>
    extends _$CatalogBreadcrumbResponseCopyWithImpl<$Res,
        _$CatalogBreadcrumbResponseImpl>
    implements _$$CatalogBreadcrumbResponseImplCopyWith<$Res> {
  __$$CatalogBreadcrumbResponseImplCopyWithImpl(
      _$CatalogBreadcrumbResponseImpl _value,
      $Res Function(_$CatalogBreadcrumbResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? value = freezed,
  }) {
    return _then(_$CatalogBreadcrumbResponseImpl(
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
class _$CatalogBreadcrumbResponseImpl extends _CatalogBreadcrumbResponse {
  _$CatalogBreadcrumbResponseImpl({this.name, this.value}) : super._();

  factory _$CatalogBreadcrumbResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CatalogBreadcrumbResponseImplFromJson(json);

  @override
  final String? name;
  @override
  final String? value;

  @override
  String toString() {
    return 'CatalogBreadcrumbResponse(name: $name, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CatalogBreadcrumbResponseImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CatalogBreadcrumbResponseImplCopyWith<_$CatalogBreadcrumbResponseImpl>
      get copyWith => __$$CatalogBreadcrumbResponseImplCopyWithImpl<
          _$CatalogBreadcrumbResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CatalogBreadcrumbResponseImplToJson(
      this,
    );
  }
}

abstract class _CatalogBreadcrumbResponse extends CatalogBreadcrumbResponse {
  factory _CatalogBreadcrumbResponse(
      {final String? name,
      final String? value}) = _$CatalogBreadcrumbResponseImpl;
  _CatalogBreadcrumbResponse._() : super._();

  factory _CatalogBreadcrumbResponse.fromJson(Map<String, dynamic> json) =
      _$CatalogBreadcrumbResponseImpl.fromJson;

  @override
  String? get name;
  @override
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$CatalogBreadcrumbResponseImplCopyWith<_$CatalogBreadcrumbResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
