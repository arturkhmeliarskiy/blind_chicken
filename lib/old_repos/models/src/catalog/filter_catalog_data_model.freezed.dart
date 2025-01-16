// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_catalog_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FilterCatalogDataModel {
  String get key => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  /// Create a copy of FilterCatalogDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FilterCatalogDataModelCopyWith<FilterCatalogDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterCatalogDataModelCopyWith<$Res> {
  factory $FilterCatalogDataModelCopyWith(FilterCatalogDataModel value,
          $Res Function(FilterCatalogDataModel) then) =
      _$FilterCatalogDataModelCopyWithImpl<$Res, FilterCatalogDataModel>;
  @useResult
  $Res call({String key, String value});
}

/// @nodoc
class _$FilterCatalogDataModelCopyWithImpl<$Res,
        $Val extends FilterCatalogDataModel>
    implements $FilterCatalogDataModelCopyWith<$Res> {
  _$FilterCatalogDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FilterCatalogDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilterCatalogDataModelImplCopyWith<$Res>
    implements $FilterCatalogDataModelCopyWith<$Res> {
  factory _$$FilterCatalogDataModelImplCopyWith(
          _$FilterCatalogDataModelImpl value,
          $Res Function(_$FilterCatalogDataModelImpl) then) =
      __$$FilterCatalogDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, String value});
}

/// @nodoc
class __$$FilterCatalogDataModelImplCopyWithImpl<$Res>
    extends _$FilterCatalogDataModelCopyWithImpl<$Res,
        _$FilterCatalogDataModelImpl>
    implements _$$FilterCatalogDataModelImplCopyWith<$Res> {
  __$$FilterCatalogDataModelImplCopyWithImpl(
      _$FilterCatalogDataModelImpl _value,
      $Res Function(_$FilterCatalogDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FilterCatalogDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
  }) {
    return _then(_$FilterCatalogDataModelImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FilterCatalogDataModelImpl extends _FilterCatalogDataModel {
  _$FilterCatalogDataModelImpl({required this.key, required this.value})
      : super._();

  @override
  final String key;
  @override
  final String value;

  @override
  String toString() {
    return 'FilterCatalogDataModel(key: $key, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterCatalogDataModelImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, key, value);

  /// Create a copy of FilterCatalogDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterCatalogDataModelImplCopyWith<_$FilterCatalogDataModelImpl>
      get copyWith => __$$FilterCatalogDataModelImplCopyWithImpl<
          _$FilterCatalogDataModelImpl>(this, _$identity);
}

abstract class _FilterCatalogDataModel extends FilterCatalogDataModel {
  factory _FilterCatalogDataModel(
      {required final String key,
      required final String value}) = _$FilterCatalogDataModelImpl;
  _FilterCatalogDataModel._() : super._();

  @override
  String get key;
  @override
  String get value;

  /// Create a copy of FilterCatalogDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilterCatalogDataModelImplCopyWith<_$FilterCatalogDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
