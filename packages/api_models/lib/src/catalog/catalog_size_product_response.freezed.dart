// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_size_product_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CatalogSizeProductResponse _$CatalogSizeProductResponseFromJson(
    Map<String, dynamic> json) {
  return _CatalogSizeProductResponse.fromJson(json);
}

/// @nodoc
mixin _$CatalogSizeProductResponse {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this CatalogSizeProductResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CatalogSizeProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CatalogSizeProductResponseCopyWith<CatalogSizeProductResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogSizeProductResponseCopyWith<$Res> {
  factory $CatalogSizeProductResponseCopyWith(CatalogSizeProductResponse value,
          $Res Function(CatalogSizeProductResponse) then) =
      _$CatalogSizeProductResponseCopyWithImpl<$Res,
          CatalogSizeProductResponse>;
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class _$CatalogSizeProductResponseCopyWithImpl<$Res,
        $Val extends CatalogSizeProductResponse>
    implements $CatalogSizeProductResponseCopyWith<$Res> {
  _$CatalogSizeProductResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CatalogSizeProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CatalogSizeProductResponseImplCopyWith<$Res>
    implements $CatalogSizeProductResponseCopyWith<$Res> {
  factory _$$CatalogSizeProductResponseImplCopyWith(
          _$CatalogSizeProductResponseImpl value,
          $Res Function(_$CatalogSizeProductResponseImpl) then) =
      __$$CatalogSizeProductResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class __$$CatalogSizeProductResponseImplCopyWithImpl<$Res>
    extends _$CatalogSizeProductResponseCopyWithImpl<$Res,
        _$CatalogSizeProductResponseImpl>
    implements _$$CatalogSizeProductResponseImplCopyWith<$Res> {
  __$$CatalogSizeProductResponseImplCopyWithImpl(
      _$CatalogSizeProductResponseImpl _value,
      $Res Function(_$CatalogSizeProductResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of CatalogSizeProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$CatalogSizeProductResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CatalogSizeProductResponseImpl extends _CatalogSizeProductResponse {
  _$CatalogSizeProductResponseImpl({this.id, this.name}) : super._();

  factory _$CatalogSizeProductResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CatalogSizeProductResponseImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'CatalogSizeProductResponse(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CatalogSizeProductResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of CatalogSizeProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CatalogSizeProductResponseImplCopyWith<_$CatalogSizeProductResponseImpl>
      get copyWith => __$$CatalogSizeProductResponseImplCopyWithImpl<
          _$CatalogSizeProductResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CatalogSizeProductResponseImplToJson(
      this,
    );
  }
}

abstract class _CatalogSizeProductResponse extends CatalogSizeProductResponse {
  factory _CatalogSizeProductResponse({final String? id, final String? name}) =
      _$CatalogSizeProductResponseImpl;
  _CatalogSizeProductResponse._() : super._();

  factory _CatalogSizeProductResponse.fromJson(Map<String, dynamic> json) =
      _$CatalogSizeProductResponseImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;

  /// Create a copy of CatalogSizeProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CatalogSizeProductResponseImplCopyWith<_$CatalogSizeProductResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
