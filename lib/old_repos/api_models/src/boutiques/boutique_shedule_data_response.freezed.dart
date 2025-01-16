// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'boutique_shedule_data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BoutiqueSheduleResponse _$BoutiqueSheduleResponseFromJson(
    Map<String, dynamic> json) {
  return _BoutiqueSheduleResponse.fromJson(json);
}

/// @nodoc
mixin _$BoutiqueSheduleResponse {
  int? get s => throw _privateConstructorUsedError;
  int? get e => throw _privateConstructorUsedError;

  /// Serializes this BoutiqueSheduleResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BoutiqueSheduleResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BoutiqueSheduleResponseCopyWith<BoutiqueSheduleResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoutiqueSheduleResponseCopyWith<$Res> {
  factory $BoutiqueSheduleResponseCopyWith(BoutiqueSheduleResponse value,
          $Res Function(BoutiqueSheduleResponse) then) =
      _$BoutiqueSheduleResponseCopyWithImpl<$Res, BoutiqueSheduleResponse>;
  @useResult
  $Res call({int? s, int? e});
}

/// @nodoc
class _$BoutiqueSheduleResponseCopyWithImpl<$Res,
        $Val extends BoutiqueSheduleResponse>
    implements $BoutiqueSheduleResponseCopyWith<$Res> {
  _$BoutiqueSheduleResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BoutiqueSheduleResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? s = freezed,
    Object? e = freezed,
  }) {
    return _then(_value.copyWith(
      s: freezed == s
          ? _value.s
          : s // ignore: cast_nullable_to_non_nullable
              as int?,
      e: freezed == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BoutiqueSheduleResponseImplCopyWith<$Res>
    implements $BoutiqueSheduleResponseCopyWith<$Res> {
  factory _$$BoutiqueSheduleResponseImplCopyWith(
          _$BoutiqueSheduleResponseImpl value,
          $Res Function(_$BoutiqueSheduleResponseImpl) then) =
      __$$BoutiqueSheduleResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? s, int? e});
}

/// @nodoc
class __$$BoutiqueSheduleResponseImplCopyWithImpl<$Res>
    extends _$BoutiqueSheduleResponseCopyWithImpl<$Res,
        _$BoutiqueSheduleResponseImpl>
    implements _$$BoutiqueSheduleResponseImplCopyWith<$Res> {
  __$$BoutiqueSheduleResponseImplCopyWithImpl(
      _$BoutiqueSheduleResponseImpl _value,
      $Res Function(_$BoutiqueSheduleResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of BoutiqueSheduleResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? s = freezed,
    Object? e = freezed,
  }) {
    return _then(_$BoutiqueSheduleResponseImpl(
      s: freezed == s
          ? _value.s
          : s // ignore: cast_nullable_to_non_nullable
              as int?,
      e: freezed == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BoutiqueSheduleResponseImpl extends _BoutiqueSheduleResponse {
  _$BoutiqueSheduleResponseImpl({this.s, this.e}) : super._();

  factory _$BoutiqueSheduleResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BoutiqueSheduleResponseImplFromJson(json);

  @override
  final int? s;
  @override
  final int? e;

  @override
  String toString() {
    return 'BoutiqueSheduleResponse(s: $s, e: $e)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoutiqueSheduleResponseImpl &&
            (identical(other.s, s) || other.s == s) &&
            (identical(other.e, e) || other.e == e));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, s, e);

  /// Create a copy of BoutiqueSheduleResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BoutiqueSheduleResponseImplCopyWith<_$BoutiqueSheduleResponseImpl>
      get copyWith => __$$BoutiqueSheduleResponseImplCopyWithImpl<
          _$BoutiqueSheduleResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BoutiqueSheduleResponseImplToJson(
      this,
    );
  }
}

abstract class _BoutiqueSheduleResponse extends BoutiqueSheduleResponse {
  factory _BoutiqueSheduleResponse({final int? s, final int? e}) =
      _$BoutiqueSheduleResponseImpl;
  _BoutiqueSheduleResponse._() : super._();

  factory _BoutiqueSheduleResponse.fromJson(Map<String, dynamic> json) =
      _$BoutiqueSheduleResponseImpl.fromJson;

  @override
  int? get s;
  @override
  int? get e;

  /// Create a copy of BoutiqueSheduleResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BoutiqueSheduleResponseImplCopyWith<_$BoutiqueSheduleResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
