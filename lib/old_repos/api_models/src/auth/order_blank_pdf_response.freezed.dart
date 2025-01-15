// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_blank_pdf_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderBlankPdfResponse _$OrderBlankPdfResponseFromJson(
    Map<String, dynamic> json) {
  return _OrderBlankPdfResponse.fromJson(json);
}

/// @nodoc
mixin _$OrderBlankPdfResponse {
  String? get r => throw _privateConstructorUsedError;
  @JsonKey(name: 'e')
  String? get message => throw _privateConstructorUsedError;
  String? get pdf => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderBlankPdfResponseCopyWith<OrderBlankPdfResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderBlankPdfResponseCopyWith<$Res> {
  factory $OrderBlankPdfResponseCopyWith(OrderBlankPdfResponse value,
          $Res Function(OrderBlankPdfResponse) then) =
      _$OrderBlankPdfResponseCopyWithImpl<$Res, OrderBlankPdfResponse>;
  @useResult
  $Res call({String? r, @JsonKey(name: 'e') String? message, String? pdf});
}

/// @nodoc
class _$OrderBlankPdfResponseCopyWithImpl<$Res,
        $Val extends OrderBlankPdfResponse>
    implements $OrderBlankPdfResponseCopyWith<$Res> {
  _$OrderBlankPdfResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = freezed,
    Object? message = freezed,
    Object? pdf = freezed,
  }) {
    return _then(_value.copyWith(
      r: freezed == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      pdf: freezed == pdf
          ? _value.pdf
          : pdf // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderBlankPdfResponseImplCopyWith<$Res>
    implements $OrderBlankPdfResponseCopyWith<$Res> {
  factory _$$OrderBlankPdfResponseImplCopyWith(
          _$OrderBlankPdfResponseImpl value,
          $Res Function(_$OrderBlankPdfResponseImpl) then) =
      __$$OrderBlankPdfResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? r, @JsonKey(name: 'e') String? message, String? pdf});
}

/// @nodoc
class __$$OrderBlankPdfResponseImplCopyWithImpl<$Res>
    extends _$OrderBlankPdfResponseCopyWithImpl<$Res,
        _$OrderBlankPdfResponseImpl>
    implements _$$OrderBlankPdfResponseImplCopyWith<$Res> {
  __$$OrderBlankPdfResponseImplCopyWithImpl(_$OrderBlankPdfResponseImpl _value,
      $Res Function(_$OrderBlankPdfResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = freezed,
    Object? message = freezed,
    Object? pdf = freezed,
  }) {
    return _then(_$OrderBlankPdfResponseImpl(
      r: freezed == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      pdf: freezed == pdf
          ? _value.pdf
          : pdf // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderBlankPdfResponseImpl extends _OrderBlankPdfResponse {
  _$OrderBlankPdfResponseImpl(
      {this.r, @JsonKey(name: 'e') this.message, this.pdf})
      : super._();

  factory _$OrderBlankPdfResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderBlankPdfResponseImplFromJson(json);

  @override
  final String? r;
  @override
  @JsonKey(name: 'e')
  final String? message;
  @override
  final String? pdf;

  @override
  String toString() {
    return 'OrderBlankPdfResponse(r: $r, message: $message, pdf: $pdf)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderBlankPdfResponseImpl &&
            (identical(other.r, r) || other.r == r) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.pdf, pdf) || other.pdf == pdf));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, r, message, pdf);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderBlankPdfResponseImplCopyWith<_$OrderBlankPdfResponseImpl>
      get copyWith => __$$OrderBlankPdfResponseImplCopyWithImpl<
          _$OrderBlankPdfResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderBlankPdfResponseImplToJson(
      this,
    );
  }
}

abstract class _OrderBlankPdfResponse extends OrderBlankPdfResponse {
  factory _OrderBlankPdfResponse(
      {final String? r,
      @JsonKey(name: 'e') final String? message,
      final String? pdf}) = _$OrderBlankPdfResponseImpl;
  _OrderBlankPdfResponse._() : super._();

  factory _OrderBlankPdfResponse.fromJson(Map<String, dynamic> json) =
      _$OrderBlankPdfResponseImpl.fromJson;

  @override
  String? get r;
  @override
  @JsonKey(name: 'e')
  String? get message;
  @override
  String? get pdf;
  @override
  @JsonKey(ignore: true)
  _$$OrderBlankPdfResponseImplCopyWith<_$OrderBlankPdfResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
