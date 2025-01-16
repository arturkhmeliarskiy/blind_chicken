// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeliveryInfoRsponse _$DeliveryInfoRsponseFromJson(Map<String, dynamic> json) {
  return _DeliveryInfoRsponse.fromJson(json);
}

/// @nodoc
mixin _$DeliveryInfoRsponse {
  String? get r => throw _privateConstructorUsedError;
  String? get e => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Serializes this DeliveryInfoRsponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeliveryInfoRsponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeliveryInfoRsponseCopyWith<DeliveryInfoRsponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryInfoRsponseCopyWith<$Res> {
  factory $DeliveryInfoRsponseCopyWith(
          DeliveryInfoRsponse value, $Res Function(DeliveryInfoRsponse) then) =
      _$DeliveryInfoRsponseCopyWithImpl<$Res, DeliveryInfoRsponse>;
  @useResult
  $Res call({String? r, String? e, String? errorMessage});
}

/// @nodoc
class _$DeliveryInfoRsponseCopyWithImpl<$Res, $Val extends DeliveryInfoRsponse>
    implements $DeliveryInfoRsponseCopyWith<$Res> {
  _$DeliveryInfoRsponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeliveryInfoRsponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = freezed,
    Object? e = freezed,
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
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeliveryInfoRsponseImplCopyWith<$Res>
    implements $DeliveryInfoRsponseCopyWith<$Res> {
  factory _$$DeliveryInfoRsponseImplCopyWith(_$DeliveryInfoRsponseImpl value,
          $Res Function(_$DeliveryInfoRsponseImpl) then) =
      __$$DeliveryInfoRsponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? r, String? e, String? errorMessage});
}

/// @nodoc
class __$$DeliveryInfoRsponseImplCopyWithImpl<$Res>
    extends _$DeliveryInfoRsponseCopyWithImpl<$Res, _$DeliveryInfoRsponseImpl>
    implements _$$DeliveryInfoRsponseImplCopyWith<$Res> {
  __$$DeliveryInfoRsponseImplCopyWithImpl(_$DeliveryInfoRsponseImpl _value,
      $Res Function(_$DeliveryInfoRsponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeliveryInfoRsponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = freezed,
    Object? e = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$DeliveryInfoRsponseImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeliveryInfoRsponseImpl extends _DeliveryInfoRsponse {
  _$DeliveryInfoRsponseImpl({this.r, this.e, this.errorMessage}) : super._();

  factory _$DeliveryInfoRsponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeliveryInfoRsponseImplFromJson(json);

  @override
  final String? r;
  @override
  final String? e;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'DeliveryInfoRsponse(r: $r, e: $e, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryInfoRsponseImpl &&
            (identical(other.r, r) || other.r == r) &&
            (identical(other.e, e) || other.e == e) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, r, e, errorMessage);

  /// Create a copy of DeliveryInfoRsponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryInfoRsponseImplCopyWith<_$DeliveryInfoRsponseImpl> get copyWith =>
      __$$DeliveryInfoRsponseImplCopyWithImpl<_$DeliveryInfoRsponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeliveryInfoRsponseImplToJson(
      this,
    );
  }
}

abstract class _DeliveryInfoRsponse extends DeliveryInfoRsponse {
  factory _DeliveryInfoRsponse(
      {final String? r,
      final String? e,
      final String? errorMessage}) = _$DeliveryInfoRsponseImpl;
  _DeliveryInfoRsponse._() : super._();

  factory _DeliveryInfoRsponse.fromJson(Map<String, dynamic> json) =
      _$DeliveryInfoRsponseImpl.fromJson;

  @override
  String? get r;
  @override
  String? get e;
  @override
  String? get errorMessage;

  /// Create a copy of DeliveryInfoRsponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeliveryInfoRsponseImplCopyWith<_$DeliveryInfoRsponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
