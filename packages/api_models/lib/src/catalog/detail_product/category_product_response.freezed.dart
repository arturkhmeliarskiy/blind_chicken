// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_product_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoryProductResponse _$CategoryProductResponseFromJson(
    Map<String, dynamic> json) {
  return _CategoryProductResponse.fromJson(json);
}

/// @nodoc
mixin _$CategoryProductResponse {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'n')
  String? get n => throw _privateConstructorUsedError;
  @JsonKey(name: 'ch_n')
  String? get u => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryProductResponseCopyWith<CategoryProductResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryProductResponseCopyWith<$Res> {
  factory $CategoryProductResponseCopyWith(CategoryProductResponse value,
          $Res Function(CategoryProductResponse) then) =
      _$CategoryProductResponseCopyWithImpl<$Res, CategoryProductResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'n') String? n,
      @JsonKey(name: 'ch_n') String? u});
}

/// @nodoc
class _$CategoryProductResponseCopyWithImpl<$Res,
        $Val extends CategoryProductResponse>
    implements $CategoryProductResponseCopyWith<$Res> {
  _$CategoryProductResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? n = freezed,
    Object? u = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$CategoryProductResponseImplCopyWith<$Res>
    implements $CategoryProductResponseCopyWith<$Res> {
  factory _$$CategoryProductResponseImplCopyWith(
          _$CategoryProductResponseImpl value,
          $Res Function(_$CategoryProductResponseImpl) then) =
      __$$CategoryProductResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'n') String? n,
      @JsonKey(name: 'ch_n') String? u});
}

/// @nodoc
class __$$CategoryProductResponseImplCopyWithImpl<$Res>
    extends _$CategoryProductResponseCopyWithImpl<$Res,
        _$CategoryProductResponseImpl>
    implements _$$CategoryProductResponseImplCopyWith<$Res> {
  __$$CategoryProductResponseImplCopyWithImpl(
      _$CategoryProductResponseImpl _value,
      $Res Function(_$CategoryProductResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? n = freezed,
    Object? u = freezed,
  }) {
    return _then(_$CategoryProductResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$CategoryProductResponseImpl extends _CategoryProductResponse {
  _$CategoryProductResponseImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'n') this.n,
      @JsonKey(name: 'ch_n') this.u})
      : super._();

  factory _$CategoryProductResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryProductResponseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'n')
  final String? n;
  @override
  @JsonKey(name: 'ch_n')
  final String? u;

  @override
  String toString() {
    return 'CategoryProductResponse(id: $id, n: $n, u: $u)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryProductResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.n, n) || other.n == n) &&
            (identical(other.u, u) || other.u == u));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, n, u);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryProductResponseImplCopyWith<_$CategoryProductResponseImpl>
      get copyWith => __$$CategoryProductResponseImplCopyWithImpl<
          _$CategoryProductResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryProductResponseImplToJson(
      this,
    );
  }
}

abstract class _CategoryProductResponse extends CategoryProductResponse {
  factory _CategoryProductResponse(
      {@JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'n') final String? n,
      @JsonKey(name: 'ch_n') final String? u}) = _$CategoryProductResponseImpl;
  _CategoryProductResponse._() : super._();

  factory _CategoryProductResponse.fromJson(Map<String, dynamic> json) =
      _$CategoryProductResponseImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'n')
  String? get n;
  @override
  @JsonKey(name: 'ch_n')
  String? get u;
  @override
  @JsonKey(ignore: true)
  _$$CategoryProductResponseImplCopyWith<_$CategoryProductResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
