// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'section_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SectionItemResponse _$SectionItemResponseFromJson(Map<String, dynamic> json) {
  return _SectionItemResponse.fromJson(json);
}

/// @nodoc
mixin _$SectionItemResponse {
  String? get name => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SectionItemResponseCopyWith<SectionItemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectionItemResponseCopyWith<$Res> {
  factory $SectionItemResponseCopyWith(
          SectionItemResponse value, $Res Function(SectionItemResponse) then) =
      _$SectionItemResponseCopyWithImpl<$Res, SectionItemResponse>;
  @useResult
  $Res call({String? name, String? value});
}

/// @nodoc
class _$SectionItemResponseCopyWithImpl<$Res, $Val extends SectionItemResponse>
    implements $SectionItemResponseCopyWith<$Res> {
  _$SectionItemResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SectionItemResponseImplCopyWith<$Res>
    implements $SectionItemResponseCopyWith<$Res> {
  factory _$$SectionItemResponseImplCopyWith(_$SectionItemResponseImpl value,
          $Res Function(_$SectionItemResponseImpl) then) =
      __$$SectionItemResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? value});
}

/// @nodoc
class __$$SectionItemResponseImplCopyWithImpl<$Res>
    extends _$SectionItemResponseCopyWithImpl<$Res, _$SectionItemResponseImpl>
    implements _$$SectionItemResponseImplCopyWith<$Res> {
  __$$SectionItemResponseImplCopyWithImpl(_$SectionItemResponseImpl _value,
      $Res Function(_$SectionItemResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? value = freezed,
  }) {
    return _then(_$SectionItemResponseImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
class _$SectionItemResponseImpl extends _SectionItemResponse {
  _$SectionItemResponseImpl({this.name, this.value}) : super._();

  factory _$SectionItemResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SectionItemResponseImplFromJson(json);

  @override
  final String? name;
  @override
  final String? value;

  @override
  String toString() {
    return 'SectionItemResponse(name: $name, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SectionItemResponseImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SectionItemResponseImplCopyWith<_$SectionItemResponseImpl> get copyWith =>
      __$$SectionItemResponseImplCopyWithImpl<_$SectionItemResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SectionItemResponseImplToJson(
      this,
    );
  }
}

abstract class _SectionItemResponse extends SectionItemResponse {
  factory _SectionItemResponse({final String? name, final String? value}) =
      _$SectionItemResponseImpl;
  _SectionItemResponse._() : super._();

  factory _SectionItemResponse.fromJson(Map<String, dynamic> json) =
      _$SectionItemResponseImpl.fromJson;

  @override
  String? get name;
  @override
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$SectionItemResponseImplCopyWith<_$SectionItemResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
