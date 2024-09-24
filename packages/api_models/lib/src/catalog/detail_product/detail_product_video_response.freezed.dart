// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_product_video_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DetailProductVideoResponse _$DetailProductVideoResponseFromJson(
    Map<String, dynamic> json) {
  return _DetailProductVideoResponse.fromJson(json);
}

/// @nodoc
mixin _$DetailProductVideoResponse {
  String? get v => throw _privateConstructorUsedError;
  String? get i => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailProductVideoResponseCopyWith<DetailProductVideoResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailProductVideoResponseCopyWith<$Res> {
  factory $DetailProductVideoResponseCopyWith(DetailProductVideoResponse value,
          $Res Function(DetailProductVideoResponse) then) =
      _$DetailProductVideoResponseCopyWithImpl<$Res,
          DetailProductVideoResponse>;
  @useResult
  $Res call({String? v, String? i});
}

/// @nodoc
class _$DetailProductVideoResponseCopyWithImpl<$Res,
        $Val extends DetailProductVideoResponse>
    implements $DetailProductVideoResponseCopyWith<$Res> {
  _$DetailProductVideoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? v = freezed,
    Object? i = freezed,
  }) {
    return _then(_value.copyWith(
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as String?,
      i: freezed == i
          ? _value.i
          : i // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailProductVideoResponseImplCopyWith<$Res>
    implements $DetailProductVideoResponseCopyWith<$Res> {
  factory _$$DetailProductVideoResponseImplCopyWith(
          _$DetailProductVideoResponseImpl value,
          $Res Function(_$DetailProductVideoResponseImpl) then) =
      __$$DetailProductVideoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? v, String? i});
}

/// @nodoc
class __$$DetailProductVideoResponseImplCopyWithImpl<$Res>
    extends _$DetailProductVideoResponseCopyWithImpl<$Res,
        _$DetailProductVideoResponseImpl>
    implements _$$DetailProductVideoResponseImplCopyWith<$Res> {
  __$$DetailProductVideoResponseImplCopyWithImpl(
      _$DetailProductVideoResponseImpl _value,
      $Res Function(_$DetailProductVideoResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? v = freezed,
    Object? i = freezed,
  }) {
    return _then(_$DetailProductVideoResponseImpl(
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as String?,
      i: freezed == i
          ? _value.i
          : i // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailProductVideoResponseImpl extends _DetailProductVideoResponse {
  _$DetailProductVideoResponseImpl({this.v, this.i}) : super._();

  factory _$DetailProductVideoResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DetailProductVideoResponseImplFromJson(json);

  @override
  final String? v;
  @override
  final String? i;

  @override
  String toString() {
    return 'DetailProductVideoResponse(v: $v, i: $i)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailProductVideoResponseImpl &&
            (identical(other.v, v) || other.v == v) &&
            (identical(other.i, i) || other.i == i));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, v, i);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailProductVideoResponseImplCopyWith<_$DetailProductVideoResponseImpl>
      get copyWith => __$$DetailProductVideoResponseImplCopyWithImpl<
          _$DetailProductVideoResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailProductVideoResponseImplToJson(
      this,
    );
  }
}

abstract class _DetailProductVideoResponse extends DetailProductVideoResponse {
  factory _DetailProductVideoResponse({final String? v, final String? i}) =
      _$DetailProductVideoResponseImpl;
  _DetailProductVideoResponse._() : super._();

  factory _DetailProductVideoResponse.fromJson(Map<String, dynamic> json) =
      _$DetailProductVideoResponseImpl.fromJson;

  @override
  String? get v;
  @override
  String? get i;
  @override
  @JsonKey(ignore: true)
  _$$DetailProductVideoResponseImplCopyWith<_$DetailProductVideoResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
