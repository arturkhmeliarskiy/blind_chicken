// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basket_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BasketResponse _$BasketResponseFromJson(Map<String, dynamic> json) {
  return _BasketResponse.fromJson(json);
}

/// @nodoc
mixin _$BasketResponse {
  String? get r => throw _privateConstructorUsedError;
  String? get e => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BasketResponseCopyWith<BasketResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasketResponseCopyWith<$Res> {
  factory $BasketResponseCopyWith(
          BasketResponse value, $Res Function(BasketResponse) then) =
      _$BasketResponseCopyWithImpl<$Res, BasketResponse>;
  @useResult
  $Res call({String? r, String? e, int? count, String? errorMessage});
}

/// @nodoc
class _$BasketResponseCopyWithImpl<$Res, $Val extends BasketResponse>
    implements $BasketResponseCopyWith<$Res> {
  _$BasketResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = freezed,
    Object? e = freezed,
    Object? count = freezed,
    Object? errorMessage = freezed,
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
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BasketResponseImplCopyWith<$Res>
    implements $BasketResponseCopyWith<$Res> {
  factory _$$BasketResponseImplCopyWith(_$BasketResponseImpl value,
          $Res Function(_$BasketResponseImpl) then) =
      __$$BasketResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? r, String? e, int? count, String? errorMessage});
}

/// @nodoc
class __$$BasketResponseImplCopyWithImpl<$Res>
    extends _$BasketResponseCopyWithImpl<$Res, _$BasketResponseImpl>
    implements _$$BasketResponseImplCopyWith<$Res> {
  __$$BasketResponseImplCopyWithImpl(
      _$BasketResponseImpl _value, $Res Function(_$BasketResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = freezed,
    Object? e = freezed,
    Object? count = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$BasketResponseImpl(
      r: freezed == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String?,
      e: freezed == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as String?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BasketResponseImpl extends _BasketResponse {
  _$BasketResponseImpl({this.r, this.e, this.count, this.errorMessage})
      : super._();

  factory _$BasketResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BasketResponseImplFromJson(json);

  @override
  final String? r;
  @override
  final String? e;
  @override
  final int? count;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'BasketResponse(r: $r, e: $e, count: $count, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasketResponseImpl &&
            (identical(other.r, r) || other.r == r) &&
            (identical(other.e, e) || other.e == e) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, r, e, count, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BasketResponseImplCopyWith<_$BasketResponseImpl> get copyWith =>
      __$$BasketResponseImplCopyWithImpl<_$BasketResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BasketResponseImplToJson(
      this,
    );
  }
}

abstract class _BasketResponse extends BasketResponse {
  factory _BasketResponse(
      {final String? r,
      final String? e,
      final int? count,
      final String? errorMessage}) = _$BasketResponseImpl;
  _BasketResponse._() : super._();

  factory _BasketResponse.fromJson(Map<String, dynamic> json) =
      _$BasketResponseImpl.fromJson;

  @override
  String? get r;
  @override
  String? get e;
  @override
  int? get count;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$BasketResponseImplCopyWith<_$BasketResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
