// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CatalogEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preloadData,
    required TResult Function() updateFavouritesProducts,
    required TResult Function(
            String a, int b, int id, String u, int pid, MenuItemDataModel? item)
        subCategory,
    required TResult Function(int idParent) backPathMenu,
    required TResult Function(
            int index, int indexItem, FilterItemDataModel item)
        selectFilter,
    required TResult Function(
            int index, int indexItem, FilterItemDataModel item)
        deleteFilter,
    required TResult Function(int key, int index, FilterItemDataModel item)
        deleteCatalogFilter,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function(int offset, int limit) paginationProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? preloadData,
    TResult? Function()? updateFavouritesProducts,
    TResult? Function(String a, int b, int id, String u, int pid,
            MenuItemDataModel? item)?
        subCategory,
    TResult? Function(int idParent)? backPathMenu,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult? Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function(int offset, int limit)? paginationProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preloadData,
    TResult Function()? updateFavouritesProducts,
    TResult Function(String a, int b, int id, String u, int pid,
            MenuItemDataModel? item)?
        subCategory,
    TResult Function(int idParent)? backPathMenu,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function(int offset, int limit)? paginationProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitCatalogEvent value) preloadData,
    required TResult Function(UpdateFavouritesProductsCatalogEvent value)
        updateFavouritesProducts,
    required TResult Function(SubCategoryatalogEvent value) subCategory,
    required TResult Function(BackPathMenuCatalogEvent value) backPathMenu,
    required TResult Function(SelectFilterCatalogEvent value) selectFilter,
    required TResult Function(DeleteFilterCatalogEvent value) deleteFilter,
    required TResult Function(DeleteCatalogFilterEvent value)
        deleteCatalogFilter,
    required TResult Function(AddFavouriteProductCatalogEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductCatalogEvent value)
        deleteFavouriteProduct,
    required TResult Function(PaginationProductCatalogEvent value)
        paginationProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitCatalogEvent value)? preloadData,
    TResult? Function(UpdateFavouritesProductsCatalogEvent value)?
        updateFavouritesProducts,
    TResult? Function(SubCategoryatalogEvent value)? subCategory,
    TResult? Function(BackPathMenuCatalogEvent value)? backPathMenu,
    TResult? Function(SelectFilterCatalogEvent value)? selectFilter,
    TResult? Function(DeleteFilterCatalogEvent value)? deleteFilter,
    TResult? Function(DeleteCatalogFilterEvent value)? deleteCatalogFilter,
    TResult? Function(AddFavouriteProductCatalogEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductCatalogEvent value)?
        deleteFavouriteProduct,
    TResult? Function(PaginationProductCatalogEvent value)? paginationProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitCatalogEvent value)? preloadData,
    TResult Function(UpdateFavouritesProductsCatalogEvent value)?
        updateFavouritesProducts,
    TResult Function(SubCategoryatalogEvent value)? subCategory,
    TResult Function(BackPathMenuCatalogEvent value)? backPathMenu,
    TResult Function(SelectFilterCatalogEvent value)? selectFilter,
    TResult Function(DeleteFilterCatalogEvent value)? deleteFilter,
    TResult Function(DeleteCatalogFilterEvent value)? deleteCatalogFilter,
    TResult Function(AddFavouriteProductCatalogEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductCatalogEvent value)?
        deleteFavouriteProduct,
    TResult Function(PaginationProductCatalogEvent value)? paginationProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogEventCopyWith<$Res> {
  factory $CatalogEventCopyWith(
          CatalogEvent value, $Res Function(CatalogEvent) then) =
      _$CatalogEventCopyWithImpl<$Res, CatalogEvent>;
}

/// @nodoc
class _$CatalogEventCopyWithImpl<$Res, $Val extends CatalogEvent>
    implements $CatalogEventCopyWith<$Res> {
  _$CatalogEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitCatalogEventImplCopyWith<$Res> {
  factory _$$InitCatalogEventImplCopyWith(_$InitCatalogEventImpl value,
          $Res Function(_$InitCatalogEventImpl) then) =
      __$$InitCatalogEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitCatalogEventImplCopyWithImpl<$Res>
    extends _$CatalogEventCopyWithImpl<$Res, _$InitCatalogEventImpl>
    implements _$$InitCatalogEventImplCopyWith<$Res> {
  __$$InitCatalogEventImplCopyWithImpl(_$InitCatalogEventImpl _value,
      $Res Function(_$InitCatalogEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitCatalogEventImpl implements InitCatalogEvent {
  const _$InitCatalogEventImpl();

  @override
  String toString() {
    return 'CatalogEvent.preloadData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitCatalogEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preloadData,
    required TResult Function() updateFavouritesProducts,
    required TResult Function(
            String a, int b, int id, String u, int pid, MenuItemDataModel? item)
        subCategory,
    required TResult Function(int idParent) backPathMenu,
    required TResult Function(
            int index, int indexItem, FilterItemDataModel item)
        selectFilter,
    required TResult Function(
            int index, int indexItem, FilterItemDataModel item)
        deleteFilter,
    required TResult Function(int key, int index, FilterItemDataModel item)
        deleteCatalogFilter,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function(int offset, int limit) paginationProduct,
  }) {
    return preloadData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? preloadData,
    TResult? Function()? updateFavouritesProducts,
    TResult? Function(String a, int b, int id, String u, int pid,
            MenuItemDataModel? item)?
        subCategory,
    TResult? Function(int idParent)? backPathMenu,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult? Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function(int offset, int limit)? paginationProduct,
  }) {
    return preloadData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preloadData,
    TResult Function()? updateFavouritesProducts,
    TResult Function(String a, int b, int id, String u, int pid,
            MenuItemDataModel? item)?
        subCategory,
    TResult Function(int idParent)? backPathMenu,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function(int offset, int limit)? paginationProduct,
    required TResult orElse(),
  }) {
    if (preloadData != null) {
      return preloadData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitCatalogEvent value) preloadData,
    required TResult Function(UpdateFavouritesProductsCatalogEvent value)
        updateFavouritesProducts,
    required TResult Function(SubCategoryatalogEvent value) subCategory,
    required TResult Function(BackPathMenuCatalogEvent value) backPathMenu,
    required TResult Function(SelectFilterCatalogEvent value) selectFilter,
    required TResult Function(DeleteFilterCatalogEvent value) deleteFilter,
    required TResult Function(DeleteCatalogFilterEvent value)
        deleteCatalogFilter,
    required TResult Function(AddFavouriteProductCatalogEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductCatalogEvent value)
        deleteFavouriteProduct,
    required TResult Function(PaginationProductCatalogEvent value)
        paginationProduct,
  }) {
    return preloadData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitCatalogEvent value)? preloadData,
    TResult? Function(UpdateFavouritesProductsCatalogEvent value)?
        updateFavouritesProducts,
    TResult? Function(SubCategoryatalogEvent value)? subCategory,
    TResult? Function(BackPathMenuCatalogEvent value)? backPathMenu,
    TResult? Function(SelectFilterCatalogEvent value)? selectFilter,
    TResult? Function(DeleteFilterCatalogEvent value)? deleteFilter,
    TResult? Function(DeleteCatalogFilterEvent value)? deleteCatalogFilter,
    TResult? Function(AddFavouriteProductCatalogEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductCatalogEvent value)?
        deleteFavouriteProduct,
    TResult? Function(PaginationProductCatalogEvent value)? paginationProduct,
  }) {
    return preloadData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitCatalogEvent value)? preloadData,
    TResult Function(UpdateFavouritesProductsCatalogEvent value)?
        updateFavouritesProducts,
    TResult Function(SubCategoryatalogEvent value)? subCategory,
    TResult Function(BackPathMenuCatalogEvent value)? backPathMenu,
    TResult Function(SelectFilterCatalogEvent value)? selectFilter,
    TResult Function(DeleteFilterCatalogEvent value)? deleteFilter,
    TResult Function(DeleteCatalogFilterEvent value)? deleteCatalogFilter,
    TResult Function(AddFavouriteProductCatalogEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductCatalogEvent value)?
        deleteFavouriteProduct,
    TResult Function(PaginationProductCatalogEvent value)? paginationProduct,
    required TResult orElse(),
  }) {
    if (preloadData != null) {
      return preloadData(this);
    }
    return orElse();
  }
}

abstract class InitCatalogEvent implements CatalogEvent {
  const factory InitCatalogEvent() = _$InitCatalogEventImpl;
}

/// @nodoc
abstract class _$$UpdateFavouritesProductsCatalogEventImplCopyWith<$Res> {
  factory _$$UpdateFavouritesProductsCatalogEventImplCopyWith(
          _$UpdateFavouritesProductsCatalogEventImpl value,
          $Res Function(_$UpdateFavouritesProductsCatalogEventImpl) then) =
      __$$UpdateFavouritesProductsCatalogEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateFavouritesProductsCatalogEventImplCopyWithImpl<$Res>
    extends _$CatalogEventCopyWithImpl<$Res,
        _$UpdateFavouritesProductsCatalogEventImpl>
    implements _$$UpdateFavouritesProductsCatalogEventImplCopyWith<$Res> {
  __$$UpdateFavouritesProductsCatalogEventImplCopyWithImpl(
      _$UpdateFavouritesProductsCatalogEventImpl _value,
      $Res Function(_$UpdateFavouritesProductsCatalogEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdateFavouritesProductsCatalogEventImpl
    implements UpdateFavouritesProductsCatalogEvent {
  const _$UpdateFavouritesProductsCatalogEventImpl();

  @override
  String toString() {
    return 'CatalogEvent.updateFavouritesProducts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateFavouritesProductsCatalogEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preloadData,
    required TResult Function() updateFavouritesProducts,
    required TResult Function(
            String a, int b, int id, String u, int pid, MenuItemDataModel? item)
        subCategory,
    required TResult Function(int idParent) backPathMenu,
    required TResult Function(
            int index, int indexItem, FilterItemDataModel item)
        selectFilter,
    required TResult Function(
            int index, int indexItem, FilterItemDataModel item)
        deleteFilter,
    required TResult Function(int key, int index, FilterItemDataModel item)
        deleteCatalogFilter,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function(int offset, int limit) paginationProduct,
  }) {
    return updateFavouritesProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? preloadData,
    TResult? Function()? updateFavouritesProducts,
    TResult? Function(String a, int b, int id, String u, int pid,
            MenuItemDataModel? item)?
        subCategory,
    TResult? Function(int idParent)? backPathMenu,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult? Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function(int offset, int limit)? paginationProduct,
  }) {
    return updateFavouritesProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preloadData,
    TResult Function()? updateFavouritesProducts,
    TResult Function(String a, int b, int id, String u, int pid,
            MenuItemDataModel? item)?
        subCategory,
    TResult Function(int idParent)? backPathMenu,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function(int offset, int limit)? paginationProduct,
    required TResult orElse(),
  }) {
    if (updateFavouritesProducts != null) {
      return updateFavouritesProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitCatalogEvent value) preloadData,
    required TResult Function(UpdateFavouritesProductsCatalogEvent value)
        updateFavouritesProducts,
    required TResult Function(SubCategoryatalogEvent value) subCategory,
    required TResult Function(BackPathMenuCatalogEvent value) backPathMenu,
    required TResult Function(SelectFilterCatalogEvent value) selectFilter,
    required TResult Function(DeleteFilterCatalogEvent value) deleteFilter,
    required TResult Function(DeleteCatalogFilterEvent value)
        deleteCatalogFilter,
    required TResult Function(AddFavouriteProductCatalogEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductCatalogEvent value)
        deleteFavouriteProduct,
    required TResult Function(PaginationProductCatalogEvent value)
        paginationProduct,
  }) {
    return updateFavouritesProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitCatalogEvent value)? preloadData,
    TResult? Function(UpdateFavouritesProductsCatalogEvent value)?
        updateFavouritesProducts,
    TResult? Function(SubCategoryatalogEvent value)? subCategory,
    TResult? Function(BackPathMenuCatalogEvent value)? backPathMenu,
    TResult? Function(SelectFilterCatalogEvent value)? selectFilter,
    TResult? Function(DeleteFilterCatalogEvent value)? deleteFilter,
    TResult? Function(DeleteCatalogFilterEvent value)? deleteCatalogFilter,
    TResult? Function(AddFavouriteProductCatalogEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductCatalogEvent value)?
        deleteFavouriteProduct,
    TResult? Function(PaginationProductCatalogEvent value)? paginationProduct,
  }) {
    return updateFavouritesProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitCatalogEvent value)? preloadData,
    TResult Function(UpdateFavouritesProductsCatalogEvent value)?
        updateFavouritesProducts,
    TResult Function(SubCategoryatalogEvent value)? subCategory,
    TResult Function(BackPathMenuCatalogEvent value)? backPathMenu,
    TResult Function(SelectFilterCatalogEvent value)? selectFilter,
    TResult Function(DeleteFilterCatalogEvent value)? deleteFilter,
    TResult Function(DeleteCatalogFilterEvent value)? deleteCatalogFilter,
    TResult Function(AddFavouriteProductCatalogEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductCatalogEvent value)?
        deleteFavouriteProduct,
    TResult Function(PaginationProductCatalogEvent value)? paginationProduct,
    required TResult orElse(),
  }) {
    if (updateFavouritesProducts != null) {
      return updateFavouritesProducts(this);
    }
    return orElse();
  }
}

abstract class UpdateFavouritesProductsCatalogEvent implements CatalogEvent {
  const factory UpdateFavouritesProductsCatalogEvent() =
      _$UpdateFavouritesProductsCatalogEventImpl;
}

/// @nodoc
abstract class _$$SubCategoryatalogEventImplCopyWith<$Res> {
  factory _$$SubCategoryatalogEventImplCopyWith(
          _$SubCategoryatalogEventImpl value,
          $Res Function(_$SubCategoryatalogEventImpl) then) =
      __$$SubCategoryatalogEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String a, int b, int id, String u, int pid, MenuItemDataModel? item});

  $MenuItemDataModelCopyWith<$Res>? get item;
}

/// @nodoc
class __$$SubCategoryatalogEventImplCopyWithImpl<$Res>
    extends _$CatalogEventCopyWithImpl<$Res, _$SubCategoryatalogEventImpl>
    implements _$$SubCategoryatalogEventImplCopyWith<$Res> {
  __$$SubCategoryatalogEventImplCopyWithImpl(
      _$SubCategoryatalogEventImpl _value,
      $Res Function(_$SubCategoryatalogEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
    Object? b = null,
    Object? id = null,
    Object? u = null,
    Object? pid = null,
    Object? item = freezed,
  }) {
    return _then(_$SubCategoryatalogEventImpl(
      a: null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as String,
      b: null == b
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      u: null == u
          ? _value.u
          : u // ignore: cast_nullable_to_non_nullable
              as String,
      pid: null == pid
          ? _value.pid
          : pid // ignore: cast_nullable_to_non_nullable
              as int,
      item: freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as MenuItemDataModel?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $MenuItemDataModelCopyWith<$Res>? get item {
    if (_value.item == null) {
      return null;
    }

    return $MenuItemDataModelCopyWith<$Res>(_value.item!, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc

class _$SubCategoryatalogEventImpl implements SubCategoryatalogEvent {
  const _$SubCategoryatalogEventImpl(
      {required this.a,
      required this.b,
      required this.id,
      required this.u,
      required this.pid,
      this.item});

  @override
  final String a;
  @override
  final int b;
  @override
  final int id;
  @override
  final String u;
  @override
  final int pid;
  @override
  final MenuItemDataModel? item;

  @override
  String toString() {
    return 'CatalogEvent.subCategory(a: $a, b: $b, id: $id, u: $u, pid: $pid, item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubCategoryatalogEventImpl &&
            (identical(other.a, a) || other.a == a) &&
            (identical(other.b, b) || other.b == b) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.u, u) || other.u == u) &&
            (identical(other.pid, pid) || other.pid == pid) &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, a, b, id, u, pid, item);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubCategoryatalogEventImplCopyWith<_$SubCategoryatalogEventImpl>
      get copyWith => __$$SubCategoryatalogEventImplCopyWithImpl<
          _$SubCategoryatalogEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preloadData,
    required TResult Function() updateFavouritesProducts,
    required TResult Function(
            String a, int b, int id, String u, int pid, MenuItemDataModel? item)
        subCategory,
    required TResult Function(int idParent) backPathMenu,
    required TResult Function(
            int index, int indexItem, FilterItemDataModel item)
        selectFilter,
    required TResult Function(
            int index, int indexItem, FilterItemDataModel item)
        deleteFilter,
    required TResult Function(int key, int index, FilterItemDataModel item)
        deleteCatalogFilter,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function(int offset, int limit) paginationProduct,
  }) {
    return subCategory(a, b, id, u, pid, item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? preloadData,
    TResult? Function()? updateFavouritesProducts,
    TResult? Function(String a, int b, int id, String u, int pid,
            MenuItemDataModel? item)?
        subCategory,
    TResult? Function(int idParent)? backPathMenu,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult? Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function(int offset, int limit)? paginationProduct,
  }) {
    return subCategory?.call(a, b, id, u, pid, item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preloadData,
    TResult Function()? updateFavouritesProducts,
    TResult Function(String a, int b, int id, String u, int pid,
            MenuItemDataModel? item)?
        subCategory,
    TResult Function(int idParent)? backPathMenu,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function(int offset, int limit)? paginationProduct,
    required TResult orElse(),
  }) {
    if (subCategory != null) {
      return subCategory(a, b, id, u, pid, item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitCatalogEvent value) preloadData,
    required TResult Function(UpdateFavouritesProductsCatalogEvent value)
        updateFavouritesProducts,
    required TResult Function(SubCategoryatalogEvent value) subCategory,
    required TResult Function(BackPathMenuCatalogEvent value) backPathMenu,
    required TResult Function(SelectFilterCatalogEvent value) selectFilter,
    required TResult Function(DeleteFilterCatalogEvent value) deleteFilter,
    required TResult Function(DeleteCatalogFilterEvent value)
        deleteCatalogFilter,
    required TResult Function(AddFavouriteProductCatalogEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductCatalogEvent value)
        deleteFavouriteProduct,
    required TResult Function(PaginationProductCatalogEvent value)
        paginationProduct,
  }) {
    return subCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitCatalogEvent value)? preloadData,
    TResult? Function(UpdateFavouritesProductsCatalogEvent value)?
        updateFavouritesProducts,
    TResult? Function(SubCategoryatalogEvent value)? subCategory,
    TResult? Function(BackPathMenuCatalogEvent value)? backPathMenu,
    TResult? Function(SelectFilterCatalogEvent value)? selectFilter,
    TResult? Function(DeleteFilterCatalogEvent value)? deleteFilter,
    TResult? Function(DeleteCatalogFilterEvent value)? deleteCatalogFilter,
    TResult? Function(AddFavouriteProductCatalogEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductCatalogEvent value)?
        deleteFavouriteProduct,
    TResult? Function(PaginationProductCatalogEvent value)? paginationProduct,
  }) {
    return subCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitCatalogEvent value)? preloadData,
    TResult Function(UpdateFavouritesProductsCatalogEvent value)?
        updateFavouritesProducts,
    TResult Function(SubCategoryatalogEvent value)? subCategory,
    TResult Function(BackPathMenuCatalogEvent value)? backPathMenu,
    TResult Function(SelectFilterCatalogEvent value)? selectFilter,
    TResult Function(DeleteFilterCatalogEvent value)? deleteFilter,
    TResult Function(DeleteCatalogFilterEvent value)? deleteCatalogFilter,
    TResult Function(AddFavouriteProductCatalogEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductCatalogEvent value)?
        deleteFavouriteProduct,
    TResult Function(PaginationProductCatalogEvent value)? paginationProduct,
    required TResult orElse(),
  }) {
    if (subCategory != null) {
      return subCategory(this);
    }
    return orElse();
  }
}

abstract class SubCategoryatalogEvent implements CatalogEvent {
  const factory SubCategoryatalogEvent(
      {required final String a,
      required final int b,
      required final int id,
      required final String u,
      required final int pid,
      final MenuItemDataModel? item}) = _$SubCategoryatalogEventImpl;

  String get a;
  int get b;
  int get id;
  String get u;
  int get pid;
  MenuItemDataModel? get item;
  @JsonKey(ignore: true)
  _$$SubCategoryatalogEventImplCopyWith<_$SubCategoryatalogEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BackPathMenuCatalogEventImplCopyWith<$Res> {
  factory _$$BackPathMenuCatalogEventImplCopyWith(
          _$BackPathMenuCatalogEventImpl value,
          $Res Function(_$BackPathMenuCatalogEventImpl) then) =
      __$$BackPathMenuCatalogEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int idParent});
}

/// @nodoc
class __$$BackPathMenuCatalogEventImplCopyWithImpl<$Res>
    extends _$CatalogEventCopyWithImpl<$Res, _$BackPathMenuCatalogEventImpl>
    implements _$$BackPathMenuCatalogEventImplCopyWith<$Res> {
  __$$BackPathMenuCatalogEventImplCopyWithImpl(
      _$BackPathMenuCatalogEventImpl _value,
      $Res Function(_$BackPathMenuCatalogEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idParent = null,
  }) {
    return _then(_$BackPathMenuCatalogEventImpl(
      idParent: null == idParent
          ? _value.idParent
          : idParent // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$BackPathMenuCatalogEventImpl implements BackPathMenuCatalogEvent {
  const _$BackPathMenuCatalogEventImpl({required this.idParent});

  @override
  final int idParent;

  @override
  String toString() {
    return 'CatalogEvent.backPathMenu(idParent: $idParent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BackPathMenuCatalogEventImpl &&
            (identical(other.idParent, idParent) ||
                other.idParent == idParent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, idParent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BackPathMenuCatalogEventImplCopyWith<_$BackPathMenuCatalogEventImpl>
      get copyWith => __$$BackPathMenuCatalogEventImplCopyWithImpl<
          _$BackPathMenuCatalogEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preloadData,
    required TResult Function() updateFavouritesProducts,
    required TResult Function(
            String a, int b, int id, String u, int pid, MenuItemDataModel? item)
        subCategory,
    required TResult Function(int idParent) backPathMenu,
    required TResult Function(
            int index, int indexItem, FilterItemDataModel item)
        selectFilter,
    required TResult Function(
            int index, int indexItem, FilterItemDataModel item)
        deleteFilter,
    required TResult Function(int key, int index, FilterItemDataModel item)
        deleteCatalogFilter,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function(int offset, int limit) paginationProduct,
  }) {
    return backPathMenu(idParent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? preloadData,
    TResult? Function()? updateFavouritesProducts,
    TResult? Function(String a, int b, int id, String u, int pid,
            MenuItemDataModel? item)?
        subCategory,
    TResult? Function(int idParent)? backPathMenu,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult? Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function(int offset, int limit)? paginationProduct,
  }) {
    return backPathMenu?.call(idParent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preloadData,
    TResult Function()? updateFavouritesProducts,
    TResult Function(String a, int b, int id, String u, int pid,
            MenuItemDataModel? item)?
        subCategory,
    TResult Function(int idParent)? backPathMenu,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function(int offset, int limit)? paginationProduct,
    required TResult orElse(),
  }) {
    if (backPathMenu != null) {
      return backPathMenu(idParent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitCatalogEvent value) preloadData,
    required TResult Function(UpdateFavouritesProductsCatalogEvent value)
        updateFavouritesProducts,
    required TResult Function(SubCategoryatalogEvent value) subCategory,
    required TResult Function(BackPathMenuCatalogEvent value) backPathMenu,
    required TResult Function(SelectFilterCatalogEvent value) selectFilter,
    required TResult Function(DeleteFilterCatalogEvent value) deleteFilter,
    required TResult Function(DeleteCatalogFilterEvent value)
        deleteCatalogFilter,
    required TResult Function(AddFavouriteProductCatalogEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductCatalogEvent value)
        deleteFavouriteProduct,
    required TResult Function(PaginationProductCatalogEvent value)
        paginationProduct,
  }) {
    return backPathMenu(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitCatalogEvent value)? preloadData,
    TResult? Function(UpdateFavouritesProductsCatalogEvent value)?
        updateFavouritesProducts,
    TResult? Function(SubCategoryatalogEvent value)? subCategory,
    TResult? Function(BackPathMenuCatalogEvent value)? backPathMenu,
    TResult? Function(SelectFilterCatalogEvent value)? selectFilter,
    TResult? Function(DeleteFilterCatalogEvent value)? deleteFilter,
    TResult? Function(DeleteCatalogFilterEvent value)? deleteCatalogFilter,
    TResult? Function(AddFavouriteProductCatalogEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductCatalogEvent value)?
        deleteFavouriteProduct,
    TResult? Function(PaginationProductCatalogEvent value)? paginationProduct,
  }) {
    return backPathMenu?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitCatalogEvent value)? preloadData,
    TResult Function(UpdateFavouritesProductsCatalogEvent value)?
        updateFavouritesProducts,
    TResult Function(SubCategoryatalogEvent value)? subCategory,
    TResult Function(BackPathMenuCatalogEvent value)? backPathMenu,
    TResult Function(SelectFilterCatalogEvent value)? selectFilter,
    TResult Function(DeleteFilterCatalogEvent value)? deleteFilter,
    TResult Function(DeleteCatalogFilterEvent value)? deleteCatalogFilter,
    TResult Function(AddFavouriteProductCatalogEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductCatalogEvent value)?
        deleteFavouriteProduct,
    TResult Function(PaginationProductCatalogEvent value)? paginationProduct,
    required TResult orElse(),
  }) {
    if (backPathMenu != null) {
      return backPathMenu(this);
    }
    return orElse();
  }
}

abstract class BackPathMenuCatalogEvent implements CatalogEvent {
  const factory BackPathMenuCatalogEvent({required final int idParent}) =
      _$BackPathMenuCatalogEventImpl;

  int get idParent;
  @JsonKey(ignore: true)
  _$$BackPathMenuCatalogEventImplCopyWith<_$BackPathMenuCatalogEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectFilterCatalogEventImplCopyWith<$Res> {
  factory _$$SelectFilterCatalogEventImplCopyWith(
          _$SelectFilterCatalogEventImpl value,
          $Res Function(_$SelectFilterCatalogEventImpl) then) =
      __$$SelectFilterCatalogEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index, int indexItem, FilterItemDataModel item});

  $FilterItemDataModelCopyWith<$Res> get item;
}

/// @nodoc
class __$$SelectFilterCatalogEventImplCopyWithImpl<$Res>
    extends _$CatalogEventCopyWithImpl<$Res, _$SelectFilterCatalogEventImpl>
    implements _$$SelectFilterCatalogEventImplCopyWith<$Res> {
  __$$SelectFilterCatalogEventImplCopyWithImpl(
      _$SelectFilterCatalogEventImpl _value,
      $Res Function(_$SelectFilterCatalogEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? indexItem = null,
    Object? item = null,
  }) {
    return _then(_$SelectFilterCatalogEventImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      indexItem: null == indexItem
          ? _value.indexItem
          : indexItem // ignore: cast_nullable_to_non_nullable
              as int,
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as FilterItemDataModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FilterItemDataModelCopyWith<$Res> get item {
    return $FilterItemDataModelCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc

class _$SelectFilterCatalogEventImpl implements SelectFilterCatalogEvent {
  const _$SelectFilterCatalogEventImpl(
      {required this.index, required this.indexItem, required this.item});

  @override
  final int index;
  @override
  final int indexItem;
  @override
  final FilterItemDataModel item;

  @override
  String toString() {
    return 'CatalogEvent.selectFilter(index: $index, indexItem: $indexItem, item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectFilterCatalogEventImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.indexItem, indexItem) ||
                other.indexItem == indexItem) &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, indexItem, item);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectFilterCatalogEventImplCopyWith<_$SelectFilterCatalogEventImpl>
      get copyWith => __$$SelectFilterCatalogEventImplCopyWithImpl<
          _$SelectFilterCatalogEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preloadData,
    required TResult Function() updateFavouritesProducts,
    required TResult Function(
            String a, int b, int id, String u, int pid, MenuItemDataModel? item)
        subCategory,
    required TResult Function(int idParent) backPathMenu,
    required TResult Function(
            int index, int indexItem, FilterItemDataModel item)
        selectFilter,
    required TResult Function(
            int index, int indexItem, FilterItemDataModel item)
        deleteFilter,
    required TResult Function(int key, int index, FilterItemDataModel item)
        deleteCatalogFilter,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function(int offset, int limit) paginationProduct,
  }) {
    return selectFilter(index, indexItem, item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? preloadData,
    TResult? Function()? updateFavouritesProducts,
    TResult? Function(String a, int b, int id, String u, int pid,
            MenuItemDataModel? item)?
        subCategory,
    TResult? Function(int idParent)? backPathMenu,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult? Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function(int offset, int limit)? paginationProduct,
  }) {
    return selectFilter?.call(index, indexItem, item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preloadData,
    TResult Function()? updateFavouritesProducts,
    TResult Function(String a, int b, int id, String u, int pid,
            MenuItemDataModel? item)?
        subCategory,
    TResult Function(int idParent)? backPathMenu,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function(int offset, int limit)? paginationProduct,
    required TResult orElse(),
  }) {
    if (selectFilter != null) {
      return selectFilter(index, indexItem, item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitCatalogEvent value) preloadData,
    required TResult Function(UpdateFavouritesProductsCatalogEvent value)
        updateFavouritesProducts,
    required TResult Function(SubCategoryatalogEvent value) subCategory,
    required TResult Function(BackPathMenuCatalogEvent value) backPathMenu,
    required TResult Function(SelectFilterCatalogEvent value) selectFilter,
    required TResult Function(DeleteFilterCatalogEvent value) deleteFilter,
    required TResult Function(DeleteCatalogFilterEvent value)
        deleteCatalogFilter,
    required TResult Function(AddFavouriteProductCatalogEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductCatalogEvent value)
        deleteFavouriteProduct,
    required TResult Function(PaginationProductCatalogEvent value)
        paginationProduct,
  }) {
    return selectFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitCatalogEvent value)? preloadData,
    TResult? Function(UpdateFavouritesProductsCatalogEvent value)?
        updateFavouritesProducts,
    TResult? Function(SubCategoryatalogEvent value)? subCategory,
    TResult? Function(BackPathMenuCatalogEvent value)? backPathMenu,
    TResult? Function(SelectFilterCatalogEvent value)? selectFilter,
    TResult? Function(DeleteFilterCatalogEvent value)? deleteFilter,
    TResult? Function(DeleteCatalogFilterEvent value)? deleteCatalogFilter,
    TResult? Function(AddFavouriteProductCatalogEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductCatalogEvent value)?
        deleteFavouriteProduct,
    TResult? Function(PaginationProductCatalogEvent value)? paginationProduct,
  }) {
    return selectFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitCatalogEvent value)? preloadData,
    TResult Function(UpdateFavouritesProductsCatalogEvent value)?
        updateFavouritesProducts,
    TResult Function(SubCategoryatalogEvent value)? subCategory,
    TResult Function(BackPathMenuCatalogEvent value)? backPathMenu,
    TResult Function(SelectFilterCatalogEvent value)? selectFilter,
    TResult Function(DeleteFilterCatalogEvent value)? deleteFilter,
    TResult Function(DeleteCatalogFilterEvent value)? deleteCatalogFilter,
    TResult Function(AddFavouriteProductCatalogEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductCatalogEvent value)?
        deleteFavouriteProduct,
    TResult Function(PaginationProductCatalogEvent value)? paginationProduct,
    required TResult orElse(),
  }) {
    if (selectFilter != null) {
      return selectFilter(this);
    }
    return orElse();
  }
}

abstract class SelectFilterCatalogEvent implements CatalogEvent {
  const factory SelectFilterCatalogEvent(
          {required final int index,
          required final int indexItem,
          required final FilterItemDataModel item}) =
      _$SelectFilterCatalogEventImpl;

  int get index;
  int get indexItem;
  FilterItemDataModel get item;
  @JsonKey(ignore: true)
  _$$SelectFilterCatalogEventImplCopyWith<_$SelectFilterCatalogEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteFilterCatalogEventImplCopyWith<$Res> {
  factory _$$DeleteFilterCatalogEventImplCopyWith(
          _$DeleteFilterCatalogEventImpl value,
          $Res Function(_$DeleteFilterCatalogEventImpl) then) =
      __$$DeleteFilterCatalogEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index, int indexItem, FilterItemDataModel item});

  $FilterItemDataModelCopyWith<$Res> get item;
}

/// @nodoc
class __$$DeleteFilterCatalogEventImplCopyWithImpl<$Res>
    extends _$CatalogEventCopyWithImpl<$Res, _$DeleteFilterCatalogEventImpl>
    implements _$$DeleteFilterCatalogEventImplCopyWith<$Res> {
  __$$DeleteFilterCatalogEventImplCopyWithImpl(
      _$DeleteFilterCatalogEventImpl _value,
      $Res Function(_$DeleteFilterCatalogEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? indexItem = null,
    Object? item = null,
  }) {
    return _then(_$DeleteFilterCatalogEventImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      indexItem: null == indexItem
          ? _value.indexItem
          : indexItem // ignore: cast_nullable_to_non_nullable
              as int,
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as FilterItemDataModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FilterItemDataModelCopyWith<$Res> get item {
    return $FilterItemDataModelCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc

class _$DeleteFilterCatalogEventImpl implements DeleteFilterCatalogEvent {
  const _$DeleteFilterCatalogEventImpl(
      {required this.index, required this.indexItem, required this.item});

  @override
  final int index;
  @override
  final int indexItem;
  @override
  final FilterItemDataModel item;

  @override
  String toString() {
    return 'CatalogEvent.deleteFilter(index: $index, indexItem: $indexItem, item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteFilterCatalogEventImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.indexItem, indexItem) ||
                other.indexItem == indexItem) &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, indexItem, item);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteFilterCatalogEventImplCopyWith<_$DeleteFilterCatalogEventImpl>
      get copyWith => __$$DeleteFilterCatalogEventImplCopyWithImpl<
          _$DeleteFilterCatalogEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preloadData,
    required TResult Function() updateFavouritesProducts,
    required TResult Function(
            String a, int b, int id, String u, int pid, MenuItemDataModel? item)
        subCategory,
    required TResult Function(int idParent) backPathMenu,
    required TResult Function(
            int index, int indexItem, FilterItemDataModel item)
        selectFilter,
    required TResult Function(
            int index, int indexItem, FilterItemDataModel item)
        deleteFilter,
    required TResult Function(int key, int index, FilterItemDataModel item)
        deleteCatalogFilter,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function(int offset, int limit) paginationProduct,
  }) {
    return deleteFilter(index, indexItem, item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? preloadData,
    TResult? Function()? updateFavouritesProducts,
    TResult? Function(String a, int b, int id, String u, int pid,
            MenuItemDataModel? item)?
        subCategory,
    TResult? Function(int idParent)? backPathMenu,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult? Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function(int offset, int limit)? paginationProduct,
  }) {
    return deleteFilter?.call(index, indexItem, item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preloadData,
    TResult Function()? updateFavouritesProducts,
    TResult Function(String a, int b, int id, String u, int pid,
            MenuItemDataModel? item)?
        subCategory,
    TResult Function(int idParent)? backPathMenu,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function(int offset, int limit)? paginationProduct,
    required TResult orElse(),
  }) {
    if (deleteFilter != null) {
      return deleteFilter(index, indexItem, item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitCatalogEvent value) preloadData,
    required TResult Function(UpdateFavouritesProductsCatalogEvent value)
        updateFavouritesProducts,
    required TResult Function(SubCategoryatalogEvent value) subCategory,
    required TResult Function(BackPathMenuCatalogEvent value) backPathMenu,
    required TResult Function(SelectFilterCatalogEvent value) selectFilter,
    required TResult Function(DeleteFilterCatalogEvent value) deleteFilter,
    required TResult Function(DeleteCatalogFilterEvent value)
        deleteCatalogFilter,
    required TResult Function(AddFavouriteProductCatalogEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductCatalogEvent value)
        deleteFavouriteProduct,
    required TResult Function(PaginationProductCatalogEvent value)
        paginationProduct,
  }) {
    return deleteFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitCatalogEvent value)? preloadData,
    TResult? Function(UpdateFavouritesProductsCatalogEvent value)?
        updateFavouritesProducts,
    TResult? Function(SubCategoryatalogEvent value)? subCategory,
    TResult? Function(BackPathMenuCatalogEvent value)? backPathMenu,
    TResult? Function(SelectFilterCatalogEvent value)? selectFilter,
    TResult? Function(DeleteFilterCatalogEvent value)? deleteFilter,
    TResult? Function(DeleteCatalogFilterEvent value)? deleteCatalogFilter,
    TResult? Function(AddFavouriteProductCatalogEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductCatalogEvent value)?
        deleteFavouriteProduct,
    TResult? Function(PaginationProductCatalogEvent value)? paginationProduct,
  }) {
    return deleteFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitCatalogEvent value)? preloadData,
    TResult Function(UpdateFavouritesProductsCatalogEvent value)?
        updateFavouritesProducts,
    TResult Function(SubCategoryatalogEvent value)? subCategory,
    TResult Function(BackPathMenuCatalogEvent value)? backPathMenu,
    TResult Function(SelectFilterCatalogEvent value)? selectFilter,
    TResult Function(DeleteFilterCatalogEvent value)? deleteFilter,
    TResult Function(DeleteCatalogFilterEvent value)? deleteCatalogFilter,
    TResult Function(AddFavouriteProductCatalogEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductCatalogEvent value)?
        deleteFavouriteProduct,
    TResult Function(PaginationProductCatalogEvent value)? paginationProduct,
    required TResult orElse(),
  }) {
    if (deleteFilter != null) {
      return deleteFilter(this);
    }
    return orElse();
  }
}

abstract class DeleteFilterCatalogEvent implements CatalogEvent {
  const factory DeleteFilterCatalogEvent(
          {required final int index,
          required final int indexItem,
          required final FilterItemDataModel item}) =
      _$DeleteFilterCatalogEventImpl;

  int get index;
  int get indexItem;
  FilterItemDataModel get item;
  @JsonKey(ignore: true)
  _$$DeleteFilterCatalogEventImplCopyWith<_$DeleteFilterCatalogEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteCatalogFilterEventImplCopyWith<$Res> {
  factory _$$DeleteCatalogFilterEventImplCopyWith(
          _$DeleteCatalogFilterEventImpl value,
          $Res Function(_$DeleteCatalogFilterEventImpl) then) =
      __$$DeleteCatalogFilterEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int key, int index, FilterItemDataModel item});

  $FilterItemDataModelCopyWith<$Res> get item;
}

/// @nodoc
class __$$DeleteCatalogFilterEventImplCopyWithImpl<$Res>
    extends _$CatalogEventCopyWithImpl<$Res, _$DeleteCatalogFilterEventImpl>
    implements _$$DeleteCatalogFilterEventImplCopyWith<$Res> {
  __$$DeleteCatalogFilterEventImplCopyWithImpl(
      _$DeleteCatalogFilterEventImpl _value,
      $Res Function(_$DeleteCatalogFilterEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? index = null,
    Object? item = null,
  }) {
    return _then(_$DeleteCatalogFilterEventImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as int,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as FilterItemDataModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FilterItemDataModelCopyWith<$Res> get item {
    return $FilterItemDataModelCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc

class _$DeleteCatalogFilterEventImpl implements DeleteCatalogFilterEvent {
  const _$DeleteCatalogFilterEventImpl(
      {required this.key, required this.index, required this.item});

  @override
  final int key;
  @override
  final int index;
  @override
  final FilterItemDataModel item;

  @override
  String toString() {
    return 'CatalogEvent.deleteCatalogFilter(key: $key, index: $index, item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCatalogFilterEventImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, key, index, item);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCatalogFilterEventImplCopyWith<_$DeleteCatalogFilterEventImpl>
      get copyWith => __$$DeleteCatalogFilterEventImplCopyWithImpl<
          _$DeleteCatalogFilterEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preloadData,
    required TResult Function() updateFavouritesProducts,
    required TResult Function(
            String a, int b, int id, String u, int pid, MenuItemDataModel? item)
        subCategory,
    required TResult Function(int idParent) backPathMenu,
    required TResult Function(
            int index, int indexItem, FilterItemDataModel item)
        selectFilter,
    required TResult Function(
            int index, int indexItem, FilterItemDataModel item)
        deleteFilter,
    required TResult Function(int key, int index, FilterItemDataModel item)
        deleteCatalogFilter,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function(int offset, int limit) paginationProduct,
  }) {
    return deleteCatalogFilter(key, index, item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? preloadData,
    TResult? Function()? updateFavouritesProducts,
    TResult? Function(String a, int b, int id, String u, int pid,
            MenuItemDataModel? item)?
        subCategory,
    TResult? Function(int idParent)? backPathMenu,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult? Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function(int offset, int limit)? paginationProduct,
  }) {
    return deleteCatalogFilter?.call(key, index, item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preloadData,
    TResult Function()? updateFavouritesProducts,
    TResult Function(String a, int b, int id, String u, int pid,
            MenuItemDataModel? item)?
        subCategory,
    TResult Function(int idParent)? backPathMenu,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function(int offset, int limit)? paginationProduct,
    required TResult orElse(),
  }) {
    if (deleteCatalogFilter != null) {
      return deleteCatalogFilter(key, index, item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitCatalogEvent value) preloadData,
    required TResult Function(UpdateFavouritesProductsCatalogEvent value)
        updateFavouritesProducts,
    required TResult Function(SubCategoryatalogEvent value) subCategory,
    required TResult Function(BackPathMenuCatalogEvent value) backPathMenu,
    required TResult Function(SelectFilterCatalogEvent value) selectFilter,
    required TResult Function(DeleteFilterCatalogEvent value) deleteFilter,
    required TResult Function(DeleteCatalogFilterEvent value)
        deleteCatalogFilter,
    required TResult Function(AddFavouriteProductCatalogEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductCatalogEvent value)
        deleteFavouriteProduct,
    required TResult Function(PaginationProductCatalogEvent value)
        paginationProduct,
  }) {
    return deleteCatalogFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitCatalogEvent value)? preloadData,
    TResult? Function(UpdateFavouritesProductsCatalogEvent value)?
        updateFavouritesProducts,
    TResult? Function(SubCategoryatalogEvent value)? subCategory,
    TResult? Function(BackPathMenuCatalogEvent value)? backPathMenu,
    TResult? Function(SelectFilterCatalogEvent value)? selectFilter,
    TResult? Function(DeleteFilterCatalogEvent value)? deleteFilter,
    TResult? Function(DeleteCatalogFilterEvent value)? deleteCatalogFilter,
    TResult? Function(AddFavouriteProductCatalogEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductCatalogEvent value)?
        deleteFavouriteProduct,
    TResult? Function(PaginationProductCatalogEvent value)? paginationProduct,
  }) {
    return deleteCatalogFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitCatalogEvent value)? preloadData,
    TResult Function(UpdateFavouritesProductsCatalogEvent value)?
        updateFavouritesProducts,
    TResult Function(SubCategoryatalogEvent value)? subCategory,
    TResult Function(BackPathMenuCatalogEvent value)? backPathMenu,
    TResult Function(SelectFilterCatalogEvent value)? selectFilter,
    TResult Function(DeleteFilterCatalogEvent value)? deleteFilter,
    TResult Function(DeleteCatalogFilterEvent value)? deleteCatalogFilter,
    TResult Function(AddFavouriteProductCatalogEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductCatalogEvent value)?
        deleteFavouriteProduct,
    TResult Function(PaginationProductCatalogEvent value)? paginationProduct,
    required TResult orElse(),
  }) {
    if (deleteCatalogFilter != null) {
      return deleteCatalogFilter(this);
    }
    return orElse();
  }
}

abstract class DeleteCatalogFilterEvent implements CatalogEvent {
  const factory DeleteCatalogFilterEvent(
          {required final int key,
          required final int index,
          required final FilterItemDataModel item}) =
      _$DeleteCatalogFilterEventImpl;

  int get key;
  int get index;
  FilterItemDataModel get item;
  @JsonKey(ignore: true)
  _$$DeleteCatalogFilterEventImplCopyWith<_$DeleteCatalogFilterEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddFavouriteProductCatalogEventImplCopyWith<$Res> {
  factory _$$AddFavouriteProductCatalogEventImplCopyWith(
          _$AddFavouriteProductCatalogEventImpl value,
          $Res Function(_$AddFavouriteProductCatalogEventImpl) then) =
      __$$AddFavouriteProductCatalogEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index, ProductDataModel product});

  $ProductDataModelCopyWith<$Res> get product;
}

/// @nodoc
class __$$AddFavouriteProductCatalogEventImplCopyWithImpl<$Res>
    extends _$CatalogEventCopyWithImpl<$Res,
        _$AddFavouriteProductCatalogEventImpl>
    implements _$$AddFavouriteProductCatalogEventImplCopyWith<$Res> {
  __$$AddFavouriteProductCatalogEventImplCopyWithImpl(
      _$AddFavouriteProductCatalogEventImpl _value,
      $Res Function(_$AddFavouriteProductCatalogEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? product = null,
  }) {
    return _then(_$AddFavouriteProductCatalogEventImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductDataModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductDataModelCopyWith<$Res> get product {
    return $ProductDataModelCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc

class _$AddFavouriteProductCatalogEventImpl
    implements AddFavouriteProductCatalogEvent {
  const _$AddFavouriteProductCatalogEventImpl(
      {required this.index, required this.product});

  @override
  final int index;
  @override
  final ProductDataModel product;

  @override
  String toString() {
    return 'CatalogEvent.addFavouriteProduct(index: $index, product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddFavouriteProductCatalogEventImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddFavouriteProductCatalogEventImplCopyWith<
          _$AddFavouriteProductCatalogEventImpl>
      get copyWith => __$$AddFavouriteProductCatalogEventImplCopyWithImpl<
          _$AddFavouriteProductCatalogEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preloadData,
    required TResult Function() updateFavouritesProducts,
    required TResult Function(
            String a, int b, int id, String u, int pid, MenuItemDataModel? item)
        subCategory,
    required TResult Function(int idParent) backPathMenu,
    required TResult Function(
            int index, int indexItem, FilterItemDataModel item)
        selectFilter,
    required TResult Function(
            int index, int indexItem, FilterItemDataModel item)
        deleteFilter,
    required TResult Function(int key, int index, FilterItemDataModel item)
        deleteCatalogFilter,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function(int offset, int limit) paginationProduct,
  }) {
    return addFavouriteProduct(index, product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? preloadData,
    TResult? Function()? updateFavouritesProducts,
    TResult? Function(String a, int b, int id, String u, int pid,
            MenuItemDataModel? item)?
        subCategory,
    TResult? Function(int idParent)? backPathMenu,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult? Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function(int offset, int limit)? paginationProduct,
  }) {
    return addFavouriteProduct?.call(index, product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preloadData,
    TResult Function()? updateFavouritesProducts,
    TResult Function(String a, int b, int id, String u, int pid,
            MenuItemDataModel? item)?
        subCategory,
    TResult Function(int idParent)? backPathMenu,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function(int offset, int limit)? paginationProduct,
    required TResult orElse(),
  }) {
    if (addFavouriteProduct != null) {
      return addFavouriteProduct(index, product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitCatalogEvent value) preloadData,
    required TResult Function(UpdateFavouritesProductsCatalogEvent value)
        updateFavouritesProducts,
    required TResult Function(SubCategoryatalogEvent value) subCategory,
    required TResult Function(BackPathMenuCatalogEvent value) backPathMenu,
    required TResult Function(SelectFilterCatalogEvent value) selectFilter,
    required TResult Function(DeleteFilterCatalogEvent value) deleteFilter,
    required TResult Function(DeleteCatalogFilterEvent value)
        deleteCatalogFilter,
    required TResult Function(AddFavouriteProductCatalogEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductCatalogEvent value)
        deleteFavouriteProduct,
    required TResult Function(PaginationProductCatalogEvent value)
        paginationProduct,
  }) {
    return addFavouriteProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitCatalogEvent value)? preloadData,
    TResult? Function(UpdateFavouritesProductsCatalogEvent value)?
        updateFavouritesProducts,
    TResult? Function(SubCategoryatalogEvent value)? subCategory,
    TResult? Function(BackPathMenuCatalogEvent value)? backPathMenu,
    TResult? Function(SelectFilterCatalogEvent value)? selectFilter,
    TResult? Function(DeleteFilterCatalogEvent value)? deleteFilter,
    TResult? Function(DeleteCatalogFilterEvent value)? deleteCatalogFilter,
    TResult? Function(AddFavouriteProductCatalogEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductCatalogEvent value)?
        deleteFavouriteProduct,
    TResult? Function(PaginationProductCatalogEvent value)? paginationProduct,
  }) {
    return addFavouriteProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitCatalogEvent value)? preloadData,
    TResult Function(UpdateFavouritesProductsCatalogEvent value)?
        updateFavouritesProducts,
    TResult Function(SubCategoryatalogEvent value)? subCategory,
    TResult Function(BackPathMenuCatalogEvent value)? backPathMenu,
    TResult Function(SelectFilterCatalogEvent value)? selectFilter,
    TResult Function(DeleteFilterCatalogEvent value)? deleteFilter,
    TResult Function(DeleteCatalogFilterEvent value)? deleteCatalogFilter,
    TResult Function(AddFavouriteProductCatalogEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductCatalogEvent value)?
        deleteFavouriteProduct,
    TResult Function(PaginationProductCatalogEvent value)? paginationProduct,
    required TResult orElse(),
  }) {
    if (addFavouriteProduct != null) {
      return addFavouriteProduct(this);
    }
    return orElse();
  }
}

abstract class AddFavouriteProductCatalogEvent implements CatalogEvent {
  const factory AddFavouriteProductCatalogEvent(
          {required final int index, required final ProductDataModel product}) =
      _$AddFavouriteProductCatalogEventImpl;

  int get index;
  ProductDataModel get product;
  @JsonKey(ignore: true)
  _$$AddFavouriteProductCatalogEventImplCopyWith<
          _$AddFavouriteProductCatalogEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteFavouriteProductCatalogEventImplCopyWith<$Res> {
  factory _$$DeleteFavouriteProductCatalogEventImplCopyWith(
          _$DeleteFavouriteProductCatalogEventImpl value,
          $Res Function(_$DeleteFavouriteProductCatalogEventImpl) then) =
      __$$DeleteFavouriteProductCatalogEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$DeleteFavouriteProductCatalogEventImplCopyWithImpl<$Res>
    extends _$CatalogEventCopyWithImpl<$Res,
        _$DeleteFavouriteProductCatalogEventImpl>
    implements _$$DeleteFavouriteProductCatalogEventImplCopyWith<$Res> {
  __$$DeleteFavouriteProductCatalogEventImplCopyWithImpl(
      _$DeleteFavouriteProductCatalogEventImpl _value,
      $Res Function(_$DeleteFavouriteProductCatalogEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$DeleteFavouriteProductCatalogEventImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteFavouriteProductCatalogEventImpl
    implements DeleteFavouriteProductCatalogEvent {
  const _$DeleteFavouriteProductCatalogEventImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'CatalogEvent.deleteFavouriteProduct(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteFavouriteProductCatalogEventImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteFavouriteProductCatalogEventImplCopyWith<
          _$DeleteFavouriteProductCatalogEventImpl>
      get copyWith => __$$DeleteFavouriteProductCatalogEventImplCopyWithImpl<
          _$DeleteFavouriteProductCatalogEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preloadData,
    required TResult Function() updateFavouritesProducts,
    required TResult Function(
            String a, int b, int id, String u, int pid, MenuItemDataModel? item)
        subCategory,
    required TResult Function(int idParent) backPathMenu,
    required TResult Function(
            int index, int indexItem, FilterItemDataModel item)
        selectFilter,
    required TResult Function(
            int index, int indexItem, FilterItemDataModel item)
        deleteFilter,
    required TResult Function(int key, int index, FilterItemDataModel item)
        deleteCatalogFilter,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function(int offset, int limit) paginationProduct,
  }) {
    return deleteFavouriteProduct(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? preloadData,
    TResult? Function()? updateFavouritesProducts,
    TResult? Function(String a, int b, int id, String u, int pid,
            MenuItemDataModel? item)?
        subCategory,
    TResult? Function(int idParent)? backPathMenu,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult? Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function(int offset, int limit)? paginationProduct,
  }) {
    return deleteFavouriteProduct?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preloadData,
    TResult Function()? updateFavouritesProducts,
    TResult Function(String a, int b, int id, String u, int pid,
            MenuItemDataModel? item)?
        subCategory,
    TResult Function(int idParent)? backPathMenu,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function(int offset, int limit)? paginationProduct,
    required TResult orElse(),
  }) {
    if (deleteFavouriteProduct != null) {
      return deleteFavouriteProduct(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitCatalogEvent value) preloadData,
    required TResult Function(UpdateFavouritesProductsCatalogEvent value)
        updateFavouritesProducts,
    required TResult Function(SubCategoryatalogEvent value) subCategory,
    required TResult Function(BackPathMenuCatalogEvent value) backPathMenu,
    required TResult Function(SelectFilterCatalogEvent value) selectFilter,
    required TResult Function(DeleteFilterCatalogEvent value) deleteFilter,
    required TResult Function(DeleteCatalogFilterEvent value)
        deleteCatalogFilter,
    required TResult Function(AddFavouriteProductCatalogEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductCatalogEvent value)
        deleteFavouriteProduct,
    required TResult Function(PaginationProductCatalogEvent value)
        paginationProduct,
  }) {
    return deleteFavouriteProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitCatalogEvent value)? preloadData,
    TResult? Function(UpdateFavouritesProductsCatalogEvent value)?
        updateFavouritesProducts,
    TResult? Function(SubCategoryatalogEvent value)? subCategory,
    TResult? Function(BackPathMenuCatalogEvent value)? backPathMenu,
    TResult? Function(SelectFilterCatalogEvent value)? selectFilter,
    TResult? Function(DeleteFilterCatalogEvent value)? deleteFilter,
    TResult? Function(DeleteCatalogFilterEvent value)? deleteCatalogFilter,
    TResult? Function(AddFavouriteProductCatalogEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductCatalogEvent value)?
        deleteFavouriteProduct,
    TResult? Function(PaginationProductCatalogEvent value)? paginationProduct,
  }) {
    return deleteFavouriteProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitCatalogEvent value)? preloadData,
    TResult Function(UpdateFavouritesProductsCatalogEvent value)?
        updateFavouritesProducts,
    TResult Function(SubCategoryatalogEvent value)? subCategory,
    TResult Function(BackPathMenuCatalogEvent value)? backPathMenu,
    TResult Function(SelectFilterCatalogEvent value)? selectFilter,
    TResult Function(DeleteFilterCatalogEvent value)? deleteFilter,
    TResult Function(DeleteCatalogFilterEvent value)? deleteCatalogFilter,
    TResult Function(AddFavouriteProductCatalogEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductCatalogEvent value)?
        deleteFavouriteProduct,
    TResult Function(PaginationProductCatalogEvent value)? paginationProduct,
    required TResult orElse(),
  }) {
    if (deleteFavouriteProduct != null) {
      return deleteFavouriteProduct(this);
    }
    return orElse();
  }
}

abstract class DeleteFavouriteProductCatalogEvent implements CatalogEvent {
  const factory DeleteFavouriteProductCatalogEvent({required final int index}) =
      _$DeleteFavouriteProductCatalogEventImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$DeleteFavouriteProductCatalogEventImplCopyWith<
          _$DeleteFavouriteProductCatalogEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaginationProductCatalogEventImplCopyWith<$Res> {
  factory _$$PaginationProductCatalogEventImplCopyWith(
          _$PaginationProductCatalogEventImpl value,
          $Res Function(_$PaginationProductCatalogEventImpl) then) =
      __$$PaginationProductCatalogEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int offset, int limit});
}

/// @nodoc
class __$$PaginationProductCatalogEventImplCopyWithImpl<$Res>
    extends _$CatalogEventCopyWithImpl<$Res,
        _$PaginationProductCatalogEventImpl>
    implements _$$PaginationProductCatalogEventImplCopyWith<$Res> {
  __$$PaginationProductCatalogEventImplCopyWithImpl(
      _$PaginationProductCatalogEventImpl _value,
      $Res Function(_$PaginationProductCatalogEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = null,
    Object? limit = null,
  }) {
    return _then(_$PaginationProductCatalogEventImpl(
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PaginationProductCatalogEventImpl
    implements PaginationProductCatalogEvent {
  const _$PaginationProductCatalogEventImpl(
      {required this.offset, required this.limit});

  @override
  final int offset;
  @override
  final int limit;

  @override
  String toString() {
    return 'CatalogEvent.paginationProduct(offset: $offset, limit: $limit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationProductCatalogEventImpl &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, offset, limit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationProductCatalogEventImplCopyWith<
          _$PaginationProductCatalogEventImpl>
      get copyWith => __$$PaginationProductCatalogEventImplCopyWithImpl<
          _$PaginationProductCatalogEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preloadData,
    required TResult Function() updateFavouritesProducts,
    required TResult Function(
            String a, int b, int id, String u, int pid, MenuItemDataModel? item)
        subCategory,
    required TResult Function(int idParent) backPathMenu,
    required TResult Function(
            int index, int indexItem, FilterItemDataModel item)
        selectFilter,
    required TResult Function(
            int index, int indexItem, FilterItemDataModel item)
        deleteFilter,
    required TResult Function(int key, int index, FilterItemDataModel item)
        deleteCatalogFilter,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function(int offset, int limit) paginationProduct,
  }) {
    return paginationProduct(offset, limit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? preloadData,
    TResult? Function()? updateFavouritesProducts,
    TResult? Function(String a, int b, int id, String u, int pid,
            MenuItemDataModel? item)?
        subCategory,
    TResult? Function(int idParent)? backPathMenu,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult? Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function(int offset, int limit)? paginationProduct,
  }) {
    return paginationProduct?.call(offset, limit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preloadData,
    TResult Function()? updateFavouritesProducts,
    TResult Function(String a, int b, int id, String u, int pid,
            MenuItemDataModel? item)?
        subCategory,
    TResult Function(int idParent)? backPathMenu,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function(int offset, int limit)? paginationProduct,
    required TResult orElse(),
  }) {
    if (paginationProduct != null) {
      return paginationProduct(offset, limit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitCatalogEvent value) preloadData,
    required TResult Function(UpdateFavouritesProductsCatalogEvent value)
        updateFavouritesProducts,
    required TResult Function(SubCategoryatalogEvent value) subCategory,
    required TResult Function(BackPathMenuCatalogEvent value) backPathMenu,
    required TResult Function(SelectFilterCatalogEvent value) selectFilter,
    required TResult Function(DeleteFilterCatalogEvent value) deleteFilter,
    required TResult Function(DeleteCatalogFilterEvent value)
        deleteCatalogFilter,
    required TResult Function(AddFavouriteProductCatalogEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductCatalogEvent value)
        deleteFavouriteProduct,
    required TResult Function(PaginationProductCatalogEvent value)
        paginationProduct,
  }) {
    return paginationProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitCatalogEvent value)? preloadData,
    TResult? Function(UpdateFavouritesProductsCatalogEvent value)?
        updateFavouritesProducts,
    TResult? Function(SubCategoryatalogEvent value)? subCategory,
    TResult? Function(BackPathMenuCatalogEvent value)? backPathMenu,
    TResult? Function(SelectFilterCatalogEvent value)? selectFilter,
    TResult? Function(DeleteFilterCatalogEvent value)? deleteFilter,
    TResult? Function(DeleteCatalogFilterEvent value)? deleteCatalogFilter,
    TResult? Function(AddFavouriteProductCatalogEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductCatalogEvent value)?
        deleteFavouriteProduct,
    TResult? Function(PaginationProductCatalogEvent value)? paginationProduct,
  }) {
    return paginationProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitCatalogEvent value)? preloadData,
    TResult Function(UpdateFavouritesProductsCatalogEvent value)?
        updateFavouritesProducts,
    TResult Function(SubCategoryatalogEvent value)? subCategory,
    TResult Function(BackPathMenuCatalogEvent value)? backPathMenu,
    TResult Function(SelectFilterCatalogEvent value)? selectFilter,
    TResult Function(DeleteFilterCatalogEvent value)? deleteFilter,
    TResult Function(DeleteCatalogFilterEvent value)? deleteCatalogFilter,
    TResult Function(AddFavouriteProductCatalogEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductCatalogEvent value)?
        deleteFavouriteProduct,
    TResult Function(PaginationProductCatalogEvent value)? paginationProduct,
    required TResult orElse(),
  }) {
    if (paginationProduct != null) {
      return paginationProduct(this);
    }
    return orElse();
  }
}

abstract class PaginationProductCatalogEvent implements CatalogEvent {
  const factory PaginationProductCatalogEvent(
      {required final int offset,
      required final int limit}) = _$PaginationProductCatalogEventImpl;

  int get offset;
  int get limit;
  @JsonKey(ignore: true)
  _$$PaginationProductCatalogEventImplCopyWith<
          _$PaginationProductCatalogEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CatalogState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function(
            List<MenuItemDataModel> menu,
            List<ProductDataModel> defaultProducts,
            List<ProductDataModel> products,
            List<ProductDataModel> favouritesProducts,
            List<FilterInfoDataModel> filter,
            Map<int, List<FilterItemDataModel>> selectFilter,
            List<Map<int, FilterItemDataModel>> allSelectFilter,
            List<MenuItemDataModel> pathMenu)
        preloadDataCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function(
            List<MenuItemDataModel> menu,
            List<ProductDataModel> defaultProducts,
            List<ProductDataModel> products,
            List<ProductDataModel> favouritesProducts,
            List<FilterInfoDataModel> filter,
            Map<int, List<FilterItemDataModel>> selectFilter,
            List<Map<int, FilterItemDataModel>> allSelectFilter,
            List<MenuItemDataModel> pathMenu)?
        preloadDataCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(
            List<MenuItemDataModel> menu,
            List<ProductDataModel> defaultProducts,
            List<ProductDataModel> products,
            List<ProductDataModel> favouritesProducts,
            List<FilterInfoDataModel> filter,
            Map<int, List<FilterItemDataModel>> selectFilter,
            List<Map<int, FilterItemDataModel>> allSelectFilter,
            List<MenuItemDataModel> pathMenu)?
        preloadDataCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitCatalogState value) init,
    required TResult Function(LoadingCatalogState value) load,
    required TResult Function(PreloadDataCompletedCatalogState value)
        preloadDataCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitCatalogState value)? init,
    TResult? Function(LoadingCatalogState value)? load,
    TResult? Function(PreloadDataCompletedCatalogState value)?
        preloadDataCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitCatalogState value)? init,
    TResult Function(LoadingCatalogState value)? load,
    TResult Function(PreloadDataCompletedCatalogState value)?
        preloadDataCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogStateCopyWith<$Res> {
  factory $CatalogStateCopyWith(
          CatalogState value, $Res Function(CatalogState) then) =
      _$CatalogStateCopyWithImpl<$Res, CatalogState>;
}

/// @nodoc
class _$CatalogStateCopyWithImpl<$Res, $Val extends CatalogState>
    implements $CatalogStateCopyWith<$Res> {
  _$CatalogStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitCatalogStateImplCopyWith<$Res> {
  factory _$$InitCatalogStateImplCopyWith(_$InitCatalogStateImpl value,
          $Res Function(_$InitCatalogStateImpl) then) =
      __$$InitCatalogStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitCatalogStateImplCopyWithImpl<$Res>
    extends _$CatalogStateCopyWithImpl<$Res, _$InitCatalogStateImpl>
    implements _$$InitCatalogStateImplCopyWith<$Res> {
  __$$InitCatalogStateImplCopyWithImpl(_$InitCatalogStateImpl _value,
      $Res Function(_$InitCatalogStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitCatalogStateImpl implements InitCatalogState {
  const _$InitCatalogStateImpl();

  @override
  String toString() {
    return 'CatalogState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitCatalogStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function(
            List<MenuItemDataModel> menu,
            List<ProductDataModel> defaultProducts,
            List<ProductDataModel> products,
            List<ProductDataModel> favouritesProducts,
            List<FilterInfoDataModel> filter,
            Map<int, List<FilterItemDataModel>> selectFilter,
            List<Map<int, FilterItemDataModel>> allSelectFilter,
            List<MenuItemDataModel> pathMenu)
        preloadDataCompleted,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function(
            List<MenuItemDataModel> menu,
            List<ProductDataModel> defaultProducts,
            List<ProductDataModel> products,
            List<ProductDataModel> favouritesProducts,
            List<FilterInfoDataModel> filter,
            Map<int, List<FilterItemDataModel>> selectFilter,
            List<Map<int, FilterItemDataModel>> allSelectFilter,
            List<MenuItemDataModel> pathMenu)?
        preloadDataCompleted,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(
            List<MenuItemDataModel> menu,
            List<ProductDataModel> defaultProducts,
            List<ProductDataModel> products,
            List<ProductDataModel> favouritesProducts,
            List<FilterInfoDataModel> filter,
            Map<int, List<FilterItemDataModel>> selectFilter,
            List<Map<int, FilterItemDataModel>> allSelectFilter,
            List<MenuItemDataModel> pathMenu)?
        preloadDataCompleted,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitCatalogState value) init,
    required TResult Function(LoadingCatalogState value) load,
    required TResult Function(PreloadDataCompletedCatalogState value)
        preloadDataCompleted,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitCatalogState value)? init,
    TResult? Function(LoadingCatalogState value)? load,
    TResult? Function(PreloadDataCompletedCatalogState value)?
        preloadDataCompleted,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitCatalogState value)? init,
    TResult Function(LoadingCatalogState value)? load,
    TResult Function(PreloadDataCompletedCatalogState value)?
        preloadDataCompleted,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitCatalogState implements CatalogState {
  const factory InitCatalogState() = _$InitCatalogStateImpl;
}

/// @nodoc
abstract class _$$LoadingCatalogStateImplCopyWith<$Res> {
  factory _$$LoadingCatalogStateImplCopyWith(_$LoadingCatalogStateImpl value,
          $Res Function(_$LoadingCatalogStateImpl) then) =
      __$$LoadingCatalogStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCatalogStateImplCopyWithImpl<$Res>
    extends _$CatalogStateCopyWithImpl<$Res, _$LoadingCatalogStateImpl>
    implements _$$LoadingCatalogStateImplCopyWith<$Res> {
  __$$LoadingCatalogStateImplCopyWithImpl(_$LoadingCatalogStateImpl _value,
      $Res Function(_$LoadingCatalogStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingCatalogStateImpl implements LoadingCatalogState {
  const _$LoadingCatalogStateImpl();

  @override
  String toString() {
    return 'CatalogState.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingCatalogStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function(
            List<MenuItemDataModel> menu,
            List<ProductDataModel> defaultProducts,
            List<ProductDataModel> products,
            List<ProductDataModel> favouritesProducts,
            List<FilterInfoDataModel> filter,
            Map<int, List<FilterItemDataModel>> selectFilter,
            List<Map<int, FilterItemDataModel>> allSelectFilter,
            List<MenuItemDataModel> pathMenu)
        preloadDataCompleted,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function(
            List<MenuItemDataModel> menu,
            List<ProductDataModel> defaultProducts,
            List<ProductDataModel> products,
            List<ProductDataModel> favouritesProducts,
            List<FilterInfoDataModel> filter,
            Map<int, List<FilterItemDataModel>> selectFilter,
            List<Map<int, FilterItemDataModel>> allSelectFilter,
            List<MenuItemDataModel> pathMenu)?
        preloadDataCompleted,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(
            List<MenuItemDataModel> menu,
            List<ProductDataModel> defaultProducts,
            List<ProductDataModel> products,
            List<ProductDataModel> favouritesProducts,
            List<FilterInfoDataModel> filter,
            Map<int, List<FilterItemDataModel>> selectFilter,
            List<Map<int, FilterItemDataModel>> allSelectFilter,
            List<MenuItemDataModel> pathMenu)?
        preloadDataCompleted,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitCatalogState value) init,
    required TResult Function(LoadingCatalogState value) load,
    required TResult Function(PreloadDataCompletedCatalogState value)
        preloadDataCompleted,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitCatalogState value)? init,
    TResult? Function(LoadingCatalogState value)? load,
    TResult? Function(PreloadDataCompletedCatalogState value)?
        preloadDataCompleted,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitCatalogState value)? init,
    TResult Function(LoadingCatalogState value)? load,
    TResult Function(PreloadDataCompletedCatalogState value)?
        preloadDataCompleted,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LoadingCatalogState implements CatalogState {
  const factory LoadingCatalogState() = _$LoadingCatalogStateImpl;
}

/// @nodoc
abstract class _$$PreloadDataCompletedCatalogStateImplCopyWith<$Res> {
  factory _$$PreloadDataCompletedCatalogStateImplCopyWith(
          _$PreloadDataCompletedCatalogStateImpl value,
          $Res Function(_$PreloadDataCompletedCatalogStateImpl) then) =
      __$$PreloadDataCompletedCatalogStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<MenuItemDataModel> menu,
      List<ProductDataModel> defaultProducts,
      List<ProductDataModel> products,
      List<ProductDataModel> favouritesProducts,
      List<FilterInfoDataModel> filter,
      Map<int, List<FilterItemDataModel>> selectFilter,
      List<Map<int, FilterItemDataModel>> allSelectFilter,
      List<MenuItemDataModel> pathMenu});
}

/// @nodoc
class __$$PreloadDataCompletedCatalogStateImplCopyWithImpl<$Res>
    extends _$CatalogStateCopyWithImpl<$Res,
        _$PreloadDataCompletedCatalogStateImpl>
    implements _$$PreloadDataCompletedCatalogStateImplCopyWith<$Res> {
  __$$PreloadDataCompletedCatalogStateImplCopyWithImpl(
      _$PreloadDataCompletedCatalogStateImpl _value,
      $Res Function(_$PreloadDataCompletedCatalogStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? menu = null,
    Object? defaultProducts = null,
    Object? products = null,
    Object? favouritesProducts = null,
    Object? filter = null,
    Object? selectFilter = null,
    Object? allSelectFilter = null,
    Object? pathMenu = null,
  }) {
    return _then(_$PreloadDataCompletedCatalogStateImpl(
      menu: null == menu
          ? _value._menu
          : menu // ignore: cast_nullable_to_non_nullable
              as List<MenuItemDataModel>,
      defaultProducts: null == defaultProducts
          ? _value._defaultProducts
          : defaultProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductDataModel>,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductDataModel>,
      favouritesProducts: null == favouritesProducts
          ? _value._favouritesProducts
          : favouritesProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductDataModel>,
      filter: null == filter
          ? _value._filter
          : filter // ignore: cast_nullable_to_non_nullable
              as List<FilterInfoDataModel>,
      selectFilter: null == selectFilter
          ? _value._selectFilter
          : selectFilter // ignore: cast_nullable_to_non_nullable
              as Map<int, List<FilterItemDataModel>>,
      allSelectFilter: null == allSelectFilter
          ? _value._allSelectFilter
          : allSelectFilter // ignore: cast_nullable_to_non_nullable
              as List<Map<int, FilterItemDataModel>>,
      pathMenu: null == pathMenu
          ? _value._pathMenu
          : pathMenu // ignore: cast_nullable_to_non_nullable
              as List<MenuItemDataModel>,
    ));
  }
}

/// @nodoc

class _$PreloadDataCompletedCatalogStateImpl
    implements PreloadDataCompletedCatalogState {
  const _$PreloadDataCompletedCatalogStateImpl(
      {required final List<MenuItemDataModel> menu,
      required final List<ProductDataModel> defaultProducts,
      required final List<ProductDataModel> products,
      required final List<ProductDataModel> favouritesProducts,
      required final List<FilterInfoDataModel> filter,
      required final Map<int, List<FilterItemDataModel>> selectFilter,
      required final List<Map<int, FilterItemDataModel>> allSelectFilter,
      required final List<MenuItemDataModel> pathMenu})
      : _menu = menu,
        _defaultProducts = defaultProducts,
        _products = products,
        _favouritesProducts = favouritesProducts,
        _filter = filter,
        _selectFilter = selectFilter,
        _allSelectFilter = allSelectFilter,
        _pathMenu = pathMenu;

  final List<MenuItemDataModel> _menu;
  @override
  List<MenuItemDataModel> get menu {
    if (_menu is EqualUnmodifiableListView) return _menu;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_menu);
  }

  final List<ProductDataModel> _defaultProducts;
  @override
  List<ProductDataModel> get defaultProducts {
    if (_defaultProducts is EqualUnmodifiableListView) return _defaultProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_defaultProducts);
  }

  final List<ProductDataModel> _products;
  @override
  List<ProductDataModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  final List<ProductDataModel> _favouritesProducts;
  @override
  List<ProductDataModel> get favouritesProducts {
    if (_favouritesProducts is EqualUnmodifiableListView)
      return _favouritesProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favouritesProducts);
  }

  final List<FilterInfoDataModel> _filter;
  @override
  List<FilterInfoDataModel> get filter {
    if (_filter is EqualUnmodifiableListView) return _filter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filter);
  }

  final Map<int, List<FilterItemDataModel>> _selectFilter;
  @override
  Map<int, List<FilterItemDataModel>> get selectFilter {
    if (_selectFilter is EqualUnmodifiableMapView) return _selectFilter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_selectFilter);
  }

  final List<Map<int, FilterItemDataModel>> _allSelectFilter;
  @override
  List<Map<int, FilterItemDataModel>> get allSelectFilter {
    if (_allSelectFilter is EqualUnmodifiableListView) return _allSelectFilter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allSelectFilter);
  }

  final List<MenuItemDataModel> _pathMenu;
  @override
  List<MenuItemDataModel> get pathMenu {
    if (_pathMenu is EqualUnmodifiableListView) return _pathMenu;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pathMenu);
  }

  @override
  String toString() {
    return 'CatalogState.preloadDataCompleted(menu: $menu, defaultProducts: $defaultProducts, products: $products, favouritesProducts: $favouritesProducts, filter: $filter, selectFilter: $selectFilter, allSelectFilter: $allSelectFilter, pathMenu: $pathMenu)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreloadDataCompletedCatalogStateImpl &&
            const DeepCollectionEquality().equals(other._menu, _menu) &&
            const DeepCollectionEquality()
                .equals(other._defaultProducts, _defaultProducts) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality()
                .equals(other._favouritesProducts, _favouritesProducts) &&
            const DeepCollectionEquality().equals(other._filter, _filter) &&
            const DeepCollectionEquality()
                .equals(other._selectFilter, _selectFilter) &&
            const DeepCollectionEquality()
                .equals(other._allSelectFilter, _allSelectFilter) &&
            const DeepCollectionEquality().equals(other._pathMenu, _pathMenu));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_menu),
      const DeepCollectionEquality().hash(_defaultProducts),
      const DeepCollectionEquality().hash(_products),
      const DeepCollectionEquality().hash(_favouritesProducts),
      const DeepCollectionEquality().hash(_filter),
      const DeepCollectionEquality().hash(_selectFilter),
      const DeepCollectionEquality().hash(_allSelectFilter),
      const DeepCollectionEquality().hash(_pathMenu));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PreloadDataCompletedCatalogStateImplCopyWith<
          _$PreloadDataCompletedCatalogStateImpl>
      get copyWith => __$$PreloadDataCompletedCatalogStateImplCopyWithImpl<
          _$PreloadDataCompletedCatalogStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function(
            List<MenuItemDataModel> menu,
            List<ProductDataModel> defaultProducts,
            List<ProductDataModel> products,
            List<ProductDataModel> favouritesProducts,
            List<FilterInfoDataModel> filter,
            Map<int, List<FilterItemDataModel>> selectFilter,
            List<Map<int, FilterItemDataModel>> allSelectFilter,
            List<MenuItemDataModel> pathMenu)
        preloadDataCompleted,
  }) {
    return preloadDataCompleted(menu, defaultProducts, products,
        favouritesProducts, filter, selectFilter, allSelectFilter, pathMenu);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function(
            List<MenuItemDataModel> menu,
            List<ProductDataModel> defaultProducts,
            List<ProductDataModel> products,
            List<ProductDataModel> favouritesProducts,
            List<FilterInfoDataModel> filter,
            Map<int, List<FilterItemDataModel>> selectFilter,
            List<Map<int, FilterItemDataModel>> allSelectFilter,
            List<MenuItemDataModel> pathMenu)?
        preloadDataCompleted,
  }) {
    return preloadDataCompleted?.call(menu, defaultProducts, products,
        favouritesProducts, filter, selectFilter, allSelectFilter, pathMenu);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(
            List<MenuItemDataModel> menu,
            List<ProductDataModel> defaultProducts,
            List<ProductDataModel> products,
            List<ProductDataModel> favouritesProducts,
            List<FilterInfoDataModel> filter,
            Map<int, List<FilterItemDataModel>> selectFilter,
            List<Map<int, FilterItemDataModel>> allSelectFilter,
            List<MenuItemDataModel> pathMenu)?
        preloadDataCompleted,
    required TResult orElse(),
  }) {
    if (preloadDataCompleted != null) {
      return preloadDataCompleted(menu, defaultProducts, products,
          favouritesProducts, filter, selectFilter, allSelectFilter, pathMenu);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitCatalogState value) init,
    required TResult Function(LoadingCatalogState value) load,
    required TResult Function(PreloadDataCompletedCatalogState value)
        preloadDataCompleted,
  }) {
    return preloadDataCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitCatalogState value)? init,
    TResult? Function(LoadingCatalogState value)? load,
    TResult? Function(PreloadDataCompletedCatalogState value)?
        preloadDataCompleted,
  }) {
    return preloadDataCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitCatalogState value)? init,
    TResult Function(LoadingCatalogState value)? load,
    TResult Function(PreloadDataCompletedCatalogState value)?
        preloadDataCompleted,
    required TResult orElse(),
  }) {
    if (preloadDataCompleted != null) {
      return preloadDataCompleted(this);
    }
    return orElse();
  }
}

abstract class PreloadDataCompletedCatalogState implements CatalogState {
  const factory PreloadDataCompletedCatalogState(
          {required final List<MenuItemDataModel> menu,
          required final List<ProductDataModel> defaultProducts,
          required final List<ProductDataModel> products,
          required final List<ProductDataModel> favouritesProducts,
          required final List<FilterInfoDataModel> filter,
          required final Map<int, List<FilterItemDataModel>> selectFilter,
          required final List<Map<int, FilterItemDataModel>> allSelectFilter,
          required final List<MenuItemDataModel> pathMenu}) =
      _$PreloadDataCompletedCatalogStateImpl;

  List<MenuItemDataModel> get menu;
  List<ProductDataModel> get defaultProducts;
  List<ProductDataModel> get products;
  List<ProductDataModel> get favouritesProducts;
  List<FilterInfoDataModel> get filter;
  Map<int, List<FilterItemDataModel>> get selectFilter;
  List<Map<int, FilterItemDataModel>> get allSelectFilter;
  List<MenuItemDataModel> get pathMenu;
  @JsonKey(ignore: true)
  _$$PreloadDataCompletedCatalogStateImplCopyWith<
          _$PreloadDataCompletedCatalogStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
