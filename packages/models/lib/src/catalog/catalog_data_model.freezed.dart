// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CatalogDataModel {
  String get userDiscount => throw _privateConstructorUsedError;
  BreadcrumbsDataModel get breadcrumbs => throw _privateConstructorUsedError;
  String get h1 => throw _privateConstructorUsedError;
  String get count => throw _privateConstructorUsedError;
  SectionsDataModel get sections => throw _privateConstructorUsedError;
  String get countFilter => throw _privateConstructorUsedError;
  FilterCatalogDataModel get filter => throw _privateConstructorUsedError;
  List<ProductDataModel> get products => throw _privateConstructorUsedError;
  String get r => throw _privateConstructorUsedError;
  String get e => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CatalogDataModelCopyWith<CatalogDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogDataModelCopyWith<$Res> {
  factory $CatalogDataModelCopyWith(
          CatalogDataModel value, $Res Function(CatalogDataModel) then) =
      _$CatalogDataModelCopyWithImpl<$Res, CatalogDataModel>;
  @useResult
  $Res call(
      {String userDiscount,
      BreadcrumbsDataModel breadcrumbs,
      String h1,
      String count,
      SectionsDataModel sections,
      String countFilter,
      FilterCatalogDataModel filter,
      List<ProductDataModel> products,
      String r,
      String e});

  $BreadcrumbsDataModelCopyWith<$Res> get breadcrumbs;
  $SectionsDataModelCopyWith<$Res> get sections;
  $FilterCatalogDataModelCopyWith<$Res> get filter;
}

/// @nodoc
class _$CatalogDataModelCopyWithImpl<$Res, $Val extends CatalogDataModel>
    implements $CatalogDataModelCopyWith<$Res> {
  _$CatalogDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userDiscount = null,
    Object? breadcrumbs = null,
    Object? h1 = null,
    Object? count = null,
    Object? sections = null,
    Object? countFilter = null,
    Object? filter = null,
    Object? products = null,
    Object? r = null,
    Object? e = null,
  }) {
    return _then(_value.copyWith(
      userDiscount: null == userDiscount
          ? _value.userDiscount
          : userDiscount // ignore: cast_nullable_to_non_nullable
              as String,
      breadcrumbs: null == breadcrumbs
          ? _value.breadcrumbs
          : breadcrumbs // ignore: cast_nullable_to_non_nullable
              as BreadcrumbsDataModel,
      h1: null == h1
          ? _value.h1
          : h1 // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as String,
      sections: null == sections
          ? _value.sections
          : sections // ignore: cast_nullable_to_non_nullable
              as SectionsDataModel,
      countFilter: null == countFilter
          ? _value.countFilter
          : countFilter // ignore: cast_nullable_to_non_nullable
              as String,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as FilterCatalogDataModel,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductDataModel>,
      r: null == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String,
      e: null == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BreadcrumbsDataModelCopyWith<$Res> get breadcrumbs {
    return $BreadcrumbsDataModelCopyWith<$Res>(_value.breadcrumbs, (value) {
      return _then(_value.copyWith(breadcrumbs: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SectionsDataModelCopyWith<$Res> get sections {
    return $SectionsDataModelCopyWith<$Res>(_value.sections, (value) {
      return _then(_value.copyWith(sections: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FilterCatalogDataModelCopyWith<$Res> get filter {
    return $FilterCatalogDataModelCopyWith<$Res>(_value.filter, (value) {
      return _then(_value.copyWith(filter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CatalogDataModelImplCopyWith<$Res>
    implements $CatalogDataModelCopyWith<$Res> {
  factory _$$CatalogDataModelImplCopyWith(_$CatalogDataModelImpl value,
          $Res Function(_$CatalogDataModelImpl) then) =
      __$$CatalogDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userDiscount,
      BreadcrumbsDataModel breadcrumbs,
      String h1,
      String count,
      SectionsDataModel sections,
      String countFilter,
      FilterCatalogDataModel filter,
      List<ProductDataModel> products,
      String r,
      String e});

  @override
  $BreadcrumbsDataModelCopyWith<$Res> get breadcrumbs;
  @override
  $SectionsDataModelCopyWith<$Res> get sections;
  @override
  $FilterCatalogDataModelCopyWith<$Res> get filter;
}

/// @nodoc
class __$$CatalogDataModelImplCopyWithImpl<$Res>
    extends _$CatalogDataModelCopyWithImpl<$Res, _$CatalogDataModelImpl>
    implements _$$CatalogDataModelImplCopyWith<$Res> {
  __$$CatalogDataModelImplCopyWithImpl(_$CatalogDataModelImpl _value,
      $Res Function(_$CatalogDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userDiscount = null,
    Object? breadcrumbs = null,
    Object? h1 = null,
    Object? count = null,
    Object? sections = null,
    Object? countFilter = null,
    Object? filter = null,
    Object? products = null,
    Object? r = null,
    Object? e = null,
  }) {
    return _then(_$CatalogDataModelImpl(
      userDiscount: null == userDiscount
          ? _value.userDiscount
          : userDiscount // ignore: cast_nullable_to_non_nullable
              as String,
      breadcrumbs: null == breadcrumbs
          ? _value.breadcrumbs
          : breadcrumbs // ignore: cast_nullable_to_non_nullable
              as BreadcrumbsDataModel,
      h1: null == h1
          ? _value.h1
          : h1 // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as String,
      sections: null == sections
          ? _value.sections
          : sections // ignore: cast_nullable_to_non_nullable
              as SectionsDataModel,
      countFilter: null == countFilter
          ? _value.countFilter
          : countFilter // ignore: cast_nullable_to_non_nullable
              as String,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as FilterCatalogDataModel,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductDataModel>,
      r: null == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String,
      e: null == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CatalogDataModelImpl extends _CatalogDataModel {
  _$CatalogDataModelImpl(
      {required this.userDiscount,
      required this.breadcrumbs,
      required this.h1,
      required this.count,
      required this.sections,
      required this.countFilter,
      required this.filter,
      required final List<ProductDataModel> products,
      required this.r,
      required this.e})
      : _products = products,
        super._();

  @override
  final String userDiscount;
  @override
  final BreadcrumbsDataModel breadcrumbs;
  @override
  final String h1;
  @override
  final String count;
  @override
  final SectionsDataModel sections;
  @override
  final String countFilter;
  @override
  final FilterCatalogDataModel filter;
  final List<ProductDataModel> _products;
  @override
  List<ProductDataModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final String r;
  @override
  final String e;

  @override
  String toString() {
    return 'CatalogDataModel(userDiscount: $userDiscount, breadcrumbs: $breadcrumbs, h1: $h1, count: $count, sections: $sections, countFilter: $countFilter, filter: $filter, products: $products, r: $r, e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CatalogDataModelImpl &&
            (identical(other.userDiscount, userDiscount) ||
                other.userDiscount == userDiscount) &&
            (identical(other.breadcrumbs, breadcrumbs) ||
                other.breadcrumbs == breadcrumbs) &&
            (identical(other.h1, h1) || other.h1 == h1) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.sections, sections) ||
                other.sections == sections) &&
            (identical(other.countFilter, countFilter) ||
                other.countFilter == countFilter) &&
            (identical(other.filter, filter) || other.filter == filter) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.r, r) || other.r == r) &&
            (identical(other.e, e) || other.e == e));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      userDiscount,
      breadcrumbs,
      h1,
      count,
      sections,
      countFilter,
      filter,
      const DeepCollectionEquality().hash(_products),
      r,
      e);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CatalogDataModelImplCopyWith<_$CatalogDataModelImpl> get copyWith =>
      __$$CatalogDataModelImplCopyWithImpl<_$CatalogDataModelImpl>(
          this, _$identity);
}

abstract class _CatalogDataModel extends CatalogDataModel {
  factory _CatalogDataModel(
      {required final String userDiscount,
      required final BreadcrumbsDataModel breadcrumbs,
      required final String h1,
      required final String count,
      required final SectionsDataModel sections,
      required final String countFilter,
      required final FilterCatalogDataModel filter,
      required final List<ProductDataModel> products,
      required final String r,
      required final String e}) = _$CatalogDataModelImpl;
  _CatalogDataModel._() : super._();

  @override
  String get userDiscount;
  @override
  BreadcrumbsDataModel get breadcrumbs;
  @override
  String get h1;
  @override
  String get count;
  @override
  SectionsDataModel get sections;
  @override
  String get countFilter;
  @override
  FilterCatalogDataModel get filter;
  @override
  List<ProductDataModel> get products;
  @override
  String get r;
  @override
  String get e;
  @override
  @JsonKey(ignore: true)
  _$$CatalogDataModelImplCopyWith<_$CatalogDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
