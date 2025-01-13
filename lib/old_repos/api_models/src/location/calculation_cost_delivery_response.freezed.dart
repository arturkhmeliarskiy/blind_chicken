// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calculation_cost_delivery_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CalculationCostDeliveryRsponse _$CalculationCostDeliveryRsponseFromJson(
    Map<String, dynamic> json) {
  return _CalculationCostDeliveryRsponse.fromJson(json);
}

/// @nodoc
mixin _$CalculationCostDeliveryRsponse {
  String? get r => throw _privateConstructorUsedError;
  String? get e => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CalculationCostDeliveryRsponseCopyWith<CalculationCostDeliveryRsponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalculationCostDeliveryRsponseCopyWith<$Res> {
  factory $CalculationCostDeliveryRsponseCopyWith(
          CalculationCostDeliveryRsponse value,
          $Res Function(CalculationCostDeliveryRsponse) then) =
      _$CalculationCostDeliveryRsponseCopyWithImpl<$Res,
          CalculationCostDeliveryRsponse>;
  @useResult
  $Res call({String? r, String? e, String? errorMessage, int? price});
}

/// @nodoc
class _$CalculationCostDeliveryRsponseCopyWithImpl<$Res,
        $Val extends CalculationCostDeliveryRsponse>
    implements $CalculationCostDeliveryRsponseCopyWith<$Res> {
  _$CalculationCostDeliveryRsponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = freezed,
    Object? e = freezed,
    Object? errorMessage = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      r: freezed == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String?,
      e: freezed == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CalculationCostDeliveryRsponseImplCopyWith<$Res>
    implements $CalculationCostDeliveryRsponseCopyWith<$Res> {
  factory _$$CalculationCostDeliveryRsponseImplCopyWith(
          _$CalculationCostDeliveryRsponseImpl value,
          $Res Function(_$CalculationCostDeliveryRsponseImpl) then) =
      __$$CalculationCostDeliveryRsponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? r, String? e, String? errorMessage, int? price});
}

/// @nodoc
class __$$CalculationCostDeliveryRsponseImplCopyWithImpl<$Res>
    extends _$CalculationCostDeliveryRsponseCopyWithImpl<$Res,
        _$CalculationCostDeliveryRsponseImpl>
    implements _$$CalculationCostDeliveryRsponseImplCopyWith<$Res> {
  __$$CalculationCostDeliveryRsponseImplCopyWithImpl(
      _$CalculationCostDeliveryRsponseImpl _value,
      $Res Function(_$CalculationCostDeliveryRsponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = freezed,
    Object? e = freezed,
    Object? errorMessage = freezed,
    Object? price = freezed,
  }) {
    return _then(_$CalculationCostDeliveryRsponseImpl(
      r: freezed == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String?,
      e: freezed == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CalculationCostDeliveryRsponseImpl
    extends _CalculationCostDeliveryRsponse {
  _$CalculationCostDeliveryRsponseImpl(
      {this.r, this.e, this.errorMessage, this.price})
      : super._();

  factory _$CalculationCostDeliveryRsponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CalculationCostDeliveryRsponseImplFromJson(json);

  @override
  final String? r;
  @override
  final String? e;
  @override
  final String? errorMessage;
  @override
  final int? price;

  @override
  String toString() {
    return 'CalculationCostDeliveryRsponse(r: $r, e: $e, errorMessage: $errorMessage, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalculationCostDeliveryRsponseImpl &&
            (identical(other.r, r) || other.r == r) &&
            (identical(other.e, e) || other.e == e) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, r, e, errorMessage, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CalculationCostDeliveryRsponseImplCopyWith<
          _$CalculationCostDeliveryRsponseImpl>
      get copyWith => __$$CalculationCostDeliveryRsponseImplCopyWithImpl<
          _$CalculationCostDeliveryRsponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CalculationCostDeliveryRsponseImplToJson(
      this,
    );
  }
}

abstract class _CalculationCostDeliveryRsponse
    extends CalculationCostDeliveryRsponse {
  factory _CalculationCostDeliveryRsponse(
      {final String? r,
      final String? e,
      final String? errorMessage,
      final int? price}) = _$CalculationCostDeliveryRsponseImpl;
  _CalculationCostDeliveryRsponse._() : super._();

  factory _CalculationCostDeliveryRsponse.fromJson(Map<String, dynamic> json) =
      _$CalculationCostDeliveryRsponseImpl.fromJson;

  @override
  String? get r;
  @override
  String? get e;
  @override
  String? get errorMessage;
  @override
  int? get price;
  @override
  @JsonKey(ignore: true)
  _$$CalculationCostDeliveryRsponseImplCopyWith<
          _$CalculationCostDeliveryRsponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
