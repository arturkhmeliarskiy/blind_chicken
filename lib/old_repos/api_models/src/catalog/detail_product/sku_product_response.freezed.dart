// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sku_product_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SkuProductResponse _$SkuProductResponseFromJson(Map<String, dynamic> json) {
  return _SkuProductResponse.fromJson(json);
}

/// @nodoc
mixin _$SkuProductResponse {
  String? get id => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SkuProductResponseCopyWith<SkuProductResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SkuProductResponseCopyWith<$Res> {
  factory $SkuProductResponseCopyWith(
          SkuProductResponse value, $Res Function(SkuProductResponse) then) =
      _$SkuProductResponseCopyWithImpl<$Res, SkuProductResponse>;
  @useResult
  $Res call({String? id, String? value});
}

/// @nodoc
class _$SkuProductResponseCopyWithImpl<$Res, $Val extends SkuProductResponse>
    implements $SkuProductResponseCopyWith<$Res> {
  _$SkuProductResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SkuProductResponseImplCopyWith<$Res>
    implements $SkuProductResponseCopyWith<$Res> {
  factory _$$SkuProductResponseImplCopyWith(_$SkuProductResponseImpl value,
          $Res Function(_$SkuProductResponseImpl) then) =
      __$$SkuProductResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? value});
}

/// @nodoc
class __$$SkuProductResponseImplCopyWithImpl<$Res>
    extends _$SkuProductResponseCopyWithImpl<$Res, _$SkuProductResponseImpl>
    implements _$$SkuProductResponseImplCopyWith<$Res> {
  __$$SkuProductResponseImplCopyWithImpl(_$SkuProductResponseImpl _value,
      $Res Function(_$SkuProductResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? value = freezed,
  }) {
    return _then(_$SkuProductResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SkuProductResponseImpl extends _SkuProductResponse {
  _$SkuProductResponseImpl({this.id, this.value}) : super._();

  factory _$SkuProductResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SkuProductResponseImplFromJson(json);

  @override
  final String? id;
  @override
  final String? value;

  @override
  String toString() {
    return 'SkuProductResponse(id: $id, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SkuProductResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SkuProductResponseImplCopyWith<_$SkuProductResponseImpl> get copyWith =>
      __$$SkuProductResponseImplCopyWithImpl<_$SkuProductResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SkuProductResponseImplToJson(
      this,
    );
  }
}

abstract class _SkuProductResponse extends SkuProductResponse {
  factory _SkuProductResponse({final String? id, final String? value}) =
      _$SkuProductResponseImpl;
  _SkuProductResponse._() : super._();

  factory _SkuProductResponse.fromJson(Map<String, dynamic> json) =
      _$SkuProductResponseImpl.fromJson;

  @override
  String? get id;
  @override
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$SkuProductResponseImplCopyWith<_$SkuProductResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
