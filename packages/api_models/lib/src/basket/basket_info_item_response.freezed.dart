// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basket_info_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BasketInfoItemResponse _$BasketInfoItemResponseFromJson(
    Map<String, dynamic> json) {
  return _BasketInfoItemResponse.fromJson(json);
}

/// @nodoc
mixin _$BasketInfoItemResponse {
  String? get code => throw _privateConstructorUsedError;
  String? get sku => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BasketInfoItemResponseCopyWith<BasketInfoItemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasketInfoItemResponseCopyWith<$Res> {
  factory $BasketInfoItemResponseCopyWith(BasketInfoItemResponse value,
          $Res Function(BasketInfoItemResponse) then) =
      _$BasketInfoItemResponseCopyWithImpl<$Res, BasketInfoItemResponse>;
  @useResult
  $Res call({String? code, String? sku, int? count});
}

/// @nodoc
class _$BasketInfoItemResponseCopyWithImpl<$Res,
        $Val extends BasketInfoItemResponse>
    implements $BasketInfoItemResponseCopyWith<$Res> {
  _$BasketInfoItemResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? sku = freezed,
    Object? count = freezed,
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
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BasketInfoItemResponseImplCopyWith<$Res>
    implements $BasketInfoItemResponseCopyWith<$Res> {
  factory _$$BasketInfoItemResponseImplCopyWith(
          _$BasketInfoItemResponseImpl value,
          $Res Function(_$BasketInfoItemResponseImpl) then) =
      __$$BasketInfoItemResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? code, String? sku, int? count});
}

/// @nodoc
class __$$BasketInfoItemResponseImplCopyWithImpl<$Res>
    extends _$BasketInfoItemResponseCopyWithImpl<$Res,
        _$BasketInfoItemResponseImpl>
    implements _$$BasketInfoItemResponseImplCopyWith<$Res> {
  __$$BasketInfoItemResponseImplCopyWithImpl(
      _$BasketInfoItemResponseImpl _value,
      $Res Function(_$BasketInfoItemResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? sku = freezed,
    Object? count = freezed,
  }) {
    return _then(_$BasketInfoItemResponseImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      sku: freezed == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BasketInfoItemResponseImpl extends _BasketInfoItemResponse {
  _$BasketInfoItemResponseImpl({this.code, this.sku, this.count}) : super._();

  factory _$BasketInfoItemResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BasketInfoItemResponseImplFromJson(json);

  @override
  final String? code;
  @override
  final String? sku;
  @override
  final int? count;

  @override
  String toString() {
    return 'BasketInfoItemResponse(code: $code, sku: $sku, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasketInfoItemResponseImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, sku, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BasketInfoItemResponseImplCopyWith<_$BasketInfoItemResponseImpl>
      get copyWith => __$$BasketInfoItemResponseImplCopyWithImpl<
          _$BasketInfoItemResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BasketInfoItemResponseImplToJson(
      this,
    );
  }
}

abstract class _BasketInfoItemResponse extends BasketInfoItemResponse {
  factory _BasketInfoItemResponse(
      {final String? code,
      final String? sku,
      final int? count}) = _$BasketInfoItemResponseImpl;
  _BasketInfoItemResponse._() : super._();

  factory _BasketInfoItemResponse.fromJson(Map<String, dynamic> json) =
      _$BasketInfoItemResponseImpl.fromJson;

  @override
  String? get code;
  @override
  String? get sku;
  @override
  int? get count;
  @override
  @JsonKey(ignore: true)
  _$$BasketInfoItemResponseImplCopyWith<_$BasketInfoItemResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
