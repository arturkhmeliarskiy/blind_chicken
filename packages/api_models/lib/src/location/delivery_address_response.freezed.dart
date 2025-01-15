// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_address_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeliveryAddressRsponse _$DeliveryAddressRsponseFromJson(
    Map<String, dynamic> json) {
  return _DeliveryAddressRsponse.fromJson(json);
}

/// @nodoc
mixin _$DeliveryAddressRsponse {
  String? get id => throw _privateConstructorUsedError;
  String? get addr => throw _privateConstructorUsedError;
  String? get zip => throw _privateConstructorUsedError;
  @JsonKey(name: 'city_id')
  String? get cityId => throw _privateConstructorUsedError;

  /// Serializes this DeliveryAddressRsponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeliveryAddressRsponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeliveryAddressRsponseCopyWith<DeliveryAddressRsponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryAddressRsponseCopyWith<$Res> {
  factory $DeliveryAddressRsponseCopyWith(DeliveryAddressRsponse value,
          $Res Function(DeliveryAddressRsponse) then) =
      _$DeliveryAddressRsponseCopyWithImpl<$Res, DeliveryAddressRsponse>;
  @useResult
  $Res call(
      {String? id,
      String? addr,
      String? zip,
      @JsonKey(name: 'city_id') String? cityId});
}

/// @nodoc
class _$DeliveryAddressRsponseCopyWithImpl<$Res,
        $Val extends DeliveryAddressRsponse>
    implements $DeliveryAddressRsponseCopyWith<$Res> {
  _$DeliveryAddressRsponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeliveryAddressRsponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? addr = freezed,
    Object? zip = freezed,
    Object? cityId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      addr: freezed == addr
          ? _value.addr
          : addr // ignore: cast_nullable_to_non_nullable
              as String?,
      zip: freezed == zip
          ? _value.zip
          : zip // ignore: cast_nullable_to_non_nullable
              as String?,
      cityId: freezed == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeliveryAddressRsponseImplCopyWith<$Res>
    implements $DeliveryAddressRsponseCopyWith<$Res> {
  factory _$$DeliveryAddressRsponseImplCopyWith(
          _$DeliveryAddressRsponseImpl value,
          $Res Function(_$DeliveryAddressRsponseImpl) then) =
      __$$DeliveryAddressRsponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? addr,
      String? zip,
      @JsonKey(name: 'city_id') String? cityId});
}

/// @nodoc
class __$$DeliveryAddressRsponseImplCopyWithImpl<$Res>
    extends _$DeliveryAddressRsponseCopyWithImpl<$Res,
        _$DeliveryAddressRsponseImpl>
    implements _$$DeliveryAddressRsponseImplCopyWith<$Res> {
  __$$DeliveryAddressRsponseImplCopyWithImpl(
      _$DeliveryAddressRsponseImpl _value,
      $Res Function(_$DeliveryAddressRsponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeliveryAddressRsponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? addr = freezed,
    Object? zip = freezed,
    Object? cityId = freezed,
  }) {
    return _then(_$DeliveryAddressRsponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      addr: freezed == addr
          ? _value.addr
          : addr // ignore: cast_nullable_to_non_nullable
              as String?,
      zip: freezed == zip
          ? _value.zip
          : zip // ignore: cast_nullable_to_non_nullable
              as String?,
      cityId: freezed == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeliveryAddressRsponseImpl extends _DeliveryAddressRsponse {
  _$DeliveryAddressRsponseImpl(
      {this.id, this.addr, this.zip, @JsonKey(name: 'city_id') this.cityId})
      : super._();

  factory _$DeliveryAddressRsponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeliveryAddressRsponseImplFromJson(json);

  @override
  final String? id;
  @override
  final String? addr;
  @override
  final String? zip;
  @override
  @JsonKey(name: 'city_id')
  final String? cityId;

  @override
  String toString() {
    return 'DeliveryAddressRsponse(id: $id, addr: $addr, zip: $zip, cityId: $cityId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryAddressRsponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.addr, addr) || other.addr == addr) &&
            (identical(other.zip, zip) || other.zip == zip) &&
            (identical(other.cityId, cityId) || other.cityId == cityId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, addr, zip, cityId);

  /// Create a copy of DeliveryAddressRsponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryAddressRsponseImplCopyWith<_$DeliveryAddressRsponseImpl>
      get copyWith => __$$DeliveryAddressRsponseImplCopyWithImpl<
          _$DeliveryAddressRsponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeliveryAddressRsponseImplToJson(
      this,
    );
  }
}

abstract class _DeliveryAddressRsponse extends DeliveryAddressRsponse {
  factory _DeliveryAddressRsponse(
          {final String? id,
          final String? addr,
          final String? zip,
          @JsonKey(name: 'city_id') final String? cityId}) =
      _$DeliveryAddressRsponseImpl;
  _DeliveryAddressRsponse._() : super._();

  factory _DeliveryAddressRsponse.fromJson(Map<String, dynamic> json) =
      _$DeliveryAddressRsponseImpl.fromJson;

  @override
  String? get id;
  @override
  String? get addr;
  @override
  String? get zip;
  @override
  @JsonKey(name: 'city_id')
  String? get cityId;

  /// Create a copy of DeliveryAddressRsponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeliveryAddressRsponseImplCopyWith<_$DeliveryAddressRsponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
