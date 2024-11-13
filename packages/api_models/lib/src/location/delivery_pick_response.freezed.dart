// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_pick_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeliveryPickRsponse _$DeliveryPickRsponseFromJson(Map<String, dynamic> json) {
  return _DeliveryPickRsponse.fromJson(json);
}

/// @nodoc
mixin _$DeliveryPickRsponse {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get shedule => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryPickRsponseCopyWith<DeliveryPickRsponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryPickRsponseCopyWith<$Res> {
  factory $DeliveryPickRsponseCopyWith(
          DeliveryPickRsponse value, $Res Function(DeliveryPickRsponse) then) =
      _$DeliveryPickRsponseCopyWithImpl<$Res, DeliveryPickRsponse>;
  @useResult
  $Res call({String? id, String? name, String? shedule});
}

/// @nodoc
class _$DeliveryPickRsponseCopyWithImpl<$Res, $Val extends DeliveryPickRsponse>
    implements $DeliveryPickRsponseCopyWith<$Res> {
  _$DeliveryPickRsponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? shedule = freezed,
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
      shedule: freezed == shedule
          ? _value.shedule
          : shedule // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeliveryPickRsponseImplCopyWith<$Res>
    implements $DeliveryPickRsponseCopyWith<$Res> {
  factory _$$DeliveryPickRsponseImplCopyWith(_$DeliveryPickRsponseImpl value,
          $Res Function(_$DeliveryPickRsponseImpl) then) =
      __$$DeliveryPickRsponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name, String? shedule});
}

/// @nodoc
class __$$DeliveryPickRsponseImplCopyWithImpl<$Res>
    extends _$DeliveryPickRsponseCopyWithImpl<$Res, _$DeliveryPickRsponseImpl>
    implements _$$DeliveryPickRsponseImplCopyWith<$Res> {
  __$$DeliveryPickRsponseImplCopyWithImpl(_$DeliveryPickRsponseImpl _value,
      $Res Function(_$DeliveryPickRsponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? shedule = freezed,
  }) {
    return _then(_$DeliveryPickRsponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      shedule: freezed == shedule
          ? _value.shedule
          : shedule // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeliveryPickRsponseImpl extends _DeliveryPickRsponse {
  _$DeliveryPickRsponseImpl({this.id, this.name, this.shedule}) : super._();

  factory _$DeliveryPickRsponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeliveryPickRsponseImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? shedule;

  @override
  String toString() {
    return 'DeliveryPickRsponse(id: $id, name: $name, shedule: $shedule)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryPickRsponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.shedule, shedule) || other.shedule == shedule));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, shedule);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryPickRsponseImplCopyWith<_$DeliveryPickRsponseImpl> get copyWith =>
      __$$DeliveryPickRsponseImplCopyWithImpl<_$DeliveryPickRsponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeliveryPickRsponseImplToJson(
      this,
    );
  }
}

abstract class _DeliveryPickRsponse extends DeliveryPickRsponse {
  factory _DeliveryPickRsponse(
      {final String? id,
      final String? name,
      final String? shedule}) = _$DeliveryPickRsponseImpl;
  _DeliveryPickRsponse._() : super._();

  factory _DeliveryPickRsponse.fromJson(Map<String, dynamic> json) =
      _$DeliveryPickRsponseImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get shedule;
  @override
  @JsonKey(ignore: true)
  _$$DeliveryPickRsponseImplCopyWith<_$DeliveryPickRsponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
