// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FilterItemResponse _$FilterItemResponseFromJson(Map<String, dynamic> json) {
  return _FilterItemResponse.fromJson(json);
}

/// @nodoc
mixin _$FilterItemResponse {
  int? get id => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilterItemResponseCopyWith<FilterItemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterItemResponseCopyWith<$Res> {
  factory $FilterItemResponseCopyWith(
          FilterItemResponse value, $Res Function(FilterItemResponse) then) =
      _$FilterItemResponseCopyWithImpl<$Res, FilterItemResponse>;
  @useResult
  $Res call({int? id, String? value});
}

/// @nodoc
class _$FilterItemResponseCopyWithImpl<$Res, $Val extends FilterItemResponse>
    implements $FilterItemResponseCopyWith<$Res> {
  _$FilterItemResponseCopyWithImpl(this._value, this._then);

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
              as int?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilterItemResponseImplCopyWith<$Res>
    implements $FilterItemResponseCopyWith<$Res> {
  factory _$$FilterItemResponseImplCopyWith(_$FilterItemResponseImpl value,
          $Res Function(_$FilterItemResponseImpl) then) =
      __$$FilterItemResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? value});
}

/// @nodoc
class __$$FilterItemResponseImplCopyWithImpl<$Res>
    extends _$FilterItemResponseCopyWithImpl<$Res, _$FilterItemResponseImpl>
    implements _$$FilterItemResponseImplCopyWith<$Res> {
  __$$FilterItemResponseImplCopyWithImpl(_$FilterItemResponseImpl _value,
      $Res Function(_$FilterItemResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? value = freezed,
  }) {
    return _then(_$FilterItemResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FilterItemResponseImpl extends _FilterItemResponse {
  _$FilterItemResponseImpl({this.id, this.value}) : super._();

  factory _$FilterItemResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FilterItemResponseImplFromJson(json);

  @override
  final int? id;
  @override
  final String? value;

  @override
  String toString() {
    return 'FilterItemResponse(id: $id, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterItemResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterItemResponseImplCopyWith<_$FilterItemResponseImpl> get copyWith =>
      __$$FilterItemResponseImplCopyWithImpl<_$FilterItemResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FilterItemResponseImplToJson(
      this,
    );
  }
}

abstract class _FilterItemResponse extends FilterItemResponse {
  factory _FilterItemResponse({final int? id, final String? value}) =
      _$FilterItemResponseImpl;
  _FilterItemResponse._() : super._();

  factory _FilterItemResponse.fromJson(Map<String, dynamic> json) =
      _$FilterItemResponseImpl.fromJson;

  @override
  int? get id;
  @override
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$FilterItemResponseImplCopyWith<_$FilterItemResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
