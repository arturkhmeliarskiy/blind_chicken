// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brand_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BrandResponse _$BrandResponseFromJson(Map<String, dynamic> json) {
  return _BrandResponse.fromJson(json);
}

/// @nodoc
mixin _$BrandResponse {
  String? get title => throw _privateConstructorUsedError;
  List<BrandItemResponse>? get value => throw _privateConstructorUsedError;

  /// Serializes this BrandResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BrandResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BrandResponseCopyWith<BrandResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandResponseCopyWith<$Res> {
  factory $BrandResponseCopyWith(
          BrandResponse value, $Res Function(BrandResponse) then) =
      _$BrandResponseCopyWithImpl<$Res, BrandResponse>;
  @useResult
  $Res call({String? title, List<BrandItemResponse>? value});
}

/// @nodoc
class _$BrandResponseCopyWithImpl<$Res, $Val extends BrandResponse>
    implements $BrandResponseCopyWith<$Res> {
  _$BrandResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BrandResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as List<BrandItemResponse>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BrandResponseImplCopyWith<$Res>
    implements $BrandResponseCopyWith<$Res> {
  factory _$$BrandResponseImplCopyWith(
          _$BrandResponseImpl value, $Res Function(_$BrandResponseImpl) then) =
      __$$BrandResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, List<BrandItemResponse>? value});
}

/// @nodoc
class __$$BrandResponseImplCopyWithImpl<$Res>
    extends _$BrandResponseCopyWithImpl<$Res, _$BrandResponseImpl>
    implements _$$BrandResponseImplCopyWith<$Res> {
  __$$BrandResponseImplCopyWithImpl(
      _$BrandResponseImpl _value, $Res Function(_$BrandResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of BrandResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? value = freezed,
  }) {
    return _then(_$BrandResponseImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value._value
          : value // ignore: cast_nullable_to_non_nullable
              as List<BrandItemResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BrandResponseImpl extends _BrandResponse {
  _$BrandResponseImpl({this.title, final List<BrandItemResponse>? value})
      : _value = value,
        super._();

  factory _$BrandResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BrandResponseImplFromJson(json);

  @override
  final String? title;
  final List<BrandItemResponse>? _value;
  @override
  List<BrandItemResponse>? get value {
    final value = _value;
    if (value == null) return null;
    if (_value is EqualUnmodifiableListView) return _value;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BrandResponse(title: $title, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandResponseImpl &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._value, _value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, const DeepCollectionEquality().hash(_value));

  /// Create a copy of BrandResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandResponseImplCopyWith<_$BrandResponseImpl> get copyWith =>
      __$$BrandResponseImplCopyWithImpl<_$BrandResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BrandResponseImplToJson(
      this,
    );
  }
}

abstract class _BrandResponse extends BrandResponse {
  factory _BrandResponse(
      {final String? title,
      final List<BrandItemResponse>? value}) = _$BrandResponseImpl;
  _BrandResponse._() : super._();

  factory _BrandResponse.fromJson(Map<String, dynamic> json) =
      _$BrandResponseImpl.fromJson;

  @override
  String? get title;
  @override
  List<BrandItemResponse>? get value;

  /// Create a copy of BrandResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BrandResponseImplCopyWith<_$BrandResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
