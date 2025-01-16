// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'v_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VDataModel {
  String get n => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  /// Create a copy of VDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VDataModelCopyWith<VDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VDataModelCopyWith<$Res> {
  factory $VDataModelCopyWith(
          VDataModel value, $Res Function(VDataModel) then) =
      _$VDataModelCopyWithImpl<$Res, VDataModel>;
  @useResult
  $Res call({String n, String id});
}

/// @nodoc
class _$VDataModelCopyWithImpl<$Res, $Val extends VDataModel>
    implements $VDataModelCopyWith<$Res> {
  _$VDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? n = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      n: null == n
          ? _value.n
          : n // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VDataModelImplCopyWith<$Res>
    implements $VDataModelCopyWith<$Res> {
  factory _$$VDataModelImplCopyWith(
          _$VDataModelImpl value, $Res Function(_$VDataModelImpl) then) =
      __$$VDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String n, String id});
}

/// @nodoc
class __$$VDataModelImplCopyWithImpl<$Res>
    extends _$VDataModelCopyWithImpl<$Res, _$VDataModelImpl>
    implements _$$VDataModelImplCopyWith<$Res> {
  __$$VDataModelImplCopyWithImpl(
      _$VDataModelImpl _value, $Res Function(_$VDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of VDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? n = null,
    Object? id = null,
  }) {
    return _then(_$VDataModelImpl(
      n: null == n
          ? _value.n
          : n // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VDataModelImpl extends _VDataModel {
  _$VDataModelImpl({required this.n, required this.id}) : super._();

  @override
  final String n;
  @override
  final String id;

  @override
  String toString() {
    return 'VDataModel(n: $n, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VDataModelImpl &&
            (identical(other.n, n) || other.n == n) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, n, id);

  /// Create a copy of VDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VDataModelImplCopyWith<_$VDataModelImpl> get copyWith =>
      __$$VDataModelImplCopyWithImpl<_$VDataModelImpl>(this, _$identity);
}

abstract class _VDataModel extends VDataModel {
  factory _VDataModel({required final String n, required final String id}) =
      _$VDataModelImpl;
  _VDataModel._() : super._();

  @override
  String get n;
  @override
  String get id;

  /// Create a copy of VDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VDataModelImplCopyWith<_$VDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
