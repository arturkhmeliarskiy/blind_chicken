// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sku_product_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SkuProductDataModel {
  String get id => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SkuProductDataModelCopyWith<SkuProductDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SkuProductDataModelCopyWith<$Res> {
  factory $SkuProductDataModelCopyWith(
          SkuProductDataModel value, $Res Function(SkuProductDataModel) then) =
      _$SkuProductDataModelCopyWithImpl<$Res, SkuProductDataModel>;
  @useResult
  $Res call({String id, String value});
}

/// @nodoc
class _$SkuProductDataModelCopyWithImpl<$Res, $Val extends SkuProductDataModel>
    implements $SkuProductDataModelCopyWith<$Res> {
  _$SkuProductDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SkuProductDataModelImplCopyWith<$Res>
    implements $SkuProductDataModelCopyWith<$Res> {
  factory _$$SkuProductDataModelImplCopyWith(_$SkuProductDataModelImpl value,
          $Res Function(_$SkuProductDataModelImpl) then) =
      __$$SkuProductDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String value});
}

/// @nodoc
class __$$SkuProductDataModelImplCopyWithImpl<$Res>
    extends _$SkuProductDataModelCopyWithImpl<$Res, _$SkuProductDataModelImpl>
    implements _$$SkuProductDataModelImplCopyWith<$Res> {
  __$$SkuProductDataModelImplCopyWithImpl(_$SkuProductDataModelImpl _value,
      $Res Function(_$SkuProductDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
  }) {
    return _then(_$SkuProductDataModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SkuProductDataModelImpl extends _SkuProductDataModel {
  _$SkuProductDataModelImpl({required this.id, required this.value})
      : super._();

  @override
  final String id;
  @override
  final String value;

  @override
  String toString() {
    return 'SkuProductDataModel(id: $id, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SkuProductDataModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SkuProductDataModelImplCopyWith<_$SkuProductDataModelImpl> get copyWith =>
      __$$SkuProductDataModelImplCopyWithImpl<_$SkuProductDataModelImpl>(
          this, _$identity);
}

abstract class _SkuProductDataModel extends SkuProductDataModel {
  factory _SkuProductDataModel(
      {required final String id,
      required final String value}) = _$SkuProductDataModelImpl;
  _SkuProductDataModel._() : super._();

  @override
  String get id;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$SkuProductDataModelImplCopyWith<_$SkuProductDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
