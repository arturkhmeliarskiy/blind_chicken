// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gift_card_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GiftCardResponse _$GiftCardResponseFromJson(Map<String, dynamic> json) {
  return _GiftCardResponse.fromJson(json);
}

/// @nodoc
mixin _$GiftCardResponse {
  String? get r => throw _privateConstructorUsedError;
  @JsonKey(name: 'e')
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Serializes this GiftCardResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GiftCardResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GiftCardResponseCopyWith<GiftCardResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GiftCardResponseCopyWith<$Res> {
  factory $GiftCardResponseCopyWith(
          GiftCardResponse value, $Res Function(GiftCardResponse) then) =
      _$GiftCardResponseCopyWithImpl<$Res, GiftCardResponse>;
  @useResult
  $Res call({String? r, @JsonKey(name: 'e') String? errorMessage});
}

/// @nodoc
class _$GiftCardResponseCopyWithImpl<$Res, $Val extends GiftCardResponse>
    implements $GiftCardResponseCopyWith<$Res> {
  _$GiftCardResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GiftCardResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      r: freezed == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GiftCardResponseImplCopyWith<$Res>
    implements $GiftCardResponseCopyWith<$Res> {
  factory _$$GiftCardResponseImplCopyWith(_$GiftCardResponseImpl value,
          $Res Function(_$GiftCardResponseImpl) then) =
      __$$GiftCardResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? r, @JsonKey(name: 'e') String? errorMessage});
}

/// @nodoc
class __$$GiftCardResponseImplCopyWithImpl<$Res>
    extends _$GiftCardResponseCopyWithImpl<$Res, _$GiftCardResponseImpl>
    implements _$$GiftCardResponseImplCopyWith<$Res> {
  __$$GiftCardResponseImplCopyWithImpl(_$GiftCardResponseImpl _value,
      $Res Function(_$GiftCardResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of GiftCardResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$GiftCardResponseImpl(
      r: freezed == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GiftCardResponseImpl extends _GiftCardResponse {
  _$GiftCardResponseImpl({this.r, @JsonKey(name: 'e') this.errorMessage})
      : super._();

  factory _$GiftCardResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GiftCardResponseImplFromJson(json);

  @override
  final String? r;
  @override
  @JsonKey(name: 'e')
  final String? errorMessage;

  @override
  String toString() {
    return 'GiftCardResponse(r: $r, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GiftCardResponseImpl &&
            (identical(other.r, r) || other.r == r) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, r, errorMessage);

  /// Create a copy of GiftCardResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GiftCardResponseImplCopyWith<_$GiftCardResponseImpl> get copyWith =>
      __$$GiftCardResponseImplCopyWithImpl<_$GiftCardResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GiftCardResponseImplToJson(
      this,
    );
  }
}

abstract class _GiftCardResponse extends GiftCardResponse {
  factory _GiftCardResponse(
      {final String? r,
      @JsonKey(name: 'e') final String? errorMessage}) = _$GiftCardResponseImpl;
  _GiftCardResponse._() : super._();

  factory _GiftCardResponse.fromJson(Map<String, dynamic> json) =
      _$GiftCardResponseImpl.fromJson;

  @override
  String? get r;
  @override
  @JsonKey(name: 'e')
  String? get errorMessage;

  /// Create a copy of GiftCardResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GiftCardResponseImplCopyWith<_$GiftCardResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
