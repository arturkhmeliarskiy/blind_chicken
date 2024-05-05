// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'v_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VResponse _$VResponseFromJson(Map<String, dynamic> json) {
  return _VResponse.fromJson(json);
}

/// @nodoc
mixin _$VResponse {
  String? get n => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VResponseCopyWith<VResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VResponseCopyWith<$Res> {
  factory $VResponseCopyWith(VResponse value, $Res Function(VResponse) then) =
      _$VResponseCopyWithImpl<$Res, VResponse>;
  @useResult
  $Res call({String? n, String? id});
}

/// @nodoc
class _$VResponseCopyWithImpl<$Res, $Val extends VResponse>
    implements $VResponseCopyWith<$Res> {
  _$VResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? n = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      n: freezed == n
          ? _value.n
          : n // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VResponseImplCopyWith<$Res>
    implements $VResponseCopyWith<$Res> {
  factory _$$VResponseImplCopyWith(
          _$VResponseImpl value, $Res Function(_$VResponseImpl) then) =
      __$$VResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? n, String? id});
}

/// @nodoc
class __$$VResponseImplCopyWithImpl<$Res>
    extends _$VResponseCopyWithImpl<$Res, _$VResponseImpl>
    implements _$$VResponseImplCopyWith<$Res> {
  __$$VResponseImplCopyWithImpl(
      _$VResponseImpl _value, $Res Function(_$VResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? n = freezed,
    Object? id = freezed,
  }) {
    return _then(_$VResponseImpl(
      n: freezed == n
          ? _value.n
          : n // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VResponseImpl extends _VResponse {
  _$VResponseImpl({this.n, this.id}) : super._();

  factory _$VResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$VResponseImplFromJson(json);

  @override
  final String? n;
  @override
  final String? id;

  @override
  String toString() {
    return 'VResponse(n: $n, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VResponseImpl &&
            (identical(other.n, n) || other.n == n) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, n, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VResponseImplCopyWith<_$VResponseImpl> get copyWith =>
      __$$VResponseImplCopyWithImpl<_$VResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VResponseImplToJson(
      this,
    );
  }
}

abstract class _VResponse extends VResponse {
  factory _VResponse({final String? n, final String? id}) = _$VResponseImpl;
  _VResponse._() : super._();

  factory _VResponse.fromJson(Map<String, dynamic> json) =
      _$VResponseImpl.fromJson;

  @override
  String? get n;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$VResponseImplCopyWith<_$VResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
