// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_section_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CatalogSectionDataModel {
  String get n => throw _privateConstructorUsedError;
  String get u => throw _privateConstructorUsedError;
  String get g => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CatalogSectionDataModelCopyWith<CatalogSectionDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogSectionDataModelCopyWith<$Res> {
  factory $CatalogSectionDataModelCopyWith(CatalogSectionDataModel value,
          $Res Function(CatalogSectionDataModel) then) =
      _$CatalogSectionDataModelCopyWithImpl<$Res, CatalogSectionDataModel>;
  @useResult
  $Res call({String n, String u, String g});
}

/// @nodoc
class _$CatalogSectionDataModelCopyWithImpl<$Res,
        $Val extends CatalogSectionDataModel>
    implements $CatalogSectionDataModelCopyWith<$Res> {
  _$CatalogSectionDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? n = null,
    Object? u = null,
    Object? g = null,
  }) {
    return _then(_value.copyWith(
      n: null == n
          ? _value.n
          : n // ignore: cast_nullable_to_non_nullable
              as String,
      u: null == u
          ? _value.u
          : u // ignore: cast_nullable_to_non_nullable
              as String,
      g: null == g
          ? _value.g
          : g // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CatalogSectionDataModelImplCopyWith<$Res>
    implements $CatalogSectionDataModelCopyWith<$Res> {
  factory _$$CatalogSectionDataModelImplCopyWith(
          _$CatalogSectionDataModelImpl value,
          $Res Function(_$CatalogSectionDataModelImpl) then) =
      __$$CatalogSectionDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String n, String u, String g});
}

/// @nodoc
class __$$CatalogSectionDataModelImplCopyWithImpl<$Res>
    extends _$CatalogSectionDataModelCopyWithImpl<$Res,
        _$CatalogSectionDataModelImpl>
    implements _$$CatalogSectionDataModelImplCopyWith<$Res> {
  __$$CatalogSectionDataModelImplCopyWithImpl(
      _$CatalogSectionDataModelImpl _value,
      $Res Function(_$CatalogSectionDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? n = null,
    Object? u = null,
    Object? g = null,
  }) {
    return _then(_$CatalogSectionDataModelImpl(
      n: null == n
          ? _value.n
          : n // ignore: cast_nullable_to_non_nullable
              as String,
      u: null == u
          ? _value.u
          : u // ignore: cast_nullable_to_non_nullable
              as String,
      g: null == g
          ? _value.g
          : g // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CatalogSectionDataModelImpl extends _CatalogSectionDataModel {
  _$CatalogSectionDataModelImpl(
      {required this.n, required this.u, required this.g})
      : super._();

  @override
  final String n;
  @override
  final String u;
  @override
  final String g;

  @override
  String toString() {
    return 'CatalogSectionDataModel(n: $n, u: $u, g: $g)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CatalogSectionDataModelImpl &&
            (identical(other.n, n) || other.n == n) &&
            (identical(other.u, u) || other.u == u) &&
            (identical(other.g, g) || other.g == g));
  }

  @override
  int get hashCode => Object.hash(runtimeType, n, u, g);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CatalogSectionDataModelImplCopyWith<_$CatalogSectionDataModelImpl>
      get copyWith => __$$CatalogSectionDataModelImplCopyWithImpl<
          _$CatalogSectionDataModelImpl>(this, _$identity);
}

abstract class _CatalogSectionDataModel extends CatalogSectionDataModel {
  factory _CatalogSectionDataModel(
      {required final String n,
      required final String u,
      required final String g}) = _$CatalogSectionDataModelImpl;
  _CatalogSectionDataModel._() : super._();

  @override
  String get n;
  @override
  String get u;
  @override
  String get g;
  @override
  @JsonKey(ignore: true)
  _$$CatalogSectionDataModelImplCopyWith<_$CatalogSectionDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
