// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payments_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentsResponse _$PaymentsResponseFromJson(Map<String, dynamic> json) {
  return _PaymentsResponse.fromJson(json);
}

/// @nodoc
mixin _$PaymentsResponse {
  List<PaymentItemResponse>? get payments => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentsResponseCopyWith<PaymentsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentsResponseCopyWith<$Res> {
  factory $PaymentsResponseCopyWith(
          PaymentsResponse value, $Res Function(PaymentsResponse) then) =
      _$PaymentsResponseCopyWithImpl<$Res, PaymentsResponse>;
  @useResult
  $Res call({List<PaymentItemResponse>? payments, String? errorMessage});
}

/// @nodoc
class _$PaymentsResponseCopyWithImpl<$Res, $Val extends PaymentsResponse>
    implements $PaymentsResponseCopyWith<$Res> {
  _$PaymentsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payments = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      payments: freezed == payments
          ? _value.payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<PaymentItemResponse>?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentsResponseImplCopyWith<$Res>
    implements $PaymentsResponseCopyWith<$Res> {
  factory _$$PaymentsResponseImplCopyWith(_$PaymentsResponseImpl value,
          $Res Function(_$PaymentsResponseImpl) then) =
      __$$PaymentsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PaymentItemResponse>? payments, String? errorMessage});
}

/// @nodoc
class __$$PaymentsResponseImplCopyWithImpl<$Res>
    extends _$PaymentsResponseCopyWithImpl<$Res, _$PaymentsResponseImpl>
    implements _$$PaymentsResponseImplCopyWith<$Res> {
  __$$PaymentsResponseImplCopyWithImpl(_$PaymentsResponseImpl _value,
      $Res Function(_$PaymentsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payments = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$PaymentsResponseImpl(
      payments: freezed == payments
          ? _value._payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<PaymentItemResponse>?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentsResponseImpl extends _PaymentsResponse {
  _$PaymentsResponseImpl(
      {final List<PaymentItemResponse>? payments, this.errorMessage})
      : _payments = payments,
        super._();

  factory _$PaymentsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentsResponseImplFromJson(json);

  final List<PaymentItemResponse>? _payments;
  @override
  List<PaymentItemResponse>? get payments {
    final value = _payments;
    if (value == null) return null;
    if (_payments is EqualUnmodifiableListView) return _payments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'PaymentsResponse(payments: $payments, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentsResponseImpl &&
            const DeepCollectionEquality().equals(other._payments, _payments) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_payments), errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentsResponseImplCopyWith<_$PaymentsResponseImpl> get copyWith =>
      __$$PaymentsResponseImplCopyWithImpl<_$PaymentsResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentsResponseImplToJson(
      this,
    );
  }
}

abstract class _PaymentsResponse extends PaymentsResponse {
  factory _PaymentsResponse(
      {final List<PaymentItemResponse>? payments,
      final String? errorMessage}) = _$PaymentsResponseImpl;
  _PaymentsResponse._() : super._();

  factory _PaymentsResponse.fromJson(Map<String, dynamic> json) =
      _$PaymentsResponseImpl.fromJson;

  @override
  List<PaymentItemResponse>? get payments;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$PaymentsResponseImplCopyWith<_$PaymentsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
