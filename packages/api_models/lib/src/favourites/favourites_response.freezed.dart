// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favourites_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FavouritesResponse _$FavouritesResponseFromJson(Map<String, dynamic> json) {
  return _FavouritesResponse.fromJson(json);
}

/// @nodoc
mixin _$FavouritesResponse {
  String? get code => throw _privateConstructorUsedError;
  String? get sku => throw _privateConstructorUsedError;
  List<String>? get favorites => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavouritesResponseCopyWith<FavouritesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouritesResponseCopyWith<$Res> {
  factory $FavouritesResponseCopyWith(
          FavouritesResponse value, $Res Function(FavouritesResponse) then) =
      _$FavouritesResponseCopyWithImpl<$Res, FavouritesResponse>;
  @useResult
  $Res call({String? code, String? sku, List<String>? favorites});
}

/// @nodoc
class _$FavouritesResponseCopyWithImpl<$Res, $Val extends FavouritesResponse>
    implements $FavouritesResponseCopyWith<$Res> {
  _$FavouritesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? sku = freezed,
    Object? favorites = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      sku: freezed == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      favorites: freezed == favorites
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavouritesResponseImplCopyWith<$Res>
    implements $FavouritesResponseCopyWith<$Res> {
  factory _$$FavouritesResponseImplCopyWith(_$FavouritesResponseImpl value,
          $Res Function(_$FavouritesResponseImpl) then) =
      __$$FavouritesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? code, String? sku, List<String>? favorites});
}

/// @nodoc
class __$$FavouritesResponseImplCopyWithImpl<$Res>
    extends _$FavouritesResponseCopyWithImpl<$Res, _$FavouritesResponseImpl>
    implements _$$FavouritesResponseImplCopyWith<$Res> {
  __$$FavouritesResponseImplCopyWithImpl(_$FavouritesResponseImpl _value,
      $Res Function(_$FavouritesResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? sku = freezed,
    Object? favorites = freezed,
  }) {
    return _then(_$FavouritesResponseImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      sku: freezed == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      favorites: freezed == favorites
          ? _value._favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FavouritesResponseImpl extends _FavouritesResponse {
  _$FavouritesResponseImpl({this.code, this.sku, final List<String>? favorites})
      : _favorites = favorites,
        super._();

  factory _$FavouritesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FavouritesResponseImplFromJson(json);

  @override
  final String? code;
  @override
  final String? sku;
  final List<String>? _favorites;
  @override
  List<String>? get favorites {
    final value = _favorites;
    if (value == null) return null;
    if (_favorites is EqualUnmodifiableListView) return _favorites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FavouritesResponse(code: $code, sku: $sku, favorites: $favorites)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavouritesResponseImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            const DeepCollectionEquality()
                .equals(other._favorites, _favorites));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, code, sku, const DeepCollectionEquality().hash(_favorites));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavouritesResponseImplCopyWith<_$FavouritesResponseImpl> get copyWith =>
      __$$FavouritesResponseImplCopyWithImpl<_$FavouritesResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FavouritesResponseImplToJson(
      this,
    );
  }
}

abstract class _FavouritesResponse extends FavouritesResponse {
  factory _FavouritesResponse(
      {final String? code,
      final String? sku,
      final List<String>? favorites}) = _$FavouritesResponseImpl;
  _FavouritesResponse._() : super._();

  factory _FavouritesResponse.fromJson(Map<String, dynamic> json) =
      _$FavouritesResponseImpl.fromJson;

  @override
  String? get code;
  @override
  String? get sku;
  @override
  List<String>? get favorites;
  @override
  @JsonKey(ignore: true)
  _$$FavouritesResponseImplCopyWith<_$FavouritesResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
