// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_item_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaymentItemDataModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Create a copy of PaymentItemDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentItemDataModelCopyWith<PaymentItemDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentItemDataModelCopyWith<$Res> {
  factory $PaymentItemDataModelCopyWith(PaymentItemDataModel value,
          $Res Function(PaymentItemDataModel) then) =
      _$PaymentItemDataModelCopyWithImpl<$Res, PaymentItemDataModel>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$PaymentItemDataModelCopyWithImpl<$Res,
        $Val extends PaymentItemDataModel>
    implements $PaymentItemDataModelCopyWith<$Res> {
  _$PaymentItemDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentItemDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentItemDataModelImplCopyWith<$Res>
    implements $PaymentItemDataModelCopyWith<$Res> {
  factory _$$PaymentItemDataModelImplCopyWith(_$PaymentItemDataModelImpl value,
          $Res Function(_$PaymentItemDataModelImpl) then) =
      __$$PaymentItemDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$PaymentItemDataModelImplCopyWithImpl<$Res>
    extends _$PaymentItemDataModelCopyWithImpl<$Res, _$PaymentItemDataModelImpl>
    implements _$$PaymentItemDataModelImplCopyWith<$Res> {
  __$$PaymentItemDataModelImplCopyWithImpl(_$PaymentItemDataModelImpl _value,
      $Res Function(_$PaymentItemDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentItemDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$PaymentItemDataModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PaymentItemDataModelImpl extends _PaymentItemDataModel {
  _$PaymentItemDataModelImpl({required this.id, required this.name})
      : super._();

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'PaymentItemDataModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentItemDataModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of PaymentItemDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentItemDataModelImplCopyWith<_$PaymentItemDataModelImpl>
      get copyWith =>
          __$$PaymentItemDataModelImplCopyWithImpl<_$PaymentItemDataModelImpl>(
              this, _$identity);
}

abstract class _PaymentItemDataModel extends PaymentItemDataModel {
  factory _PaymentItemDataModel(
      {required final String id,
      required final String name}) = _$PaymentItemDataModelImpl;
  _PaymentItemDataModel._() : super._();

  @override
  String get id;
  @override
  String get name;

  /// Create a copy of PaymentItemDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentItemDataModelImplCopyWith<_$PaymentItemDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
