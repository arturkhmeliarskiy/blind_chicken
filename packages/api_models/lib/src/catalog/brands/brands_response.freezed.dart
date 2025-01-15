// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brands_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BrandsResponse _$BrandsResponseFromJson(Map<String, dynamic> json) {
  return _BrandsResponse.fromJson(json);
}

/// @nodoc
mixin _$BrandsResponse {
  @JsonKey(name: 'brands', fromJson: _convertBrands)
  List<BrandResponse>? get brands => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Serializes this BrandsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BrandsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BrandsResponseCopyWith<BrandsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandsResponseCopyWith<$Res> {
  factory $BrandsResponseCopyWith(
          BrandsResponse value, $Res Function(BrandsResponse) then) =
      _$BrandsResponseCopyWithImpl<$Res, BrandsResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'brands', fromJson: _convertBrands)
      List<BrandResponse>? brands,
      String? errorMessage});
}

/// @nodoc
class _$BrandsResponseCopyWithImpl<$Res, $Val extends BrandsResponse>
    implements $BrandsResponseCopyWith<$Res> {
  _$BrandsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BrandsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brands = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      brands: freezed == brands
          ? _value.brands
          : brands // ignore: cast_nullable_to_non_nullable
              as List<BrandResponse>?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BrandsResponseImplCopyWith<$Res>
    implements $BrandsResponseCopyWith<$Res> {
  factory _$$BrandsResponseImplCopyWith(_$BrandsResponseImpl value,
          $Res Function(_$BrandsResponseImpl) then) =
      __$$BrandsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'brands', fromJson: _convertBrands)
      List<BrandResponse>? brands,
      String? errorMessage});
}

/// @nodoc
class __$$BrandsResponseImplCopyWithImpl<$Res>
    extends _$BrandsResponseCopyWithImpl<$Res, _$BrandsResponseImpl>
    implements _$$BrandsResponseImplCopyWith<$Res> {
  __$$BrandsResponseImplCopyWithImpl(
      _$BrandsResponseImpl _value, $Res Function(_$BrandsResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of BrandsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brands = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$BrandsResponseImpl(
      brands: freezed == brands
          ? _value._brands
          : brands // ignore: cast_nullable_to_non_nullable
              as List<BrandResponse>?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BrandsResponseImpl extends _BrandsResponse {
  _$BrandsResponseImpl(
      {@JsonKey(name: 'brands', fromJson: _convertBrands)
      final List<BrandResponse>? brands,
      this.errorMessage})
      : _brands = brands,
        super._();

  factory _$BrandsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BrandsResponseImplFromJson(json);

  final List<BrandResponse>? _brands;
  @override
  @JsonKey(name: 'brands', fromJson: _convertBrands)
  List<BrandResponse>? get brands {
    final value = _brands;
    if (value == null) return null;
    if (_brands is EqualUnmodifiableListView) return _brands;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'BrandsResponse(brands: $brands, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandsResponseImpl &&
            const DeepCollectionEquality().equals(other._brands, _brands) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_brands), errorMessage);

  /// Create a copy of BrandsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandsResponseImplCopyWith<_$BrandsResponseImpl> get copyWith =>
      __$$BrandsResponseImplCopyWithImpl<_$BrandsResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BrandsResponseImplToJson(
      this,
    );
  }
}

abstract class _BrandsResponse extends BrandsResponse {
  factory _BrandsResponse(
      {@JsonKey(name: 'brands', fromJson: _convertBrands)
      final List<BrandResponse>? brands,
      final String? errorMessage}) = _$BrandsResponseImpl;
  _BrandsResponse._() : super._();

  factory _BrandsResponse.fromJson(Map<String, dynamic> json) =
      _$BrandsResponseImpl.fromJson;

  @override
  @JsonKey(name: 'brands', fromJson: _convertBrands)
  List<BrandResponse>? get brands;
  @override
  String? get errorMessage;

  /// Create a copy of BrandsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BrandsResponseImplCopyWith<_$BrandsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
