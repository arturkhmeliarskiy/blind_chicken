// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductResponse _$ProductResponseFromJson(Map<String, dynamic> json) {
  return _ProductResponse.fromJson(json);
}

/// @nodoc
mixin _$ProductResponse {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  List<String>? get size => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  String? get brend => throw _privateConstructorUsedError;
  @JsonKey(name: 'lens_diameter')
  int? get lensDiameter => throw _privateConstructorUsedError;
  @JsonKey(name: 'temple_length')
  int? get templeLength => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  List<String>? get images => throw _privateConstructorUsedError;
  List<String>? get variants => throw _privateConstructorUsedError;

  /// Serializes this ProductResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductResponseCopyWith<ProductResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductResponseCopyWith<$Res> {
  factory $ProductResponseCopyWith(
          ProductResponse value, $Res Function(ProductResponse) then) =
      _$ProductResponseCopyWithImpl<$Res, ProductResponse>;
  @useResult
  $Res call(
      {int? id,
      String? title,
      String? category,
      List<String>? size,
      int? price,
      String? brend,
      @JsonKey(name: 'lens_diameter') int? lensDiameter,
      @JsonKey(name: 'temple_length') int? templeLength,
      String? country,
      List<String>? images,
      List<String>? variants});
}

/// @nodoc
class _$ProductResponseCopyWithImpl<$Res, $Val extends ProductResponse>
    implements $ProductResponseCopyWith<$Res> {
  _$ProductResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? category = freezed,
    Object? size = freezed,
    Object? price = freezed,
    Object? brend = freezed,
    Object? lensDiameter = freezed,
    Object? templeLength = freezed,
    Object? country = freezed,
    Object? images = freezed,
    Object? variants = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      brend: freezed == brend
          ? _value.brend
          : brend // ignore: cast_nullable_to_non_nullable
              as String?,
      lensDiameter: freezed == lensDiameter
          ? _value.lensDiameter
          : lensDiameter // ignore: cast_nullable_to_non_nullable
              as int?,
      templeLength: freezed == templeLength
          ? _value.templeLength
          : templeLength // ignore: cast_nullable_to_non_nullable
              as int?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      variants: freezed == variants
          ? _value.variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductResponseImplCopyWith<$Res>
    implements $ProductResponseCopyWith<$Res> {
  factory _$$ProductResponseImplCopyWith(_$ProductResponseImpl value,
          $Res Function(_$ProductResponseImpl) then) =
      __$$ProductResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? title,
      String? category,
      List<String>? size,
      int? price,
      String? brend,
      @JsonKey(name: 'lens_diameter') int? lensDiameter,
      @JsonKey(name: 'temple_length') int? templeLength,
      String? country,
      List<String>? images,
      List<String>? variants});
}

/// @nodoc
class __$$ProductResponseImplCopyWithImpl<$Res>
    extends _$ProductResponseCopyWithImpl<$Res, _$ProductResponseImpl>
    implements _$$ProductResponseImplCopyWith<$Res> {
  __$$ProductResponseImplCopyWithImpl(
      _$ProductResponseImpl _value, $Res Function(_$ProductResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? category = freezed,
    Object? size = freezed,
    Object? price = freezed,
    Object? brend = freezed,
    Object? lensDiameter = freezed,
    Object? templeLength = freezed,
    Object? country = freezed,
    Object? images = freezed,
    Object? variants = freezed,
  }) {
    return _then(_$ProductResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value._size
          : size // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      brend: freezed == brend
          ? _value.brend
          : brend // ignore: cast_nullable_to_non_nullable
              as String?,
      lensDiameter: freezed == lensDiameter
          ? _value.lensDiameter
          : lensDiameter // ignore: cast_nullable_to_non_nullable
              as int?,
      templeLength: freezed == templeLength
          ? _value.templeLength
          : templeLength // ignore: cast_nullable_to_non_nullable
              as int?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      variants: freezed == variants
          ? _value._variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductResponseImpl extends _ProductResponse {
  _$ProductResponseImpl(
      {this.id,
      this.title,
      this.category,
      final List<String>? size,
      this.price,
      this.brend,
      @JsonKey(name: 'lens_diameter') this.lensDiameter,
      @JsonKey(name: 'temple_length') this.templeLength,
      this.country,
      final List<String>? images,
      final List<String>? variants})
      : _size = size,
        _images = images,
        _variants = variants,
        super._();

  factory _$ProductResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductResponseImplFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? category;
  final List<String>? _size;
  @override
  List<String>? get size {
    final value = _size;
    if (value == null) return null;
    if (_size is EqualUnmodifiableListView) return _size;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? price;
  @override
  final String? brend;
  @override
  @JsonKey(name: 'lens_diameter')
  final int? lensDiameter;
  @override
  @JsonKey(name: 'temple_length')
  final int? templeLength;
  @override
  final String? country;
  final List<String>? _images;
  @override
  List<String>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _variants;
  @override
  List<String>? get variants {
    final value = _variants;
    if (value == null) return null;
    if (_variants is EqualUnmodifiableListView) return _variants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProductResponse(id: $id, title: $title, category: $category, size: $size, price: $price, brend: $brend, lensDiameter: $lensDiameter, templeLength: $templeLength, country: $country, images: $images, variants: $variants)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality().equals(other._size, _size) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.brend, brend) || other.brend == brend) &&
            (identical(other.lensDiameter, lensDiameter) ||
                other.lensDiameter == lensDiameter) &&
            (identical(other.templeLength, templeLength) ||
                other.templeLength == templeLength) &&
            (identical(other.country, country) || other.country == country) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other._variants, _variants));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      category,
      const DeepCollectionEquality().hash(_size),
      price,
      brend,
      lensDiameter,
      templeLength,
      country,
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(_variants));

  /// Create a copy of ProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductResponseImplCopyWith<_$ProductResponseImpl> get copyWith =>
      __$$ProductResponseImplCopyWithImpl<_$ProductResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductResponseImplToJson(
      this,
    );
  }
}

abstract class _ProductResponse extends ProductResponse {
  factory _ProductResponse(
      {final int? id,
      final String? title,
      final String? category,
      final List<String>? size,
      final int? price,
      final String? brend,
      @JsonKey(name: 'lens_diameter') final int? lensDiameter,
      @JsonKey(name: 'temple_length') final int? templeLength,
      final String? country,
      final List<String>? images,
      final List<String>? variants}) = _$ProductResponseImpl;
  _ProductResponse._() : super._();

  factory _ProductResponse.fromJson(Map<String, dynamic> json) =
      _$ProductResponseImpl.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  String? get category;
  @override
  List<String>? get size;
  @override
  int? get price;
  @override
  String? get brend;
  @override
  @JsonKey(name: 'lens_diameter')
  int? get lensDiameter;
  @override
  @JsonKey(name: 'temple_length')
  int? get templeLength;
  @override
  String? get country;
  @override
  List<String>? get images;
  @override
  List<String>? get variants;

  /// Create a copy of ProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductResponseImplCopyWith<_$ProductResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
