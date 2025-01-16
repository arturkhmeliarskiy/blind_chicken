// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basket_category_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BasketCategoryResponse _$BasketCategoryResponseFromJson(
    Map<String, dynamic> json) {
  return _BasketCategoryResponse.fromJson(json);
}

/// @nodoc
mixin _$BasketCategoryResponse {
  String? get id => throw _privateConstructorUsedError;
  String? get n => throw _privateConstructorUsedError;
  @JsonKey(name: 'ch_n')
  String? get chN => throw _privateConstructorUsedError;

  /// Serializes this BasketCategoryResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BasketCategoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BasketCategoryResponseCopyWith<BasketCategoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasketCategoryResponseCopyWith<$Res> {
  factory $BasketCategoryResponseCopyWith(BasketCategoryResponse value,
          $Res Function(BasketCategoryResponse) then) =
      _$BasketCategoryResponseCopyWithImpl<$Res, BasketCategoryResponse>;
  @useResult
  $Res call({String? id, String? n, @JsonKey(name: 'ch_n') String? chN});
}

/// @nodoc
class _$BasketCategoryResponseCopyWithImpl<$Res,
        $Val extends BasketCategoryResponse>
    implements $BasketCategoryResponseCopyWith<$Res> {
  _$BasketCategoryResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BasketCategoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? n = freezed,
    Object? chN = freezed,
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
      chN: freezed == chN
          ? _value.chN
          : chN // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BasketCategoryResponseImplCopyWith<$Res>
    implements $BasketCategoryResponseCopyWith<$Res> {
  factory _$$BasketCategoryResponseImplCopyWith(
          _$BasketCategoryResponseImpl value,
          $Res Function(_$BasketCategoryResponseImpl) then) =
      __$$BasketCategoryResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? n, @JsonKey(name: 'ch_n') String? chN});
}

/// @nodoc
class __$$BasketCategoryResponseImplCopyWithImpl<$Res>
    extends _$BasketCategoryResponseCopyWithImpl<$Res,
        _$BasketCategoryResponseImpl>
    implements _$$BasketCategoryResponseImplCopyWith<$Res> {
  __$$BasketCategoryResponseImplCopyWithImpl(
      _$BasketCategoryResponseImpl _value,
      $Res Function(_$BasketCategoryResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of BasketCategoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? n = freezed,
    Object? chN = freezed,
  }) {
    return _then(_$BasketCategoryResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      n: freezed == n
          ? _value.n
          : n // ignore: cast_nullable_to_non_nullable
              as String?,
      chN: freezed == chN
          ? _value.chN
          : chN // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BasketCategoryResponseImpl extends _BasketCategoryResponse {
  _$BasketCategoryResponseImpl(
      {this.id, this.n, @JsonKey(name: 'ch_n') this.chN})
      : super._();

  factory _$BasketCategoryResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BasketCategoryResponseImplFromJson(json);

  @override
  final String? id;
  @override
  final String? n;
  @override
  @JsonKey(name: 'ch_n')
  final String? chN;

  @override
  String toString() {
    return 'BasketCategoryResponse(id: $id, n: $n, chN: $chN)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasketCategoryResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.n, n) || other.n == n) &&
            (identical(other.chN, chN) || other.chN == chN));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, n, chN);

  /// Create a copy of BasketCategoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BasketCategoryResponseImplCopyWith<_$BasketCategoryResponseImpl>
      get copyWith => __$$BasketCategoryResponseImplCopyWithImpl<
          _$BasketCategoryResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BasketCategoryResponseImplToJson(
      this,
    );
  }
}

abstract class _BasketCategoryResponse extends BasketCategoryResponse {
  factory _BasketCategoryResponse(
      {final String? id,
      final String? n,
      @JsonKey(name: 'ch_n') final String? chN}) = _$BasketCategoryResponseImpl;
  _BasketCategoryResponse._() : super._();

  factory _BasketCategoryResponse.fromJson(Map<String, dynamic> json) =
      _$BasketCategoryResponseImpl.fromJson;

  @override
  String? get id;
  @override
  String? get n;
  @override
  @JsonKey(name: 'ch_n')
  String? get chN;

  /// Create a copy of BasketCategoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BasketCategoryResponseImplCopyWith<_$BasketCategoryResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
