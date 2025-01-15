// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basket_full_info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BasketFullInfoResponse _$BasketFullInfoResponseFromJson(
    Map<String, dynamic> json) {
  return _BasketFullInfoResponse.fromJson(json);
}

/// @nodoc
mixin _$BasketFullInfoResponse {
  String? get r => throw _privateConstructorUsedError;
  String? get e => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  String? get info => throw _privateConstructorUsedError;
  @JsonKey(name: 'promo_description')
  String? get promoDescription => throw _privateConstructorUsedError;
  List<BasketFullInfoItemResponse>? get basket =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BasketFullInfoResponseCopyWith<BasketFullInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasketFullInfoResponseCopyWith<$Res> {
  factory $BasketFullInfoResponseCopyWith(BasketFullInfoResponse value,
          $Res Function(BasketFullInfoResponse) then) =
      _$BasketFullInfoResponseCopyWithImpl<$Res, BasketFullInfoResponse>;
  @useResult
  $Res call(
      {String? r,
      String? e,
      String? errorMessage,
      String? info,
      @JsonKey(name: 'promo_description') String? promoDescription,
      List<BasketFullInfoItemResponse>? basket});
}

/// @nodoc
class _$BasketFullInfoResponseCopyWithImpl<$Res,
        $Val extends BasketFullInfoResponse>
    implements $BasketFullInfoResponseCopyWith<$Res> {
  _$BasketFullInfoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = freezed,
    Object? e = freezed,
    Object? errorMessage = freezed,
    Object? info = freezed,
    Object? promoDescription = freezed,
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
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String?,
      promoDescription: freezed == promoDescription
          ? _value.promoDescription
          : promoDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      basket: freezed == basket
          ? _value.basket
          : basket // ignore: cast_nullable_to_non_nullable
              as List<BasketFullInfoItemResponse>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BasketFullInfoResponseImplCopyWith<$Res>
    implements $BasketFullInfoResponseCopyWith<$Res> {
  factory _$$BasketFullInfoResponseImplCopyWith(
          _$BasketFullInfoResponseImpl value,
          $Res Function(_$BasketFullInfoResponseImpl) then) =
      __$$BasketFullInfoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? r,
      String? e,
      String? errorMessage,
      String? info,
      @JsonKey(name: 'promo_description') String? promoDescription,
      List<BasketFullInfoItemResponse>? basket});
}

/// @nodoc
class __$$BasketFullInfoResponseImplCopyWithImpl<$Res>
    extends _$BasketFullInfoResponseCopyWithImpl<$Res,
        _$BasketFullInfoResponseImpl>
    implements _$$BasketFullInfoResponseImplCopyWith<$Res> {
  __$$BasketFullInfoResponseImplCopyWithImpl(
      _$BasketFullInfoResponseImpl _value,
      $Res Function(_$BasketFullInfoResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = freezed,
    Object? e = freezed,
    Object? errorMessage = freezed,
    Object? info = freezed,
    Object? promoDescription = freezed,
    Object? basket = freezed,
  }) {
    return _then(_$BasketFullInfoResponseImpl(
      r: freezed == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String?,
      e: freezed == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String?,
      promoDescription: freezed == promoDescription
          ? _value.promoDescription
          : promoDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      basket: freezed == basket
          ? _value._basket
          : basket // ignore: cast_nullable_to_non_nullable
              as List<BasketFullInfoItemResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BasketFullInfoResponseImpl extends _BasketFullInfoResponse {
  _$BasketFullInfoResponseImpl(
      {this.r,
      this.e,
      this.errorMessage,
      this.info,
      @JsonKey(name: 'promo_description') this.promoDescription,
      final List<BasketFullInfoItemResponse>? basket})
      : _basket = basket,
        super._();

  factory _$BasketFullInfoResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BasketFullInfoResponseImplFromJson(json);

  @override
  final String? r;
  @override
  final String? e;
  @override
  final String? errorMessage;
  @override
  final String? info;
  @override
  @JsonKey(name: 'promo_description')
  final String? promoDescription;
  final List<BasketFullInfoItemResponse>? _basket;
  @override
  List<BasketFullInfoItemResponse>? get basket {
    final value = _basket;
    if (value == null) return null;
    if (_basket is EqualUnmodifiableListView) return _basket;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BasketFullInfoResponse(r: $r, e: $e, errorMessage: $errorMessage, info: $info, promoDescription: $promoDescription, basket: $basket)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasketFullInfoResponseImpl &&
            (identical(other.r, r) || other.r == r) &&
            (identical(other.e, e) || other.e == e) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.info, info) || other.info == info) &&
            (identical(other.promoDescription, promoDescription) ||
                other.promoDescription == promoDescription) &&
            const DeepCollectionEquality().equals(other._basket, _basket));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, r, e, errorMessage, info,
      promoDescription, const DeepCollectionEquality().hash(_basket));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BasketFullInfoResponseImplCopyWith<_$BasketFullInfoResponseImpl>
      get copyWith => __$$BasketFullInfoResponseImplCopyWithImpl<
          _$BasketFullInfoResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BasketFullInfoResponseImplToJson(
      this,
    );
  }
}

abstract class _BasketFullInfoResponse extends BasketFullInfoResponse {
  factory _BasketFullInfoResponse(
          {final String? r,
          final String? e,
          final String? errorMessage,
          final String? info,
          @JsonKey(name: 'promo_description') final String? promoDescription,
          final List<BasketFullInfoItemResponse>? basket}) =
      _$BasketFullInfoResponseImpl;
  _BasketFullInfoResponse._() : super._();

  factory _BasketFullInfoResponse.fromJson(Map<String, dynamic> json) =
      _$BasketFullInfoResponseImpl.fromJson;

  @override
  String? get r;
  @override
  String? get e;
  @override
  String? get errorMessage;
  @override
  String? get info;
  @override
  @JsonKey(name: 'promo_description')
  String? get promoDescription;
  @override
  List<BasketFullInfoItemResponse>? get basket;
  @override
  @JsonKey(ignore: true)
  _$$BasketFullInfoResponseImplCopyWith<_$BasketFullInfoResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
