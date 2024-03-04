// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_gift_card_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderGiftCardResponse _$OrderGiftCardResponseFromJson(
    Map<String, dynamic> json) {
  return _OrderGiftCardResponse.fromJson(json);
}

/// @nodoc
mixin _$OrderGiftCardResponse {
  String? get type => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get img => throw _privateConstructorUsedError;
  String? get sum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderGiftCardResponseCopyWith<OrderGiftCardResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderGiftCardResponseCopyWith<$Res> {
  factory $OrderGiftCardResponseCopyWith(OrderGiftCardResponse value,
          $Res Function(OrderGiftCardResponse) then) =
      _$OrderGiftCardResponseCopyWithImpl<$Res, OrderGiftCardResponse>;
  @useResult
  $Res call(
      {String? type, String? color, String? name, String? img, String? sum});
}

/// @nodoc
class _$OrderGiftCardResponseCopyWithImpl<$Res,
        $Val extends OrderGiftCardResponse>
    implements $OrderGiftCardResponseCopyWith<$Res> {
  _$OrderGiftCardResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? color = freezed,
    Object? name = freezed,
    Object? img = freezed,
    Object? sum = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      img: freezed == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
      sum: freezed == sum
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderGiftCardResponseImplCopyWith<$Res>
    implements $OrderGiftCardResponseCopyWith<$Res> {
  factory _$$OrderGiftCardResponseImplCopyWith(
          _$OrderGiftCardResponseImpl value,
          $Res Function(_$OrderGiftCardResponseImpl) then) =
      __$$OrderGiftCardResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? type, String? color, String? name, String? img, String? sum});
}

/// @nodoc
class __$$OrderGiftCardResponseImplCopyWithImpl<$Res>
    extends _$OrderGiftCardResponseCopyWithImpl<$Res,
        _$OrderGiftCardResponseImpl>
    implements _$$OrderGiftCardResponseImplCopyWith<$Res> {
  __$$OrderGiftCardResponseImplCopyWithImpl(_$OrderGiftCardResponseImpl _value,
      $Res Function(_$OrderGiftCardResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? color = freezed,
    Object? name = freezed,
    Object? img = freezed,
    Object? sum = freezed,
  }) {
    return _then(_$OrderGiftCardResponseImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      img: freezed == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
      sum: freezed == sum
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderGiftCardResponseImpl extends _OrderGiftCardResponse {
  _$OrderGiftCardResponseImpl(
      {this.type, this.color, this.name, this.img, this.sum})
      : super._();

  factory _$OrderGiftCardResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderGiftCardResponseImplFromJson(json);

  @override
  final String? type;
  @override
  final String? color;
  @override
  final String? name;
  @override
  final String? img;
  @override
  final String? sum;

  @override
  String toString() {
    return 'OrderGiftCardResponse(type: $type, color: $color, name: $name, img: $img, sum: $sum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderGiftCardResponseImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.img, img) || other.img == img) &&
            (identical(other.sum, sum) || other.sum == sum));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, color, name, img, sum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderGiftCardResponseImplCopyWith<_$OrderGiftCardResponseImpl>
      get copyWith => __$$OrderGiftCardResponseImplCopyWithImpl<
          _$OrderGiftCardResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderGiftCardResponseImplToJson(
      this,
    );
  }
}

abstract class _OrderGiftCardResponse extends OrderGiftCardResponse {
  factory _OrderGiftCardResponse(
      {final String? type,
      final String? color,
      final String? name,
      final String? img,
      final String? sum}) = _$OrderGiftCardResponseImpl;
  _OrderGiftCardResponse._() : super._();

  factory _OrderGiftCardResponse.fromJson(Map<String, dynamic> json) =
      _$OrderGiftCardResponseImpl.fromJson;

  @override
  String? get type;
  @override
  String? get color;
  @override
  String? get name;
  @override
  String? get img;
  @override
  String? get sum;
  @override
  @JsonKey(ignore: true)
  _$$OrderGiftCardResponseImplCopyWith<_$OrderGiftCardResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
