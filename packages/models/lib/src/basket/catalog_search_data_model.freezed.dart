// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_search_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CatalogSearchDataModel {
  int get productsCount => throw _privateConstructorUsedError;
  int get sectionsCount => throw _privateConstructorUsedError;
  List<ProductDataModel> get products => throw _privateConstructorUsedError;
  List<CatalogSectionDataModel> get sections =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CatalogSearchDataModelCopyWith<CatalogSearchDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogSearchDataModelCopyWith<$Res> {
  factory $CatalogSearchDataModelCopyWith(CatalogSearchDataModel value,
          $Res Function(CatalogSearchDataModel) then) =
      _$CatalogSearchDataModelCopyWithImpl<$Res, CatalogSearchDataModel>;
  @useResult
  $Res call(
      {int productsCount,
      int sectionsCount,
      List<ProductDataModel> products,
      List<CatalogSectionDataModel> sections});
}

/// @nodoc
class _$CatalogSearchDataModelCopyWithImpl<$Res,
        $Val extends CatalogSearchDataModel>
    implements $CatalogSearchDataModelCopyWith<$Res> {
  _$CatalogSearchDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productsCount = null,
    Object? sectionsCount = null,
    Object? products = null,
    Object? sections = null,
  }) {
    return _then(_value.copyWith(
      productsCount: null == productsCount
          ? _value.productsCount
          : productsCount // ignore: cast_nullable_to_non_nullable
              as int,
      sectionsCount: null == sectionsCount
          ? _value.sectionsCount
          : sectionsCount // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductDataModel>,
      sections: null == sections
          ? _value.sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<CatalogSectionDataModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CatalogSearchDataModelImplCopyWith<$Res>
    implements $CatalogSearchDataModelCopyWith<$Res> {
  factory _$$CatalogSearchDataModelImplCopyWith(
          _$CatalogSearchDataModelImpl value,
          $Res Function(_$CatalogSearchDataModelImpl) then) =
      __$$CatalogSearchDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int productsCount,
      int sectionsCount,
      List<ProductDataModel> products,
      List<CatalogSectionDataModel> sections});
}

/// @nodoc
class __$$CatalogSearchDataModelImplCopyWithImpl<$Res>
    extends _$CatalogSearchDataModelCopyWithImpl<$Res,
        _$CatalogSearchDataModelImpl>
    implements _$$CatalogSearchDataModelImplCopyWith<$Res> {
  __$$CatalogSearchDataModelImplCopyWithImpl(
      _$CatalogSearchDataModelImpl _value,
      $Res Function(_$CatalogSearchDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productsCount = null,
    Object? sectionsCount = null,
    Object? products = null,
    Object? sections = null,
  }) {
    return _then(_$CatalogSearchDataModelImpl(
      productsCount: null == productsCount
          ? _value.productsCount
          : productsCount // ignore: cast_nullable_to_non_nullable
              as int,
      sectionsCount: null == sectionsCount
          ? _value.sectionsCount
          : sectionsCount // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductDataModel>,
      sections: null == sections
          ? _value._sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<CatalogSectionDataModel>,
    ));
  }
}

/// @nodoc

class _$CatalogSearchDataModelImpl extends _CatalogSearchDataModel {
  _$CatalogSearchDataModelImpl(
      {required this.productsCount,
      required this.sectionsCount,
      required final List<ProductDataModel> products,
      required final List<CatalogSectionDataModel> sections})
      : _products = products,
        _sections = sections,
        super._();

  @override
  final int productsCount;
  @override
  final int sectionsCount;
  final List<ProductDataModel> _products;
  @override
  List<ProductDataModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  final List<CatalogSectionDataModel> _sections;
  @override
  List<CatalogSectionDataModel> get sections {
    if (_sections is EqualUnmodifiableListView) return _sections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sections);
  }

  @override
  String toString() {
    return 'CatalogSearchDataModel(productsCount: $productsCount, sectionsCount: $sectionsCount, products: $products, sections: $sections)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CatalogSearchDataModelImpl &&
            (identical(other.productsCount, productsCount) ||
                other.productsCount == productsCount) &&
            (identical(other.sectionsCount, sectionsCount) ||
                other.sectionsCount == sectionsCount) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality().equals(other._sections, _sections));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      productsCount,
      sectionsCount,
      const DeepCollectionEquality().hash(_products),
      const DeepCollectionEquality().hash(_sections));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CatalogSearchDataModelImplCopyWith<_$CatalogSearchDataModelImpl>
      get copyWith => __$$CatalogSearchDataModelImplCopyWithImpl<
          _$CatalogSearchDataModelImpl>(this, _$identity);
}

abstract class _CatalogSearchDataModel extends CatalogSearchDataModel {
  factory _CatalogSearchDataModel(
          {required final int productsCount,
          required final int sectionsCount,
          required final List<ProductDataModel> products,
          required final List<CatalogSectionDataModel> sections}) =
      _$CatalogSearchDataModelImpl;
  _CatalogSearchDataModel._() : super._();

  @override
  int get productsCount;
  @override
  int get sectionsCount;
  @override
  List<ProductDataModel> get products;
  @override
  List<CatalogSectionDataModel> get sections;
  @override
  @JsonKey(ignore: true)
  _$$CatalogSearchDataModelImplCopyWith<_$CatalogSearchDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
