// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_breadcrumb_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CatalogBreadcrumbDataModel {
  String get name => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CatalogBreadcrumbDataModelCopyWith<CatalogBreadcrumbDataModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogBreadcrumbDataModelCopyWith<$Res> {
  factory $CatalogBreadcrumbDataModelCopyWith(CatalogBreadcrumbDataModel value,
          $Res Function(CatalogBreadcrumbDataModel) then) =
      _$CatalogBreadcrumbDataModelCopyWithImpl<$Res,
          CatalogBreadcrumbDataModel>;
  @useResult
  $Res call({String name, String value});
}

/// @nodoc
class _$CatalogBreadcrumbDataModelCopyWithImpl<$Res,
        $Val extends CatalogBreadcrumbDataModel>
    implements $CatalogBreadcrumbDataModelCopyWith<$Res> {
  _$CatalogBreadcrumbDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CatalogBreadcrumbDataModelImplCopyWith<$Res>
    implements $CatalogBreadcrumbDataModelCopyWith<$Res> {
  factory _$$CatalogBreadcrumbDataModelImplCopyWith(
          _$CatalogBreadcrumbDataModelImpl value,
          $Res Function(_$CatalogBreadcrumbDataModelImpl) then) =
      __$$CatalogBreadcrumbDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String value});
}

/// @nodoc
class __$$CatalogBreadcrumbDataModelImplCopyWithImpl<$Res>
    extends _$CatalogBreadcrumbDataModelCopyWithImpl<$Res,
        _$CatalogBreadcrumbDataModelImpl>
    implements _$$CatalogBreadcrumbDataModelImplCopyWith<$Res> {
  __$$CatalogBreadcrumbDataModelImplCopyWithImpl(
      _$CatalogBreadcrumbDataModelImpl _value,
      $Res Function(_$CatalogBreadcrumbDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
  }) {
    return _then(_$CatalogBreadcrumbDataModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CatalogBreadcrumbDataModelImpl extends _CatalogBreadcrumbDataModel {
  _$CatalogBreadcrumbDataModelImpl({required this.name, required this.value})
      : super._();

  @override
  final String name;
  @override
  final String value;

  @override
  String toString() {
    return 'CatalogBreadcrumbDataModel(name: $name, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CatalogBreadcrumbDataModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CatalogBreadcrumbDataModelImplCopyWith<_$CatalogBreadcrumbDataModelImpl>
      get copyWith => __$$CatalogBreadcrumbDataModelImplCopyWithImpl<
          _$CatalogBreadcrumbDataModelImpl>(this, _$identity);
}

abstract class _CatalogBreadcrumbDataModel extends CatalogBreadcrumbDataModel {
  factory _CatalogBreadcrumbDataModel(
      {required final String name,
      required final String value}) = _$CatalogBreadcrumbDataModelImpl;
  _CatalogBreadcrumbDataModel._() : super._();

  @override
  String get name;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$CatalogBreadcrumbDataModelImplCopyWith<_$CatalogBreadcrumbDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
