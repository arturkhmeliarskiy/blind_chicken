// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_pick_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeliveryPickDataModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get shedule => throw _privateConstructorUsedError;

  /// Create a copy of DeliveryPickDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeliveryPickDataModelCopyWith<DeliveryPickDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryPickDataModelCopyWith<$Res> {
  factory $DeliveryPickDataModelCopyWith(DeliveryPickDataModel value,
          $Res Function(DeliveryPickDataModel) then) =
      _$DeliveryPickDataModelCopyWithImpl<$Res, DeliveryPickDataModel>;
  @useResult
  $Res call({String id, String name, String shedule});
}

/// @nodoc
class _$DeliveryPickDataModelCopyWithImpl<$Res,
        $Val extends DeliveryPickDataModel>
    implements $DeliveryPickDataModelCopyWith<$Res> {
  _$DeliveryPickDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeliveryPickDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? shedule = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      shedule: null == shedule
          ? _value.shedule
          : shedule // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeliveryPickDataModelImplCopyWith<$Res>
    implements $DeliveryPickDataModelCopyWith<$Res> {
  factory _$$DeliveryPickDataModelImplCopyWith(
          _$DeliveryPickDataModelImpl value,
          $Res Function(_$DeliveryPickDataModelImpl) then) =
      __$$DeliveryPickDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String shedule});
}

/// @nodoc
class __$$DeliveryPickDataModelImplCopyWithImpl<$Res>
    extends _$DeliveryPickDataModelCopyWithImpl<$Res,
        _$DeliveryPickDataModelImpl>
    implements _$$DeliveryPickDataModelImplCopyWith<$Res> {
  __$$DeliveryPickDataModelImplCopyWithImpl(_$DeliveryPickDataModelImpl _value,
      $Res Function(_$DeliveryPickDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeliveryPickDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? shedule = null,
  }) {
    return _then(_$DeliveryPickDataModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      shedule: null == shedule
          ? _value.shedule
          : shedule // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeliveryPickDataModelImpl extends _DeliveryPickDataModel {
  _$DeliveryPickDataModelImpl(
      {required this.id, required this.name, required this.shedule})
      : super._();

  @override
  final String id;
  @override
  final String name;
  @override
  final String shedule;

  @override
  String toString() {
    return 'DeliveryPickDataModel(id: $id, name: $name, shedule: $shedule)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryPickDataModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.shedule, shedule) || other.shedule == shedule));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, shedule);

  /// Create a copy of DeliveryPickDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryPickDataModelImplCopyWith<_$DeliveryPickDataModelImpl>
      get copyWith => __$$DeliveryPickDataModelImplCopyWithImpl<
          _$DeliveryPickDataModelImpl>(this, _$identity);
}

abstract class _DeliveryPickDataModel extends DeliveryPickDataModel {
  factory _DeliveryPickDataModel(
      {required final String id,
      required final String name,
      required final String shedule}) = _$DeliveryPickDataModelImpl;
  _DeliveryPickDataModel._() : super._();

  @override
  String get id;
  @override
  String get name;
  @override
  String get shedule;

  /// Create a copy of DeliveryPickDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeliveryPickDataModelImplCopyWith<_$DeliveryPickDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
