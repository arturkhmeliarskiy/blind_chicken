// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_catalog_info_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FilterCatalogInfoDataModel {
  List<VDataModel> get v => throw _privateConstructorUsedError;
  String get n => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilterCatalogInfoDataModelCopyWith<FilterCatalogInfoDataModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterCatalogInfoDataModelCopyWith<$Res> {
  factory $FilterCatalogInfoDataModelCopyWith(FilterCatalogInfoDataModel value,
          $Res Function(FilterCatalogInfoDataModel) then) =
      _$FilterCatalogInfoDataModelCopyWithImpl<$Res,
          FilterCatalogInfoDataModel>;
  @useResult
  $Res call({List<VDataModel> v, String n});
}

/// @nodoc
class _$FilterCatalogInfoDataModelCopyWithImpl<$Res,
        $Val extends FilterCatalogInfoDataModel>
    implements $FilterCatalogInfoDataModelCopyWith<$Res> {
  _$FilterCatalogInfoDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? v = null,
    Object? n = null,
  }) {
    return _then(_value.copyWith(
      v: null == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as List<VDataModel>,
      n: null == n
          ? _value.n
          : n // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilterCatalogInfoDataModelImplCopyWith<$Res>
    implements $FilterCatalogInfoDataModelCopyWith<$Res> {
  factory _$$FilterCatalogInfoDataModelImplCopyWith(
          _$FilterCatalogInfoDataModelImpl value,
          $Res Function(_$FilterCatalogInfoDataModelImpl) then) =
      __$$FilterCatalogInfoDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<VDataModel> v, String n});
}

/// @nodoc
class __$$FilterCatalogInfoDataModelImplCopyWithImpl<$Res>
    extends _$FilterCatalogInfoDataModelCopyWithImpl<$Res,
        _$FilterCatalogInfoDataModelImpl>
    implements _$$FilterCatalogInfoDataModelImplCopyWith<$Res> {
  __$$FilterCatalogInfoDataModelImplCopyWithImpl(
      _$FilterCatalogInfoDataModelImpl _value,
      $Res Function(_$FilterCatalogInfoDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? v = null,
    Object? n = null,
  }) {
    return _then(_$FilterCatalogInfoDataModelImpl(
      v: null == v
          ? _value._v
          : v // ignore: cast_nullable_to_non_nullable
              as List<VDataModel>,
      n: null == n
          ? _value.n
          : n // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FilterCatalogInfoDataModelImpl extends _FilterCatalogInfoDataModel {
  _$FilterCatalogInfoDataModelImpl(
      {required final List<VDataModel> v, required this.n})
      : _v = v,
        super._();

  final List<VDataModel> _v;
  @override
  List<VDataModel> get v {
    if (_v is EqualUnmodifiableListView) return _v;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_v);
  }

  @override
  final String n;

  @override
  String toString() {
    return 'FilterCatalogInfoDataModel(v: $v, n: $n)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterCatalogInfoDataModelImpl &&
            const DeepCollectionEquality().equals(other._v, _v) &&
            (identical(other.n, n) || other.n == n));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_v), n);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterCatalogInfoDataModelImplCopyWith<_$FilterCatalogInfoDataModelImpl>
      get copyWith => __$$FilterCatalogInfoDataModelImplCopyWithImpl<
          _$FilterCatalogInfoDataModelImpl>(this, _$identity);
}

abstract class _FilterCatalogInfoDataModel extends FilterCatalogInfoDataModel {
  factory _FilterCatalogInfoDataModel(
      {required final List<VDataModel> v,
      required final String n}) = _$FilterCatalogInfoDataModelImpl;
  _FilterCatalogInfoDataModel._() : super._();

  @override
  List<VDataModel> get v;
  @override
  String get n;
  @override
  @JsonKey(ignore: true)
  _$$FilterCatalogInfoDataModelImplCopyWith<_$FilterCatalogInfoDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
