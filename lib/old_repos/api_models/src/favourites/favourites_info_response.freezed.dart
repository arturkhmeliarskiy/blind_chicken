// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favourites_info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FavouritesInfoResponse _$FavouritesInfoResponseFromJson(
    Map<String, dynamic> json) {
  return _FavouritesInfoResponse.fromJson(json);
}

/// @nodoc
mixin _$FavouritesInfoResponse {
  String? get r => throw _privateConstructorUsedError;
  String? get e => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Serializes this FavouritesInfoResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FavouritesInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FavouritesInfoResponseCopyWith<FavouritesInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouritesInfoResponseCopyWith<$Res> {
  factory $FavouritesInfoResponseCopyWith(FavouritesInfoResponse value,
          $Res Function(FavouritesInfoResponse) then) =
      _$FavouritesInfoResponseCopyWithImpl<$Res, FavouritesInfoResponse>;
  @useResult
  $Res call({String? r, String? e, String? errorMessage});
}

/// @nodoc
class _$FavouritesInfoResponseCopyWithImpl<$Res,
        $Val extends FavouritesInfoResponse>
    implements $FavouritesInfoResponseCopyWith<$Res> {
  _$FavouritesInfoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FavouritesInfoResponse
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
abstract class _$$FavouritesInfoResponseImplCopyWith<$Res>
    implements $FavouritesInfoResponseCopyWith<$Res> {
  factory _$$FavouritesInfoResponseImplCopyWith(
          _$FavouritesInfoResponseImpl value,
          $Res Function(_$FavouritesInfoResponseImpl) then) =
      __$$FavouritesInfoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? r, String? e, String? errorMessage});
}

/// @nodoc
class __$$FavouritesInfoResponseImplCopyWithImpl<$Res>
    extends _$FavouritesInfoResponseCopyWithImpl<$Res,
        _$FavouritesInfoResponseImpl>
    implements _$$FavouritesInfoResponseImplCopyWith<$Res> {
  __$$FavouritesInfoResponseImplCopyWithImpl(
      _$FavouritesInfoResponseImpl _value,
      $Res Function(_$FavouritesInfoResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavouritesInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = freezed,
    Object? e = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$FavouritesInfoResponseImpl(
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
class _$FavouritesInfoResponseImpl extends _FavouritesInfoResponse {
  _$FavouritesInfoResponseImpl({this.r, this.e, this.errorMessage}) : super._();

  factory _$FavouritesInfoResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FavouritesInfoResponseImplFromJson(json);

  @override
  final String? r;
  @override
  final String? e;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'FavouritesInfoResponse(r: $r, e: $e, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavouritesInfoResponseImpl &&
            (identical(other.r, r) || other.r == r) &&
            (identical(other.e, e) || other.e == e) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, r, e, errorMessage);

  /// Create a copy of FavouritesInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FavouritesInfoResponseImplCopyWith<_$FavouritesInfoResponseImpl>
      get copyWith => __$$FavouritesInfoResponseImplCopyWithImpl<
          _$FavouritesInfoResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FavouritesInfoResponseImplToJson(
      this,
    );
  }
}

abstract class _FavouritesInfoResponse extends FavouritesInfoResponse {
  factory _FavouritesInfoResponse(
      {final String? r,
      final String? e,
      final String? errorMessage}) = _$FavouritesInfoResponseImpl;
  _FavouritesInfoResponse._() : super._();

  factory _FavouritesInfoResponse.fromJson(Map<String, dynamic> json) =
      _$FavouritesInfoResponseImpl.fromJson;

  @override
  String? get r;
  @override
  String? get e;
  @override
  String? get errorMessage;

  /// Create a copy of FavouritesInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FavouritesInfoResponseImplCopyWith<_$FavouritesInfoResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
