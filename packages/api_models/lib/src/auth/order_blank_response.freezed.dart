// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_blank_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderBlankResponse _$OrderBlankResponseFromJson(Map<String, dynamic> json) {
  return _OrderBlankResponse.fromJson(json);
}

/// @nodoc
mixin _$OrderBlankResponse {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'num')
  String? get number => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderBlankResponseCopyWith<OrderBlankResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderBlankResponseCopyWith<$Res> {
  factory $OrderBlankResponseCopyWith(
          OrderBlankResponse value, $Res Function(OrderBlankResponse) then) =
      _$OrderBlankResponseCopyWithImpl<$Res, OrderBlankResponse>;
  @useResult
  $Res call({String? id, @JsonKey(name: 'num') String? number, String? date});
}

/// @nodoc
class _$OrderBlankResponseCopyWithImpl<$Res, $Val extends OrderBlankResponse>
    implements $OrderBlankResponseCopyWith<$Res> {
  _$OrderBlankResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? number = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderBlankResponseImplCopyWith<$Res>
    implements $OrderBlankResponseCopyWith<$Res> {
  factory _$$OrderBlankResponseImplCopyWith(_$OrderBlankResponseImpl value,
          $Res Function(_$OrderBlankResponseImpl) then) =
      __$$OrderBlankResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, @JsonKey(name: 'num') String? number, String? date});
}

/// @nodoc
class __$$OrderBlankResponseImplCopyWithImpl<$Res>
    extends _$OrderBlankResponseCopyWithImpl<$Res, _$OrderBlankResponseImpl>
    implements _$$OrderBlankResponseImplCopyWith<$Res> {
  __$$OrderBlankResponseImplCopyWithImpl(_$OrderBlankResponseImpl _value,
      $Res Function(_$OrderBlankResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? number = freezed,
    Object? date = freezed,
  }) {
    return _then(_$OrderBlankResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderBlankResponseImpl extends _OrderBlankResponse {
  _$OrderBlankResponseImpl(
      {this.id, @JsonKey(name: 'num') this.number, this.date})
      : super._();

  factory _$OrderBlankResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderBlankResponseImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'num')
  final String? number;
  @override
  final String? date;

  @override
  String toString() {
    return 'OrderBlankResponse(id: $id, number: $number, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderBlankResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, number, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderBlankResponseImplCopyWith<_$OrderBlankResponseImpl> get copyWith =>
      __$$OrderBlankResponseImplCopyWithImpl<_$OrderBlankResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderBlankResponseImplToJson(
      this,
    );
  }
}

abstract class _OrderBlankResponse extends OrderBlankResponse {
  factory _OrderBlankResponse(
      {final String? id,
      @JsonKey(name: 'num') final String? number,
      final String? date}) = _$OrderBlankResponseImpl;
  _OrderBlankResponse._() : super._();

  factory _OrderBlankResponse.fromJson(Map<String, dynamic> json) =
      _$OrderBlankResponseImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'num')
  String? get number;
  @override
  String? get date;
  @override
  @JsonKey(ignore: true)
  _$$OrderBlankResponseImplCopyWith<_$OrderBlankResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
