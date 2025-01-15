// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basket_info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BasketInfoResponse _$BasketInfoResponseFromJson(Map<String, dynamic> json) {
  return _BasketInfoResponse.fromJson(json);
}

/// @nodoc
mixin _$BasketInfoResponse {
  String? get r => throw _privateConstructorUsedError;
  String? get e => throw _privateConstructorUsedError;
  List<BasketInfoItemResponse>? get basket =>
      throw _privateConstructorUsedError;

  /// Serializes this BasketInfoResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BasketInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BasketInfoResponseCopyWith<BasketInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasketInfoResponseCopyWith<$Res> {
  factory $BasketInfoResponseCopyWith(
          BasketInfoResponse value, $Res Function(BasketInfoResponse) then) =
      _$BasketInfoResponseCopyWithImpl<$Res, BasketInfoResponse>;
  @useResult
  $Res call({String? r, String? e, List<BasketInfoItemResponse>? basket});
}

/// @nodoc
class _$BasketInfoResponseCopyWithImpl<$Res, $Val extends BasketInfoResponse>
    implements $BasketInfoResponseCopyWith<$Res> {
  _$BasketInfoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BasketInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = freezed,
    Object? e = freezed,
    Object? basket = freezed,
  }) {
    return _then(_value.copyWith(
      r: freezed == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String?,
      e: freezed == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as String?,
      basket: freezed == basket
          ? _value.basket
          : basket // ignore: cast_nullable_to_non_nullable
              as List<BasketInfoItemResponse>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BasketInfoResponseImplCopyWith<$Res>
    implements $BasketInfoResponseCopyWith<$Res> {
  factory _$$BasketInfoResponseImplCopyWith(_$BasketInfoResponseImpl value,
          $Res Function(_$BasketInfoResponseImpl) then) =
      __$$BasketInfoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? r, String? e, List<BasketInfoItemResponse>? basket});
}

/// @nodoc
class __$$BasketInfoResponseImplCopyWithImpl<$Res>
    extends _$BasketInfoResponseCopyWithImpl<$Res, _$BasketInfoResponseImpl>
    implements _$$BasketInfoResponseImplCopyWith<$Res> {
  __$$BasketInfoResponseImplCopyWithImpl(_$BasketInfoResponseImpl _value,
      $Res Function(_$BasketInfoResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of BasketInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = freezed,
    Object? e = freezed,
    Object? basket = freezed,
  }) {
    return _then(_$BasketInfoResponseImpl(
      r: freezed == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String?,
      e: freezed == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as String?,
      basket: freezed == basket
          ? _value._basket
          : basket // ignore: cast_nullable_to_non_nullable
              as List<BasketInfoItemResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BasketInfoResponseImpl extends _BasketInfoResponse {
  _$BasketInfoResponseImpl(
      {this.r, this.e, final List<BasketInfoItemResponse>? basket})
      : _basket = basket,
        super._();

  factory _$BasketInfoResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BasketInfoResponseImplFromJson(json);

  @override
  final String? r;
  @override
  final String? e;
  final List<BasketInfoItemResponse>? _basket;
  @override
  List<BasketInfoItemResponse>? get basket {
    final value = _basket;
    if (value == null) return null;
    if (_basket is EqualUnmodifiableListView) return _basket;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BasketInfoResponse(r: $r, e: $e, basket: $basket)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasketInfoResponseImpl &&
            (identical(other.r, r) || other.r == r) &&
            (identical(other.e, e) || other.e == e) &&
            const DeepCollectionEquality().equals(other._basket, _basket));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, r, e, const DeepCollectionEquality().hash(_basket));

  /// Create a copy of BasketInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BasketInfoResponseImplCopyWith<_$BasketInfoResponseImpl> get copyWith =>
      __$$BasketInfoResponseImplCopyWithImpl<_$BasketInfoResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BasketInfoResponseImplToJson(
      this,
    );
  }
}

abstract class _BasketInfoResponse extends BasketInfoResponse {
  factory _BasketInfoResponse(
      {final String? r,
      final String? e,
      final List<BasketInfoItemResponse>? basket}) = _$BasketInfoResponseImpl;
  _BasketInfoResponse._() : super._();

  factory _BasketInfoResponse.fromJson(Map<String, dynamic> json) =
      _$BasketInfoResponseImpl.fromJson;

  @override
  String? get r;
  @override
  String? get e;
  @override
  List<BasketInfoItemResponse>? get basket;

  /// Create a copy of BasketInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BasketInfoResponseImplCopyWith<_$BasketInfoResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
