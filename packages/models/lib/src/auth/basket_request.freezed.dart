// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basket_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BasketRequest {
  String get code => throw _privateConstructorUsedError;
  String get sku => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BasketRequestCopyWith<BasketRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasketRequestCopyWith<$Res> {
  factory $BasketRequestCopyWith(
          BasketRequest value, $Res Function(BasketRequest) then) =
      _$BasketRequestCopyWithImpl<$Res, BasketRequest>;
  @useResult
  $Res call({String code, String sku, int count});
}

/// @nodoc
class _$BasketRequestCopyWithImpl<$Res, $Val extends BasketRequest>
    implements $BasketRequestCopyWith<$Res> {
  _$BasketRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? sku = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      sku: null == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BasketRequestImplCopyWith<$Res>
    implements $BasketRequestCopyWith<$Res> {
  factory _$$BasketRequestImplCopyWith(
          _$BasketRequestImpl value, $Res Function(_$BasketRequestImpl) then) =
      __$$BasketRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String sku, int count});
}

/// @nodoc
class __$$BasketRequestImplCopyWithImpl<$Res>
    extends _$BasketRequestCopyWithImpl<$Res, _$BasketRequestImpl>
    implements _$$BasketRequestImplCopyWith<$Res> {
  __$$BasketRequestImplCopyWithImpl(
      _$BasketRequestImpl _value, $Res Function(_$BasketRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? sku = null,
    Object? count = null,
  }) {
    return _then(_$BasketRequestImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      sku: null == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$BasketRequestImpl extends _BasketRequest {
  _$BasketRequestImpl(
      {required this.code, required this.sku, required this.count})
      : super._();

  @override
  final String code;
  @override
  final String sku;
  @override
  final int count;

  @override
  String toString() {
    return 'BasketRequest(code: $code, sku: $sku, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasketRequestImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, sku, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BasketRequestImplCopyWith<_$BasketRequestImpl> get copyWith =>
      __$$BasketRequestImplCopyWithImpl<_$BasketRequestImpl>(this, _$identity);
}

abstract class _BasketRequest extends BasketRequest {
  factory _BasketRequest(
      {required final String code,
      required final String sku,
      required final int count}) = _$BasketRequestImpl;
  _BasketRequest._() : super._();

  @override
  String get code;
  @override
  String get sku;
  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$BasketRequestImplCopyWith<_$BasketRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
