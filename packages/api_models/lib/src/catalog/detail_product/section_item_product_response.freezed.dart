// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'section_item_product_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SectionItemProductResponse _$SectionItemProductResponseFromJson(
    Map<String, dynamic> json) {
  return _SectionItemProductResponse.fromJson(json);
}

/// @nodoc
mixin _$SectionItemProductResponse {
  String? get n => throw _privateConstructorUsedError;
  String? get u => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SectionItemProductResponseCopyWith<SectionItemProductResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectionItemProductResponseCopyWith<$Res> {
  factory $SectionItemProductResponseCopyWith(SectionItemProductResponse value,
          $Res Function(SectionItemProductResponse) then) =
      _$SectionItemProductResponseCopyWithImpl<$Res,
          SectionItemProductResponse>;
  @useResult
  $Res call({String? n, String? u});
}

/// @nodoc
class _$SectionItemProductResponseCopyWithImpl<$Res,
        $Val extends SectionItemProductResponse>
    implements $SectionItemProductResponseCopyWith<$Res> {
  _$SectionItemProductResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? n = freezed,
    Object? u = freezed,
  }) {
    return _then(_value.copyWith(
      n: freezed == n
          ? _value.n
          : n // ignore: cast_nullable_to_non_nullable
              as String?,
      u: freezed == u
          ? _value.u
          : u // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SectionItemProductResponseImplCopyWith<$Res>
    implements $SectionItemProductResponseCopyWith<$Res> {
  factory _$$SectionItemProductResponseImplCopyWith(
          _$SectionItemProductResponseImpl value,
          $Res Function(_$SectionItemProductResponseImpl) then) =
      __$$SectionItemProductResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? n, String? u});
}

/// @nodoc
class __$$SectionItemProductResponseImplCopyWithImpl<$Res>
    extends _$SectionItemProductResponseCopyWithImpl<$Res,
        _$SectionItemProductResponseImpl>
    implements _$$SectionItemProductResponseImplCopyWith<$Res> {
  __$$SectionItemProductResponseImplCopyWithImpl(
      _$SectionItemProductResponseImpl _value,
      $Res Function(_$SectionItemProductResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? n = freezed,
    Object? u = freezed,
  }) {
    return _then(_$SectionItemProductResponseImpl(
      n: freezed == n
          ? _value.n
          : n // ignore: cast_nullable_to_non_nullable
              as String?,
      u: freezed == u
          ? _value.u
          : u // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SectionItemProductResponseImpl extends _SectionItemProductResponse {
  _$SectionItemProductResponseImpl({this.n, this.u}) : super._();

  factory _$SectionItemProductResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SectionItemProductResponseImplFromJson(json);

  @override
  final String? n;
  @override
  final String? u;

  @override
  String toString() {
    return 'SectionItemProductResponse(n: $n, u: $u)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SectionItemProductResponseImpl &&
            (identical(other.n, n) || other.n == n) &&
            (identical(other.u, u) || other.u == u));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, n, u);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SectionItemProductResponseImplCopyWith<_$SectionItemProductResponseImpl>
      get copyWith => __$$SectionItemProductResponseImplCopyWithImpl<
          _$SectionItemProductResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SectionItemProductResponseImplToJson(
      this,
    );
  }
}

abstract class _SectionItemProductResponse extends SectionItemProductResponse {
  factory _SectionItemProductResponse({final String? n, final String? u}) =
      _$SectionItemProductResponseImpl;
  _SectionItemProductResponse._() : super._();

  factory _SectionItemProductResponse.fromJson(Map<String, dynamic> json) =
      _$SectionItemProductResponseImpl.fromJson;

  @override
  String? get n;
  @override
  String? get u;
  @override
  @JsonKey(ignore: true)
  _$$SectionItemProductResponseImplCopyWith<_$SectionItemProductResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
