// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeliveryRsponse _$DeliveryRsponseFromJson(Map<String, dynamic> json) {
  return _DeliveryRsponse.fromJson(json);
}

/// @nodoc
mixin _$DeliveryRsponse {
  String? get r => throw _privateConstructorUsedError;
  String? get e => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_id')
  String? get deliveryId => throw _privateConstructorUsedError;
  DeliveryPickRsponse? get pick => throw _privateConstructorUsedError;
  List<DeliveryAddressRsponse>? get address =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryRsponseCopyWith<DeliveryRsponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryRsponseCopyWith<$Res> {
  factory $DeliveryRsponseCopyWith(
          DeliveryRsponse value, $Res Function(DeliveryRsponse) then) =
      _$DeliveryRsponseCopyWithImpl<$Res, DeliveryRsponse>;
  @useResult
  $Res call(
      {String? r,
      String? e,
      String? errorMessage,
      @JsonKey(name: 'delivery_id') String? deliveryId,
      DeliveryPickRsponse? pick,
      List<DeliveryAddressRsponse>? address});

  $DeliveryPickRsponseCopyWith<$Res>? get pick;
}

/// @nodoc
class _$DeliveryRsponseCopyWithImpl<$Res, $Val extends DeliveryRsponse>
    implements $DeliveryRsponseCopyWith<$Res> {
  _$DeliveryRsponseCopyWithImpl(this._value, this._then);

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
    Object? deliveryId = freezed,
    Object? pick = freezed,
    Object? address = freezed,
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
      deliveryId: freezed == deliveryId
          ? _value.deliveryId
          : deliveryId // ignore: cast_nullable_to_non_nullable
              as String?,
      pick: freezed == pick
          ? _value.pick
          : pick // ignore: cast_nullable_to_non_nullable
              as DeliveryPickRsponse?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as List<DeliveryAddressRsponse>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DeliveryPickRsponseCopyWith<$Res>? get pick {
    if (_value.pick == null) {
      return null;
    }

    return $DeliveryPickRsponseCopyWith<$Res>(_value.pick!, (value) {
      return _then(_value.copyWith(pick: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DeliveryRsponseImplCopyWith<$Res>
    implements $DeliveryRsponseCopyWith<$Res> {
  factory _$$DeliveryRsponseImplCopyWith(_$DeliveryRsponseImpl value,
          $Res Function(_$DeliveryRsponseImpl) then) =
      __$$DeliveryRsponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? r,
      String? e,
      String? errorMessage,
      @JsonKey(name: 'delivery_id') String? deliveryId,
      DeliveryPickRsponse? pick,
      List<DeliveryAddressRsponse>? address});

  @override
  $DeliveryPickRsponseCopyWith<$Res>? get pick;
}

/// @nodoc
class __$$DeliveryRsponseImplCopyWithImpl<$Res>
    extends _$DeliveryRsponseCopyWithImpl<$Res, _$DeliveryRsponseImpl>
    implements _$$DeliveryRsponseImplCopyWith<$Res> {
  __$$DeliveryRsponseImplCopyWithImpl(
      _$DeliveryRsponseImpl _value, $Res Function(_$DeliveryRsponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = freezed,
    Object? e = freezed,
    Object? errorMessage = freezed,
    Object? deliveryId = freezed,
    Object? pick = freezed,
    Object? address = freezed,
  }) {
    return _then(_$DeliveryRsponseImpl(
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
      deliveryId: freezed == deliveryId
          ? _value.deliveryId
          : deliveryId // ignore: cast_nullable_to_non_nullable
              as String?,
      pick: freezed == pick
          ? _value.pick
          : pick // ignore: cast_nullable_to_non_nullable
              as DeliveryPickRsponse?,
      address: freezed == address
          ? _value._address
          : address // ignore: cast_nullable_to_non_nullable
              as List<DeliveryAddressRsponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeliveryRsponseImpl extends _DeliveryRsponse {
  _$DeliveryRsponseImpl(
      {this.r,
      this.e,
      this.errorMessage,
      @JsonKey(name: 'delivery_id') this.deliveryId,
      this.pick,
      final List<DeliveryAddressRsponse>? address})
      : _address = address,
        super._();

  factory _$DeliveryRsponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeliveryRsponseImplFromJson(json);

  @override
  final String? r;
  @override
  final String? e;
  @override
  final String? errorMessage;
  @override
  @JsonKey(name: 'delivery_id')
  final String? deliveryId;
  @override
  final DeliveryPickRsponse? pick;
  final List<DeliveryAddressRsponse>? _address;
  @override
  List<DeliveryAddressRsponse>? get address {
    final value = _address;
    if (value == null) return null;
    if (_address is EqualUnmodifiableListView) return _address;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DeliveryRsponse(r: $r, e: $e, errorMessage: $errorMessage, deliveryId: $deliveryId, pick: $pick, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryRsponseImpl &&
            (identical(other.r, r) || other.r == r) &&
            (identical(other.e, e) || other.e == e) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.deliveryId, deliveryId) ||
                other.deliveryId == deliveryId) &&
            (identical(other.pick, pick) || other.pick == pick) &&
            const DeepCollectionEquality().equals(other._address, _address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, r, e, errorMessage, deliveryId,
      pick, const DeepCollectionEquality().hash(_address));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryRsponseImplCopyWith<_$DeliveryRsponseImpl> get copyWith =>
      __$$DeliveryRsponseImplCopyWithImpl<_$DeliveryRsponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeliveryRsponseImplToJson(
      this,
    );
  }
}

abstract class _DeliveryRsponse extends DeliveryRsponse {
  factory _DeliveryRsponse(
      {final String? r,
      final String? e,
      final String? errorMessage,
      @JsonKey(name: 'delivery_id') final String? deliveryId,
      final DeliveryPickRsponse? pick,
      final List<DeliveryAddressRsponse>? address}) = _$DeliveryRsponseImpl;
  _DeliveryRsponse._() : super._();

  factory _DeliveryRsponse.fromJson(Map<String, dynamic> json) =
      _$DeliveryRsponseImpl.fromJson;

  @override
  String? get r;
  @override
  String? get e;
  @override
  String? get errorMessage;
  @override
  @JsonKey(name: 'delivery_id')
  String? get deliveryId;
  @override
  DeliveryPickRsponse? get pick;
  @override
  List<DeliveryAddressRsponse>? get address;
  @override
  @JsonKey(ignore: true)
  _$$DeliveryRsponseImplCopyWith<_$DeliveryRsponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
