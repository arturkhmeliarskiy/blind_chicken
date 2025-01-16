// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderItemResponse _$OrderItemResponseFromJson(Map<String, dynamic> json) {
  return _OrderItemResponse.fromJson(json);
}

/// @nodoc
mixin _$OrderItemResponse {
  String? get id => throw _privateConstructorUsedError;
  int? get sum => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;

  /// Serializes this OrderItemResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderItemResponseCopyWith<OrderItemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderItemResponseCopyWith<$Res> {
  factory $OrderItemResponseCopyWith(
          OrderItemResponse value, $Res Function(OrderItemResponse) then) =
      _$OrderItemResponseCopyWithImpl<$Res, OrderItemResponse>;
  @useResult
  $Res call({String? id, int? sum, String? status, String? date});
}

/// @nodoc
class _$OrderItemResponseCopyWithImpl<$Res, $Val extends OrderItemResponse>
    implements $OrderItemResponseCopyWith<$Res> {
  _$OrderItemResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sum = freezed,
    Object? status = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      sum: freezed == sum
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderItemResponseImplCopyWith<$Res>
    implements $OrderItemResponseCopyWith<$Res> {
  factory _$$OrderItemResponseImplCopyWith(_$OrderItemResponseImpl value,
          $Res Function(_$OrderItemResponseImpl) then) =
      __$$OrderItemResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, int? sum, String? status, String? date});
}

/// @nodoc
class __$$OrderItemResponseImplCopyWithImpl<$Res>
    extends _$OrderItemResponseCopyWithImpl<$Res, _$OrderItemResponseImpl>
    implements _$$OrderItemResponseImplCopyWith<$Res> {
  __$$OrderItemResponseImplCopyWithImpl(_$OrderItemResponseImpl _value,
      $Res Function(_$OrderItemResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sum = freezed,
    Object? status = freezed,
    Object? date = freezed,
  }) {
    return _then(_$OrderItemResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      sum: freezed == sum
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
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
class _$OrderItemResponseImpl extends _OrderItemResponse {
  _$OrderItemResponseImpl({this.id, this.sum, this.status, this.date})
      : super._();

  factory _$OrderItemResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderItemResponseImplFromJson(json);

  @override
  final String? id;
  @override
  final int? sum;
  @override
  final String? status;
  @override
  final String? date;

  @override
  String toString() {
    return 'OrderItemResponse(id: $id, sum: $sum, status: $status, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderItemResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sum, sum) || other.sum == sum) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, sum, status, date);

  /// Create a copy of OrderItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderItemResponseImplCopyWith<_$OrderItemResponseImpl> get copyWith =>
      __$$OrderItemResponseImplCopyWithImpl<_$OrderItemResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderItemResponseImplToJson(
      this,
    );
  }
}

abstract class _OrderItemResponse extends OrderItemResponse {
  factory _OrderItemResponse(
      {final String? id,
      final int? sum,
      final String? status,
      final String? date}) = _$OrderItemResponseImpl;
  _OrderItemResponse._() : super._();

  factory _OrderItemResponse.fromJson(Map<String, dynamic> json) =
      _$OrderItemResponseImpl.fromJson;

  @override
  String? get id;
  @override
  int? get sum;
  @override
  String? get status;
  @override
  String? get date;

  /// Create a copy of OrderItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderItemResponseImplCopyWith<_$OrderItemResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
