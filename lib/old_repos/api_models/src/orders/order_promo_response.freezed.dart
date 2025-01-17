// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_promo_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderPromoResponse _$OrderPromoResponseFromJson(Map<String, dynamic> json) {
  return _OrderPromoResponse.fromJson(json);
}

/// @nodoc
mixin _$OrderPromoResponse {
  String? get promocode => throw _privateConstructorUsedError;
  @JsonKey(name: 'promo_info')
  String? get promocodeInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderPromoResponseCopyWith<OrderPromoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderPromoResponseCopyWith<$Res> {
  factory $OrderPromoResponseCopyWith(
          OrderPromoResponse value, $Res Function(OrderPromoResponse) then) =
      _$OrderPromoResponseCopyWithImpl<$Res, OrderPromoResponse>;
  @useResult
  $Res call(
      {String? promocode, @JsonKey(name: 'promo_info') String? promocodeInfo});
}

/// @nodoc
class _$OrderPromoResponseCopyWithImpl<$Res, $Val extends OrderPromoResponse>
    implements $OrderPromoResponseCopyWith<$Res> {
  _$OrderPromoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promocode = freezed,
    Object? promocodeInfo = freezed,
  }) {
    return _then(_value.copyWith(
      promocode: freezed == promocode
          ? _value.promocode
          : promocode // ignore: cast_nullable_to_non_nullable
              as String?,
      promocodeInfo: freezed == promocodeInfo
          ? _value.promocodeInfo
          : promocodeInfo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderPromoResponseImplCopyWith<$Res>
    implements $OrderPromoResponseCopyWith<$Res> {
  factory _$$OrderPromoResponseImplCopyWith(_$OrderPromoResponseImpl value,
          $Res Function(_$OrderPromoResponseImpl) then) =
      __$$OrderPromoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? promocode, @JsonKey(name: 'promo_info') String? promocodeInfo});
}

/// @nodoc
class __$$OrderPromoResponseImplCopyWithImpl<$Res>
    extends _$OrderPromoResponseCopyWithImpl<$Res, _$OrderPromoResponseImpl>
    implements _$$OrderPromoResponseImplCopyWith<$Res> {
  __$$OrderPromoResponseImplCopyWithImpl(_$OrderPromoResponseImpl _value,
      $Res Function(_$OrderPromoResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promocode = freezed,
    Object? promocodeInfo = freezed,
  }) {
    return _then(_$OrderPromoResponseImpl(
      promocode: freezed == promocode
          ? _value.promocode
          : promocode // ignore: cast_nullable_to_non_nullable
              as String?,
      promocodeInfo: freezed == promocodeInfo
          ? _value.promocodeInfo
          : promocodeInfo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderPromoResponseImpl extends _OrderPromoResponse {
  _$OrderPromoResponseImpl(
      {this.promocode, @JsonKey(name: 'promo_info') this.promocodeInfo})
      : super._();

  factory _$OrderPromoResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderPromoResponseImplFromJson(json);

  @override
  final String? promocode;
  @override
  @JsonKey(name: 'promo_info')
  final String? promocodeInfo;

  @override
  String toString() {
    return 'OrderPromoResponse(promocode: $promocode, promocodeInfo: $promocodeInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderPromoResponseImpl &&
            (identical(other.promocode, promocode) ||
                other.promocode == promocode) &&
            (identical(other.promocodeInfo, promocodeInfo) ||
                other.promocodeInfo == promocodeInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, promocode, promocodeInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderPromoResponseImplCopyWith<_$OrderPromoResponseImpl> get copyWith =>
      __$$OrderPromoResponseImplCopyWithImpl<_$OrderPromoResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderPromoResponseImplToJson(
      this,
    );
  }
}

abstract class _OrderPromoResponse extends OrderPromoResponse {
  factory _OrderPromoResponse(
          {final String? promocode,
          @JsonKey(name: 'promo_info') final String? promocodeInfo}) =
      _$OrderPromoResponseImpl;
  _OrderPromoResponse._() : super._();

  factory _OrderPromoResponse.fromJson(Map<String, dynamic> json) =
      _$OrderPromoResponseImpl.fromJson;

  @override
  String? get promocode;
  @override
  @JsonKey(name: 'promo_info')
  String? get promocodeInfo;
  @override
  @JsonKey(ignore: true)
  _$$OrderPromoResponseImplCopyWith<_$OrderPromoResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
