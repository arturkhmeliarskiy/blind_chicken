// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentItemResponse _$PaymentItemResponseFromJson(Map<String, dynamic> json) {
  return _PaymentItemResponse.fromJson(json);
}

/// @nodoc
mixin _$PaymentItemResponse {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentItemResponseCopyWith<PaymentItemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentItemResponseCopyWith<$Res> {
  factory $PaymentItemResponseCopyWith(
          PaymentItemResponse value, $Res Function(PaymentItemResponse) then) =
      _$PaymentItemResponseCopyWithImpl<$Res, PaymentItemResponse>;
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class _$PaymentItemResponseCopyWithImpl<$Res, $Val extends PaymentItemResponse>
    implements $PaymentItemResponseCopyWith<$Res> {
  _$PaymentItemResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentItemResponseImplCopyWith<$Res>
    implements $PaymentItemResponseCopyWith<$Res> {
  factory _$$PaymentItemResponseImplCopyWith(_$PaymentItemResponseImpl value,
          $Res Function(_$PaymentItemResponseImpl) then) =
      __$$PaymentItemResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class __$$PaymentItemResponseImplCopyWithImpl<$Res>
    extends _$PaymentItemResponseCopyWithImpl<$Res, _$PaymentItemResponseImpl>
    implements _$$PaymentItemResponseImplCopyWith<$Res> {
  __$$PaymentItemResponseImplCopyWithImpl(_$PaymentItemResponseImpl _value,
      $Res Function(_$PaymentItemResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$PaymentItemResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentItemResponseImpl extends _PaymentItemResponse {
  _$PaymentItemResponseImpl({this.id, this.name}) : super._();

  factory _$PaymentItemResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentItemResponseImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'PaymentItemResponse(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentItemResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentItemResponseImplCopyWith<_$PaymentItemResponseImpl> get copyWith =>
      __$$PaymentItemResponseImplCopyWithImpl<_$PaymentItemResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentItemResponseImplToJson(
      this,
    );
  }
}

abstract class _PaymentItemResponse extends PaymentItemResponse {
  factory _PaymentItemResponse({final String? id, final String? name}) =
      _$PaymentItemResponseImpl;
  _PaymentItemResponse._() : super._();

  factory _PaymentItemResponse.fromJson(Map<String, dynamic> json) =
      _$PaymentItemResponseImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$PaymentItemResponseImplCopyWith<_$PaymentItemResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
