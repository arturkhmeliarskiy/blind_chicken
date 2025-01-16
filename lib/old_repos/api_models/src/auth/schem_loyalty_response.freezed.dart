// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schem_loyalty_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SchemLoyaltyResponse _$SchemLoyaltyResponseFromJson(Map<String, dynamic> json) {
  return _SchemLoyaltyResponse.fromJson(json);
}

/// @nodoc
mixin _$SchemLoyaltyResponse {
  int? get discount => throw _privateConstructorUsedError;
  int? get value => throw _privateConstructorUsedError;

  /// Serializes this SchemLoyaltyResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SchemLoyaltyResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SchemLoyaltyResponseCopyWith<SchemLoyaltyResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchemLoyaltyResponseCopyWith<$Res> {
  factory $SchemLoyaltyResponseCopyWith(SchemLoyaltyResponse value,
          $Res Function(SchemLoyaltyResponse) then) =
      _$SchemLoyaltyResponseCopyWithImpl<$Res, SchemLoyaltyResponse>;
  @useResult
  $Res call({int? discount, int? value});
}

/// @nodoc
class _$SchemLoyaltyResponseCopyWithImpl<$Res,
        $Val extends SchemLoyaltyResponse>
    implements $SchemLoyaltyResponseCopyWith<$Res> {
  _$SchemLoyaltyResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SchemLoyaltyResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discount = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SchemLoyaltyResponseImplCopyWith<$Res>
    implements $SchemLoyaltyResponseCopyWith<$Res> {
  factory _$$SchemLoyaltyResponseImplCopyWith(_$SchemLoyaltyResponseImpl value,
          $Res Function(_$SchemLoyaltyResponseImpl) then) =
      __$$SchemLoyaltyResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? discount, int? value});
}

/// @nodoc
class __$$SchemLoyaltyResponseImplCopyWithImpl<$Res>
    extends _$SchemLoyaltyResponseCopyWithImpl<$Res, _$SchemLoyaltyResponseImpl>
    implements _$$SchemLoyaltyResponseImplCopyWith<$Res> {
  __$$SchemLoyaltyResponseImplCopyWithImpl(_$SchemLoyaltyResponseImpl _value,
      $Res Function(_$SchemLoyaltyResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SchemLoyaltyResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discount = freezed,
    Object? value = freezed,
  }) {
    return _then(_$SchemLoyaltyResponseImpl(
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SchemLoyaltyResponseImpl extends _SchemLoyaltyResponse {
  _$SchemLoyaltyResponseImpl({this.discount, this.value}) : super._();

  factory _$SchemLoyaltyResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SchemLoyaltyResponseImplFromJson(json);

  @override
  final int? discount;
  @override
  final int? value;

  @override
  String toString() {
    return 'SchemLoyaltyResponse(discount: $discount, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SchemLoyaltyResponseImpl &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, discount, value);

  /// Create a copy of SchemLoyaltyResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SchemLoyaltyResponseImplCopyWith<_$SchemLoyaltyResponseImpl>
      get copyWith =>
          __$$SchemLoyaltyResponseImplCopyWithImpl<_$SchemLoyaltyResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SchemLoyaltyResponseImplToJson(
      this,
    );
  }
}

abstract class _SchemLoyaltyResponse extends SchemLoyaltyResponse {
  factory _SchemLoyaltyResponse({final int? discount, final int? value}) =
      _$SchemLoyaltyResponseImpl;
  _SchemLoyaltyResponse._() : super._();

  factory _SchemLoyaltyResponse.fromJson(Map<String, dynamic> json) =
      _$SchemLoyaltyResponseImpl.fromJson;

  @override
  int? get discount;
  @override
  int? get value;

  /// Create a copy of SchemLoyaltyResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SchemLoyaltyResponseImplCopyWith<_$SchemLoyaltyResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
