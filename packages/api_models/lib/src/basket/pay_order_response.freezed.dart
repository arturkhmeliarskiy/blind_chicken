// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pay_order_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PayOrderResponse _$PayOrderResponseFromJson(Map<String, dynamic> json) {
  return _PayOrderResponse.fromJson(json);
}

/// @nodoc
mixin _$PayOrderResponse {
  String? get r => throw _privateConstructorUsedError;
  String? get e => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PayOrderResponseCopyWith<PayOrderResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayOrderResponseCopyWith<$Res> {
  factory $PayOrderResponseCopyWith(
          PayOrderResponse value, $Res Function(PayOrderResponse) then) =
      _$PayOrderResponseCopyWithImpl<$Res, PayOrderResponse>;
  @useResult
  $Res call({String? r, String? e, String? url});
}

/// @nodoc
class _$PayOrderResponseCopyWithImpl<$Res, $Val extends PayOrderResponse>
    implements $PayOrderResponseCopyWith<$Res> {
  _$PayOrderResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = freezed,
    Object? e = freezed,
    Object? url = freezed,
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
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PayOrderResponseImplCopyWith<$Res>
    implements $PayOrderResponseCopyWith<$Res> {
  factory _$$PayOrderResponseImplCopyWith(_$PayOrderResponseImpl value,
          $Res Function(_$PayOrderResponseImpl) then) =
      __$$PayOrderResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? r, String? e, String? url});
}

/// @nodoc
class __$$PayOrderResponseImplCopyWithImpl<$Res>
    extends _$PayOrderResponseCopyWithImpl<$Res, _$PayOrderResponseImpl>
    implements _$$PayOrderResponseImplCopyWith<$Res> {
  __$$PayOrderResponseImplCopyWithImpl(_$PayOrderResponseImpl _value,
      $Res Function(_$PayOrderResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = freezed,
    Object? e = freezed,
    Object? url = freezed,
  }) {
    return _then(_$PayOrderResponseImpl(
      r: freezed == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String?,
      e: freezed == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PayOrderResponseImpl extends _PayOrderResponse {
  _$PayOrderResponseImpl({this.r, this.e, this.url}) : super._();

  factory _$PayOrderResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PayOrderResponseImplFromJson(json);

  @override
  final String? r;
  @override
  final String? e;
  @override
  final String? url;

  @override
  String toString() {
    return 'PayOrderResponse(r: $r, e: $e, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayOrderResponseImpl &&
            (identical(other.r, r) || other.r == r) &&
            (identical(other.e, e) || other.e == e) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, r, e, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PayOrderResponseImplCopyWith<_$PayOrderResponseImpl> get copyWith =>
      __$$PayOrderResponseImplCopyWithImpl<_$PayOrderResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PayOrderResponseImplToJson(
      this,
    );
  }
}

abstract class _PayOrderResponse extends PayOrderResponse {
  factory _PayOrderResponse(
      {final String? r,
      final String? e,
      final String? url}) = _$PayOrderResponseImpl;
  _PayOrderResponse._() : super._();

  factory _PayOrderResponse.fromJson(Map<String, dynamic> json) =
      _$PayOrderResponseImpl.fromJson;

  @override
  String? get r;
  @override
  String? get e;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$PayOrderResponseImplCopyWith<_$PayOrderResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
