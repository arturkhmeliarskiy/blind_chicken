// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favourites_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavouritesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preloadData,
    required TResult Function(
            int index, int indexItem, FilterItemDataModel item)
        selectFilter,
    required TResult Function(
            int index, int indexItem, FilterItemDataModel item)
        deleteFilter,
    required TResult Function(int index) removeSelectFilterCategory,
    required TResult Function() removeSelectAllFilters,
    required TResult Function(int key, int index, FilterItemDataModel item)
        deleteCatalogFilter,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function(String code) getInfoProduct,
    required TResult Function() goBackProductInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? preloadData,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult? Function(int index)? removeSelectFilterCategory,
    TResult? Function()? removeSelectAllFilters,
    TResult? Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function(String code)? getInfoProduct,
    TResult? Function()? goBackProductInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preloadData,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult Function(int index)? removeSelectFilterCategory,
    TResult Function()? removeSelectAllFilters,
    TResult Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function(String code)? getInfoProduct,
    TResult Function()? goBackProductInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitFavouritesEvent value) preloadData,
    required TResult Function(SelectFilterFavouritesEvent value) selectFilter,
    required TResult Function(DeleteFilterFavouritesEvent value) deleteFilter,
    required TResult Function(RemoveSelectFilterCategotyFavouritesEvent value)
        removeSelectFilterCategory,
    required TResult Function(
            RemoveSelectAllFiltersCategotyFavouritesEvent value)
        removeSelectAllFilters,
    required TResult Function(DeleteCatalogFavouritesEvent value)
        deleteCatalogFilter,
    required TResult Function(AddFavouriteProductFavouritesEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductFavouritesEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductFavouritesEvent value)
        getInfoProduct,
    required TResult Function(GoBackProductInfoCategotyFavouritesEvent value)
        goBackProductInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitFavouritesEvent value)? preloadData,
    TResult? Function(SelectFilterFavouritesEvent value)? selectFilter,
    TResult? Function(DeleteFilterFavouritesEvent value)? deleteFilter,
    TResult? Function(RemoveSelectFilterCategotyFavouritesEvent value)?
        removeSelectFilterCategory,
    TResult? Function(RemoveSelectAllFiltersCategotyFavouritesEvent value)?
        removeSelectAllFilters,
    TResult? Function(DeleteCatalogFavouritesEvent value)? deleteCatalogFilter,
    TResult? Function(AddFavouriteProductFavouritesEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductFavouritesEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductFavouritesEvent value)? getInfoProduct,
    TResult? Function(GoBackProductInfoCategotyFavouritesEvent value)?
        goBackProductInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitFavouritesEvent value)? preloadData,
    TResult Function(SelectFilterFavouritesEvent value)? selectFilter,
    TResult Function(DeleteFilterFavouritesEvent value)? deleteFilter,
    TResult Function(RemoveSelectFilterCategotyFavouritesEvent value)?
        removeSelectFilterCategory,
    TResult Function(RemoveSelectAllFiltersCategotyFavouritesEvent value)?
        removeSelectAllFilters,
    TResult Function(DeleteCatalogFavouritesEvent value)? deleteCatalogFilter,
    TResult Function(AddFavouriteProductFavouritesEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductFavouritesEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductFavouritesEvent value)? getInfoProduct,
    TResult Function(GoBackProductInfoCategotyFavouritesEvent value)?
        goBackProductInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouritesEventCopyWith<$Res> {
  factory $FavouritesEventCopyWith(
          FavouritesEvent value, $Res Function(FavouritesEvent) then) =
      _$FavouritesEventCopyWithImpl<$Res, FavouritesEvent>;
}

/// @nodoc
class _$FavouritesEventCopyWithImpl<$Res, $Val extends FavouritesEvent>
    implements $FavouritesEventCopyWith<$Res> {
  _$FavouritesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitFavouritesEventImplCopyWith<$Res> {
  factory _$$InitFavouritesEventImplCopyWith(_$InitFavouritesEventImpl value,
          $Res Function(_$InitFavouritesEventImpl) then) =
      __$$InitFavouritesEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitFavouritesEventImplCopyWithImpl<$Res>
    extends _$FavouritesEventCopyWithImpl<$Res, _$InitFavouritesEventImpl>
    implements _$$InitFavouritesEventImplCopyWith<$Res> {
  __$$InitFavouritesEventImplCopyWithImpl(_$InitFavouritesEventImpl _value,
      $Res Function(_$InitFavouritesEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitFavouritesEventImpl implements InitFavouritesEvent {
  const _$InitFavouritesEventImpl();

  @override
  String toString() {
    return 'FavouritesEvent.preloadData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitFavouritesEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preloadData,
    required TResult Function(
            int index, int indexItem, FilterItemDataModel item)
        selectFilter,
    required TResult Function(
            int index, int indexItem, FilterItemDataModel item)
        deleteFilter,
    required TResult Function(int index) removeSelectFilterCategory,
    required TResult Function() removeSelectAllFilters,
    required TResult Function(int key, int index, FilterItemDataModel item)
        deleteCatalogFilter,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function(String code) getInfoProduct,
    required TResult Function() goBackProductInfo,
  }) {
    return preloadData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? preloadData,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult? Function(int index)? removeSelectFilterCategory,
    TResult? Function()? removeSelectAllFilters,
    TResult? Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function(String code)? getInfoProduct,
    TResult? Function()? goBackProductInfo,
  }) {
    return preloadData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preloadData,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult Function(int index)? removeSelectFilterCategory,
    TResult Function()? removeSelectAllFilters,
    TResult Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function(String code)? getInfoProduct,
    TResult Function()? goBackProductInfo,
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
    required TResult Function(InitFavouritesEvent value) preloadData,
    required TResult Function(SelectFilterFavouritesEvent value) selectFilter,
    required TResult Function(DeleteFilterFavouritesEvent value) deleteFilter,
    required TResult Function(RemoveSelectFilterCategotyFavouritesEvent value)
        removeSelectFilterCategory,
    required TResult Function(
            RemoveSelectAllFiltersCategotyFavouritesEvent value)
        removeSelectAllFilters,
    required TResult Function(DeleteCatalogFavouritesEvent value)
        deleteCatalogFilter,
    required TResult Function(AddFavouriteProductFavouritesEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductFavouritesEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductFavouritesEvent value)
        getInfoProduct,
    required TResult Function(GoBackProductInfoCategotyFavouritesEvent value)
        goBackProductInfo,
  }) {
    return preloadData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitFavouritesEvent value)? preloadData,
    TResult? Function(SelectFilterFavouritesEvent value)? selectFilter,
    TResult? Function(DeleteFilterFavouritesEvent value)? deleteFilter,
    TResult? Function(RemoveSelectFilterCategotyFavouritesEvent value)?
        removeSelectFilterCategory,
    TResult? Function(RemoveSelectAllFiltersCategotyFavouritesEvent value)?
        removeSelectAllFilters,
    TResult? Function(DeleteCatalogFavouritesEvent value)? deleteCatalogFilter,
    TResult? Function(AddFavouriteProductFavouritesEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductFavouritesEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductFavouritesEvent value)? getInfoProduct,
    TResult? Function(GoBackProductInfoCategotyFavouritesEvent value)?
        goBackProductInfo,
  }) {
    return preloadData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitFavouritesEvent value)? preloadData,
    TResult Function(SelectFilterFavouritesEvent value)? selectFilter,
    TResult Function(DeleteFilterFavouritesEvent value)? deleteFilter,
    TResult Function(RemoveSelectFilterCategotyFavouritesEvent value)?
        removeSelectFilterCategory,
    TResult Function(RemoveSelectAllFiltersCategotyFavouritesEvent value)?
        removeSelectAllFilters,
    TResult Function(DeleteCatalogFavouritesEvent value)? deleteCatalogFilter,
    TResult Function(AddFavouriteProductFavouritesEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductFavouritesEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductFavouritesEvent value)? getInfoProduct,
    TResult Function(GoBackProductInfoCategotyFavouritesEvent value)?
        goBackProductInfo,
    required TResult orElse(),
  }) {
    if (preloadData != null) {
      return preloadData(this);
    }
    return orElse();
  }
}

abstract class InitFavouritesEvent implements FavouritesEvent {
  const factory InitFavouritesEvent() = _$InitFavouritesEventImpl;
}

/// @nodoc
abstract class _$$SelectFilterFavouritesEventImplCopyWith<$Res> {
  factory _$$SelectFilterFavouritesEventImplCopyWith(
          _$SelectFilterFavouritesEventImpl value,
          $Res Function(_$SelectFilterFavouritesEventImpl) then) =
      __$$SelectFilterFavouritesEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index, int indexItem, FilterItemDataModel item});

  $FilterItemDataModelCopyWith<$Res> get item;
}

/// @nodoc
class __$$SelectFilterFavouritesEventImplCopyWithImpl<$Res>
    extends _$FavouritesEventCopyWithImpl<$Res,
        _$SelectFilterFavouritesEventImpl>
    implements _$$SelectFilterFavouritesEventImplCopyWith<$Res> {
  __$$SelectFilterFavouritesEventImplCopyWithImpl(
      _$SelectFilterFavouritesEventImpl _value,
      $Res Function(_$SelectFilterFavouritesEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? indexItem = null,
    Object? item = null,
  }) {
    return _then(_$SelectFilterFavouritesEventImpl(
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

class _$SelectFilterFavouritesEventImpl implements SelectFilterFavouritesEvent {
  const _$SelectFilterFavouritesEventImpl(
      {required this.index, required this.indexItem, required this.item});

  @override
  final int index;
  @override
  final int indexItem;
  @override
  final FilterItemDataModel item;

  @override
  String toString() {
    return 'FavouritesEvent.selectFilter(index: $index, indexItem: $indexItem, item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectFilterFavouritesEventImpl &&
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
  _$$SelectFilterFavouritesEventImplCopyWith<_$SelectFilterFavouritesEventImpl>
      get copyWith => __$$SelectFilterFavouritesEventImplCopyWithImpl<
          _$SelectFilterFavouritesEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preloadData,
    required TResult Function(
            int index, int indexItem, FilterItemDataModel item)
        selectFilter,
    required TResult Function(
            int index, int indexItem, FilterItemDataModel item)
        deleteFilter,
    required TResult Function(int index) removeSelectFilterCategory,
    required TResult Function() removeSelectAllFilters,
    required TResult Function(int key, int index, FilterItemDataModel item)
        deleteCatalogFilter,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function(String code) getInfoProduct,
    required TResult Function() goBackProductInfo,
  }) {
    return selectFilter(index, indexItem, item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? preloadData,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult? Function(int index)? removeSelectFilterCategory,
    TResult? Function()? removeSelectAllFilters,
    TResult? Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function(String code)? getInfoProduct,
    TResult? Function()? goBackProductInfo,
  }) {
    return selectFilter?.call(index, indexItem, item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preloadData,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult Function(int index)? removeSelectFilterCategory,
    TResult Function()? removeSelectAllFilters,
    TResult Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function(String code)? getInfoProduct,
    TResult Function()? goBackProductInfo,
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
    required TResult Function(InitFavouritesEvent value) preloadData,
    required TResult Function(SelectFilterFavouritesEvent value) selectFilter,
    required TResult Function(DeleteFilterFavouritesEvent value) deleteFilter,
    required TResult Function(RemoveSelectFilterCategotyFavouritesEvent value)
        removeSelectFilterCategory,
    required TResult Function(
            RemoveSelectAllFiltersCategotyFavouritesEvent value)
        removeSelectAllFilters,
    required TResult Function(DeleteCatalogFavouritesEvent value)
        deleteCatalogFilter,
    required TResult Function(AddFavouriteProductFavouritesEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductFavouritesEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductFavouritesEvent value)
        getInfoProduct,
    required TResult Function(GoBackProductInfoCategotyFavouritesEvent value)
        goBackProductInfo,
  }) {
    return selectFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitFavouritesEvent value)? preloadData,
    TResult? Function(SelectFilterFavouritesEvent value)? selectFilter,
    TResult? Function(DeleteFilterFavouritesEvent value)? deleteFilter,
    TResult? Function(RemoveSelectFilterCategotyFavouritesEvent value)?
        removeSelectFilterCategory,
    TResult? Function(RemoveSelectAllFiltersCategotyFavouritesEvent value)?
        removeSelectAllFilters,
    TResult? Function(DeleteCatalogFavouritesEvent value)? deleteCatalogFilter,
    TResult? Function(AddFavouriteProductFavouritesEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductFavouritesEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductFavouritesEvent value)? getInfoProduct,
    TResult? Function(GoBackProductInfoCategotyFavouritesEvent value)?
        goBackProductInfo,
  }) {
    return selectFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitFavouritesEvent value)? preloadData,
    TResult Function(SelectFilterFavouritesEvent value)? selectFilter,
    TResult Function(DeleteFilterFavouritesEvent value)? deleteFilter,
    TResult Function(RemoveSelectFilterCategotyFavouritesEvent value)?
        removeSelectFilterCategory,
    TResult Function(RemoveSelectAllFiltersCategotyFavouritesEvent value)?
        removeSelectAllFilters,
    TResult Function(DeleteCatalogFavouritesEvent value)? deleteCatalogFilter,
    TResult Function(AddFavouriteProductFavouritesEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductFavouritesEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductFavouritesEvent value)? getInfoProduct,
    TResult Function(GoBackProductInfoCategotyFavouritesEvent value)?
        goBackProductInfo,
    required TResult orElse(),
  }) {
    if (selectFilter != null) {
      return selectFilter(this);
    }
    return orElse();
  }
}

abstract class SelectFilterFavouritesEvent implements FavouritesEvent {
  const factory SelectFilterFavouritesEvent(
          {required final int index,
          required final int indexItem,
          required final FilterItemDataModel item}) =
      _$SelectFilterFavouritesEventImpl;

  int get index;
  int get indexItem;
  FilterItemDataModel get item;
  @JsonKey(ignore: true)
  _$$SelectFilterFavouritesEventImplCopyWith<_$SelectFilterFavouritesEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteFilterFavouritesEventImplCopyWith<$Res> {
  factory _$$DeleteFilterFavouritesEventImplCopyWith(
          _$DeleteFilterFavouritesEventImpl value,
          $Res Function(_$DeleteFilterFavouritesEventImpl) then) =
      __$$DeleteFilterFavouritesEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index, int indexItem, FilterItemDataModel item});

  $FilterItemDataModelCopyWith<$Res> get item;
}

/// @nodoc
class __$$DeleteFilterFavouritesEventImplCopyWithImpl<$Res>
    extends _$FavouritesEventCopyWithImpl<$Res,
        _$DeleteFilterFavouritesEventImpl>
    implements _$$DeleteFilterFavouritesEventImplCopyWith<$Res> {
  __$$DeleteFilterFavouritesEventImplCopyWithImpl(
      _$DeleteFilterFavouritesEventImpl _value,
      $Res Function(_$DeleteFilterFavouritesEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? indexItem = null,
    Object? item = null,
  }) {
    return _then(_$DeleteFilterFavouritesEventImpl(
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

class _$DeleteFilterFavouritesEventImpl implements DeleteFilterFavouritesEvent {
  const _$DeleteFilterFavouritesEventImpl(
      {required this.index, required this.indexItem, required this.item});

  @override
  final int index;
  @override
  final int indexItem;
  @override
  final FilterItemDataModel item;

  @override
  String toString() {
    return 'FavouritesEvent.deleteFilter(index: $index, indexItem: $indexItem, item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteFilterFavouritesEventImpl &&
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
  _$$DeleteFilterFavouritesEventImplCopyWith<_$DeleteFilterFavouritesEventImpl>
      get copyWith => __$$DeleteFilterFavouritesEventImplCopyWithImpl<
          _$DeleteFilterFavouritesEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preloadData,
    required TResult Function(
            int index, int indexItem, FilterItemDataModel item)
        selectFilter,
    required TResult Function(
            int index, int indexItem, FilterItemDataModel item)
        deleteFilter,
    required TResult Function(int index) removeSelectFilterCategory,
    required TResult Function() removeSelectAllFilters,
    required TResult Function(int key, int index, FilterItemDataModel item)
        deleteCatalogFilter,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function(String code) getInfoProduct,
    required TResult Function() goBackProductInfo,
  }) {
    return deleteFilter(index, indexItem, item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? preloadData,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult? Function(int index)? removeSelectFilterCategory,
    TResult? Function()? removeSelectAllFilters,
    TResult? Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function(String code)? getInfoProduct,
    TResult? Function()? goBackProductInfo,
  }) {
    return deleteFilter?.call(index, indexItem, item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preloadData,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult Function(int index)? removeSelectFilterCategory,
    TResult Function()? removeSelectAllFilters,
    TResult Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function(String code)? getInfoProduct,
    TResult Function()? goBackProductInfo,
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
    required TResult Function(InitFavouritesEvent value) preloadData,
    required TResult Function(SelectFilterFavouritesEvent value) selectFilter,
    required TResult Function(DeleteFilterFavouritesEvent value) deleteFilter,
    required TResult Function(RemoveSelectFilterCategotyFavouritesEvent value)
        removeSelectFilterCategory,
    required TResult Function(
            RemoveSelectAllFiltersCategotyFavouritesEvent value)
        removeSelectAllFilters,
    required TResult Function(DeleteCatalogFavouritesEvent value)
        deleteCatalogFilter,
    required TResult Function(AddFavouriteProductFavouritesEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductFavouritesEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductFavouritesEvent value)
        getInfoProduct,
    required TResult Function(GoBackProductInfoCategotyFavouritesEvent value)
        goBackProductInfo,
  }) {
    return deleteFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitFavouritesEvent value)? preloadData,
    TResult? Function(SelectFilterFavouritesEvent value)? selectFilter,
    TResult? Function(DeleteFilterFavouritesEvent value)? deleteFilter,
    TResult? Function(RemoveSelectFilterCategotyFavouritesEvent value)?
        removeSelectFilterCategory,
    TResult? Function(RemoveSelectAllFiltersCategotyFavouritesEvent value)?
        removeSelectAllFilters,
    TResult? Function(DeleteCatalogFavouritesEvent value)? deleteCatalogFilter,
    TResult? Function(AddFavouriteProductFavouritesEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductFavouritesEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductFavouritesEvent value)? getInfoProduct,
    TResult? Function(GoBackProductInfoCategotyFavouritesEvent value)?
        goBackProductInfo,
  }) {
    return deleteFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitFavouritesEvent value)? preloadData,
    TResult Function(SelectFilterFavouritesEvent value)? selectFilter,
    TResult Function(DeleteFilterFavouritesEvent value)? deleteFilter,
    TResult Function(RemoveSelectFilterCategotyFavouritesEvent value)?
        removeSelectFilterCategory,
    TResult Function(RemoveSelectAllFiltersCategotyFavouritesEvent value)?
        removeSelectAllFilters,
    TResult Function(DeleteCatalogFavouritesEvent value)? deleteCatalogFilter,
    TResult Function(AddFavouriteProductFavouritesEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductFavouritesEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductFavouritesEvent value)? getInfoProduct,
    TResult Function(GoBackProductInfoCategotyFavouritesEvent value)?
        goBackProductInfo,
    required TResult orElse(),
  }) {
    if (deleteFilter != null) {
      return deleteFilter(this);
    }
    return orElse();
  }
}

abstract class DeleteFilterFavouritesEvent implements FavouritesEvent {
  const factory DeleteFilterFavouritesEvent(
          {required final int index,
          required final int indexItem,
          required final FilterItemDataModel item}) =
      _$DeleteFilterFavouritesEventImpl;

  int get index;
  int get indexItem;
  FilterItemDataModel get item;
  @JsonKey(ignore: true)
  _$$DeleteFilterFavouritesEventImplCopyWith<_$DeleteFilterFavouritesEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveSelectFilterCategotyFavouritesEventImplCopyWith<$Res> {
  factory _$$RemoveSelectFilterCategotyFavouritesEventImplCopyWith(
          _$RemoveSelectFilterCategotyFavouritesEventImpl value,
          $Res Function(_$RemoveSelectFilterCategotyFavouritesEventImpl) then) =
      __$$RemoveSelectFilterCategotyFavouritesEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$RemoveSelectFilterCategotyFavouritesEventImplCopyWithImpl<$Res>
    extends _$FavouritesEventCopyWithImpl<$Res,
        _$RemoveSelectFilterCategotyFavouritesEventImpl>
    implements _$$RemoveSelectFilterCategotyFavouritesEventImplCopyWith<$Res> {
  __$$RemoveSelectFilterCategotyFavouritesEventImplCopyWithImpl(
      _$RemoveSelectFilterCategotyFavouritesEventImpl _value,
      $Res Function(_$RemoveSelectFilterCategotyFavouritesEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$RemoveSelectFilterCategotyFavouritesEventImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RemoveSelectFilterCategotyFavouritesEventImpl
    implements RemoveSelectFilterCategotyFavouritesEvent {
  const _$RemoveSelectFilterCategotyFavouritesEventImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'FavouritesEvent.removeSelectFilterCategory(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveSelectFilterCategotyFavouritesEventImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveSelectFilterCategotyFavouritesEventImplCopyWith<
          _$RemoveSelectFilterCategotyFavouritesEventImpl>
      get copyWith =>
          __$$RemoveSelectFilterCategotyFavouritesEventImplCopyWithImpl<
                  _$RemoveSelectFilterCategotyFavouritesEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preloadData,
    required TResult Function(
            int index, int indexItem, FilterItemDataModel item)
        selectFilter,
    required TResult Function(
            int index, int indexItem, FilterItemDataModel item)
        deleteFilter,
    required TResult Function(int index) removeSelectFilterCategory,
    required TResult Function() removeSelectAllFilters,
    required TResult Function(int key, int index, FilterItemDataModel item)
        deleteCatalogFilter,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function(String code) getInfoProduct,
    required TResult Function() goBackProductInfo,
  }) {
    return removeSelectFilterCategory(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? preloadData,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult? Function(int index)? removeSelectFilterCategory,
    TResult? Function()? removeSelectAllFilters,
    TResult? Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function(String code)? getInfoProduct,
    TResult? Function()? goBackProductInfo,
  }) {
    return removeSelectFilterCategory?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preloadData,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult Function(int index)? removeSelectFilterCategory,
    TResult Function()? removeSelectAllFilters,
    TResult Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function(String code)? getInfoProduct,
    TResult Function()? goBackProductInfo,
    required TResult orElse(),
  }) {
    if (removeSelectFilterCategory != null) {
      return removeSelectFilterCategory(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitFavouritesEvent value) preloadData,
    required TResult Function(SelectFilterFavouritesEvent value) selectFilter,
    required TResult Function(DeleteFilterFavouritesEvent value) deleteFilter,
    required TResult Function(RemoveSelectFilterCategotyFavouritesEvent value)
        removeSelectFilterCategory,
    required TResult Function(
            RemoveSelectAllFiltersCategotyFavouritesEvent value)
        removeSelectAllFilters,
    required TResult Function(DeleteCatalogFavouritesEvent value)
        deleteCatalogFilter,
    required TResult Function(AddFavouriteProductFavouritesEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductFavouritesEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductFavouritesEvent value)
        getInfoProduct,
    required TResult Function(GoBackProductInfoCategotyFavouritesEvent value)
        goBackProductInfo,
  }) {
    return removeSelectFilterCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitFavouritesEvent value)? preloadData,
    TResult? Function(SelectFilterFavouritesEvent value)? selectFilter,
    TResult? Function(DeleteFilterFavouritesEvent value)? deleteFilter,
    TResult? Function(RemoveSelectFilterCategotyFavouritesEvent value)?
        removeSelectFilterCategory,
    TResult? Function(RemoveSelectAllFiltersCategotyFavouritesEvent value)?
        removeSelectAllFilters,
    TResult? Function(DeleteCatalogFavouritesEvent value)? deleteCatalogFilter,
    TResult? Function(AddFavouriteProductFavouritesEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductFavouritesEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductFavouritesEvent value)? getInfoProduct,
    TResult? Function(GoBackProductInfoCategotyFavouritesEvent value)?
        goBackProductInfo,
  }) {
    return removeSelectFilterCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitFavouritesEvent value)? preloadData,
    TResult Function(SelectFilterFavouritesEvent value)? selectFilter,
    TResult Function(DeleteFilterFavouritesEvent value)? deleteFilter,
    TResult Function(RemoveSelectFilterCategotyFavouritesEvent value)?
        removeSelectFilterCategory,
    TResult Function(RemoveSelectAllFiltersCategotyFavouritesEvent value)?
        removeSelectAllFilters,
    TResult Function(DeleteCatalogFavouritesEvent value)? deleteCatalogFilter,
    TResult Function(AddFavouriteProductFavouritesEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductFavouritesEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductFavouritesEvent value)? getInfoProduct,
    TResult Function(GoBackProductInfoCategotyFavouritesEvent value)?
        goBackProductInfo,
    required TResult orElse(),
  }) {
    if (removeSelectFilterCategory != null) {
      return removeSelectFilterCategory(this);
    }
    return orElse();
  }
}

abstract class RemoveSelectFilterCategotyFavouritesEvent
    implements FavouritesEvent {
  const factory RemoveSelectFilterCategotyFavouritesEvent(
          {required final int index}) =
      _$RemoveSelectFilterCategotyFavouritesEventImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$RemoveSelectFilterCategotyFavouritesEventImplCopyWith<
          _$RemoveSelectFilterCategotyFavouritesEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveSelectAllFiltersCategotyFavouritesEventImplCopyWith<
    $Res> {
  factory _$$RemoveSelectAllFiltersCategotyFavouritesEventImplCopyWith(
          _$RemoveSelectAllFiltersCategotyFavouritesEventImpl value,
          $Res Function(_$RemoveSelectAllFiltersCategotyFavouritesEventImpl)
              then) =
      __$$RemoveSelectAllFiltersCategotyFavouritesEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RemoveSelectAllFiltersCategotyFavouritesEventImplCopyWithImpl<$Res>
    extends _$FavouritesEventCopyWithImpl<$Res,
        _$RemoveSelectAllFiltersCategotyFavouritesEventImpl>
    implements
        _$$RemoveSelectAllFiltersCategotyFavouritesEventImplCopyWith<$Res> {
  __$$RemoveSelectAllFiltersCategotyFavouritesEventImplCopyWithImpl(
      _$RemoveSelectAllFiltersCategotyFavouritesEventImpl _value,
      $Res Function(_$RemoveSelectAllFiltersCategotyFavouritesEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RemoveSelectAllFiltersCategotyFavouritesEventImpl
    implements RemoveSelectAllFiltersCategotyFavouritesEvent {
  const _$RemoveSelectAllFiltersCategotyFavouritesEventImpl();

  @override
  String toString() {
    return 'FavouritesEvent.removeSelectAllFilters()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveSelectAllFiltersCategotyFavouritesEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preloadData,
    required TResult Function(
            int index, int indexItem, FilterItemDataModel item)
        selectFilter,
    required TResult Function(
            int index, int indexItem, FilterItemDataModel item)
        deleteFilter,
    required TResult Function(int index) removeSelectFilterCategory,
    required TResult Function() removeSelectAllFilters,
    required TResult Function(int key, int index, FilterItemDataModel item)
        deleteCatalogFilter,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function(String code) getInfoProduct,
    required TResult Function() goBackProductInfo,
  }) {
    return removeSelectAllFilters();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? preloadData,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult? Function(int index)? removeSelectFilterCategory,
    TResult? Function()? removeSelectAllFilters,
    TResult? Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function(String code)? getInfoProduct,
    TResult? Function()? goBackProductInfo,
  }) {
    return removeSelectAllFilters?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preloadData,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult Function(int index)? removeSelectFilterCategory,
    TResult Function()? removeSelectAllFilters,
    TResult Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function(String code)? getInfoProduct,
    TResult Function()? goBackProductInfo,
    required TResult orElse(),
  }) {
    if (removeSelectAllFilters != null) {
      return removeSelectAllFilters();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitFavouritesEvent value) preloadData,
    required TResult Function(SelectFilterFavouritesEvent value) selectFilter,
    required TResult Function(DeleteFilterFavouritesEvent value) deleteFilter,
    required TResult Function(RemoveSelectFilterCategotyFavouritesEvent value)
        removeSelectFilterCategory,
    required TResult Function(
            RemoveSelectAllFiltersCategotyFavouritesEvent value)
        removeSelectAllFilters,
    required TResult Function(DeleteCatalogFavouritesEvent value)
        deleteCatalogFilter,
    required TResult Function(AddFavouriteProductFavouritesEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductFavouritesEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductFavouritesEvent value)
        getInfoProduct,
    required TResult Function(GoBackProductInfoCategotyFavouritesEvent value)
        goBackProductInfo,
  }) {
    return removeSelectAllFilters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitFavouritesEvent value)? preloadData,
    TResult? Function(SelectFilterFavouritesEvent value)? selectFilter,
    TResult? Function(DeleteFilterFavouritesEvent value)? deleteFilter,
    TResult? Function(RemoveSelectFilterCategotyFavouritesEvent value)?
        removeSelectFilterCategory,
    TResult? Function(RemoveSelectAllFiltersCategotyFavouritesEvent value)?
        removeSelectAllFilters,
    TResult? Function(DeleteCatalogFavouritesEvent value)? deleteCatalogFilter,
    TResult? Function(AddFavouriteProductFavouritesEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductFavouritesEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductFavouritesEvent value)? getInfoProduct,
    TResult? Function(GoBackProductInfoCategotyFavouritesEvent value)?
        goBackProductInfo,
  }) {
    return removeSelectAllFilters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitFavouritesEvent value)? preloadData,
    TResult Function(SelectFilterFavouritesEvent value)? selectFilter,
    TResult Function(DeleteFilterFavouritesEvent value)? deleteFilter,
    TResult Function(RemoveSelectFilterCategotyFavouritesEvent value)?
        removeSelectFilterCategory,
    TResult Function(RemoveSelectAllFiltersCategotyFavouritesEvent value)?
        removeSelectAllFilters,
    TResult Function(DeleteCatalogFavouritesEvent value)? deleteCatalogFilter,
    TResult Function(AddFavouriteProductFavouritesEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductFavouritesEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductFavouritesEvent value)? getInfoProduct,
    TResult Function(GoBackProductInfoCategotyFavouritesEvent value)?
        goBackProductInfo,
    required TResult orElse(),
  }) {
    if (removeSelectAllFilters != null) {
      return removeSelectAllFilters(this);
    }
    return orElse();
  }
}

abstract class RemoveSelectAllFiltersCategotyFavouritesEvent
    implements FavouritesEvent {
  const factory RemoveSelectAllFiltersCategotyFavouritesEvent() =
      _$RemoveSelectAllFiltersCategotyFavouritesEventImpl;
}

/// @nodoc
abstract class _$$DeleteCatalogFavouritesEventImplCopyWith<$Res> {
  factory _$$DeleteCatalogFavouritesEventImplCopyWith(
          _$DeleteCatalogFavouritesEventImpl value,
          $Res Function(_$DeleteCatalogFavouritesEventImpl) then) =
      __$$DeleteCatalogFavouritesEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int key, int index, FilterItemDataModel item});

  $FilterItemDataModelCopyWith<$Res> get item;
}

/// @nodoc
class __$$DeleteCatalogFavouritesEventImplCopyWithImpl<$Res>
    extends _$FavouritesEventCopyWithImpl<$Res,
        _$DeleteCatalogFavouritesEventImpl>
    implements _$$DeleteCatalogFavouritesEventImplCopyWith<$Res> {
  __$$DeleteCatalogFavouritesEventImplCopyWithImpl(
      _$DeleteCatalogFavouritesEventImpl _value,
      $Res Function(_$DeleteCatalogFavouritesEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? index = null,
    Object? item = null,
  }) {
    return _then(_$DeleteCatalogFavouritesEventImpl(
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

class _$DeleteCatalogFavouritesEventImpl
    implements DeleteCatalogFavouritesEvent {
  const _$DeleteCatalogFavouritesEventImpl(
      {required this.key, required this.index, required this.item});

  @override
  final int key;
  @override
  final int index;
  @override
  final FilterItemDataModel item;

  @override
  String toString() {
    return 'FavouritesEvent.deleteCatalogFilter(key: $key, index: $index, item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCatalogFavouritesEventImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, key, index, item);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCatalogFavouritesEventImplCopyWith<
          _$DeleteCatalogFavouritesEventImpl>
      get copyWith => __$$DeleteCatalogFavouritesEventImplCopyWithImpl<
          _$DeleteCatalogFavouritesEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preloadData,
    required TResult Function(
            int index, int indexItem, FilterItemDataModel item)
        selectFilter,
    required TResult Function(
            int index, int indexItem, FilterItemDataModel item)
        deleteFilter,
    required TResult Function(int index) removeSelectFilterCategory,
    required TResult Function() removeSelectAllFilters,
    required TResult Function(int key, int index, FilterItemDataModel item)
        deleteCatalogFilter,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function(String code) getInfoProduct,
    required TResult Function() goBackProductInfo,
  }) {
    return deleteCatalogFilter(key, index, item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? preloadData,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult? Function(int index)? removeSelectFilterCategory,
    TResult? Function()? removeSelectAllFilters,
    TResult? Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function(String code)? getInfoProduct,
    TResult? Function()? goBackProductInfo,
  }) {
    return deleteCatalogFilter?.call(key, index, item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preloadData,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult Function(int index)? removeSelectFilterCategory,
    TResult Function()? removeSelectAllFilters,
    TResult Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function(String code)? getInfoProduct,
    TResult Function()? goBackProductInfo,
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
    required TResult Function(InitFavouritesEvent value) preloadData,
    required TResult Function(SelectFilterFavouritesEvent value) selectFilter,
    required TResult Function(DeleteFilterFavouritesEvent value) deleteFilter,
    required TResult Function(RemoveSelectFilterCategotyFavouritesEvent value)
        removeSelectFilterCategory,
    required TResult Function(
            RemoveSelectAllFiltersCategotyFavouritesEvent value)
        removeSelectAllFilters,
    required TResult Function(DeleteCatalogFavouritesEvent value)
        deleteCatalogFilter,
    required TResult Function(AddFavouriteProductFavouritesEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductFavouritesEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductFavouritesEvent value)
        getInfoProduct,
    required TResult Function(GoBackProductInfoCategotyFavouritesEvent value)
        goBackProductInfo,
  }) {
    return deleteCatalogFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitFavouritesEvent value)? preloadData,
    TResult? Function(SelectFilterFavouritesEvent value)? selectFilter,
    TResult? Function(DeleteFilterFavouritesEvent value)? deleteFilter,
    TResult? Function(RemoveSelectFilterCategotyFavouritesEvent value)?
        removeSelectFilterCategory,
    TResult? Function(RemoveSelectAllFiltersCategotyFavouritesEvent value)?
        removeSelectAllFilters,
    TResult? Function(DeleteCatalogFavouritesEvent value)? deleteCatalogFilter,
    TResult? Function(AddFavouriteProductFavouritesEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductFavouritesEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductFavouritesEvent value)? getInfoProduct,
    TResult? Function(GoBackProductInfoCategotyFavouritesEvent value)?
        goBackProductInfo,
  }) {
    return deleteCatalogFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitFavouritesEvent value)? preloadData,
    TResult Function(SelectFilterFavouritesEvent value)? selectFilter,
    TResult Function(DeleteFilterFavouritesEvent value)? deleteFilter,
    TResult Function(RemoveSelectFilterCategotyFavouritesEvent value)?
        removeSelectFilterCategory,
    TResult Function(RemoveSelectAllFiltersCategotyFavouritesEvent value)?
        removeSelectAllFilters,
    TResult Function(DeleteCatalogFavouritesEvent value)? deleteCatalogFilter,
    TResult Function(AddFavouriteProductFavouritesEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductFavouritesEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductFavouritesEvent value)? getInfoProduct,
    TResult Function(GoBackProductInfoCategotyFavouritesEvent value)?
        goBackProductInfo,
    required TResult orElse(),
  }) {
    if (deleteCatalogFilter != null) {
      return deleteCatalogFilter(this);
    }
    return orElse();
  }
}

abstract class DeleteCatalogFavouritesEvent implements FavouritesEvent {
  const factory DeleteCatalogFavouritesEvent(
          {required final int key,
          required final int index,
          required final FilterItemDataModel item}) =
      _$DeleteCatalogFavouritesEventImpl;

  int get key;
  int get index;
  FilterItemDataModel get item;
  @JsonKey(ignore: true)
  _$$DeleteCatalogFavouritesEventImplCopyWith<
          _$DeleteCatalogFavouritesEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddFavouriteProductFavouritesEventImplCopyWith<$Res> {
  factory _$$AddFavouriteProductFavouritesEventImplCopyWith(
          _$AddFavouriteProductFavouritesEventImpl value,
          $Res Function(_$AddFavouriteProductFavouritesEventImpl) then) =
      __$$AddFavouriteProductFavouritesEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index, ProductDataModel product});

  $ProductDataModelCopyWith<$Res> get product;
}

/// @nodoc
class __$$AddFavouriteProductFavouritesEventImplCopyWithImpl<$Res>
    extends _$FavouritesEventCopyWithImpl<$Res,
        _$AddFavouriteProductFavouritesEventImpl>
    implements _$$AddFavouriteProductFavouritesEventImplCopyWith<$Res> {
  __$$AddFavouriteProductFavouritesEventImplCopyWithImpl(
      _$AddFavouriteProductFavouritesEventImpl _value,
      $Res Function(_$AddFavouriteProductFavouritesEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? product = null,
  }) {
    return _then(_$AddFavouriteProductFavouritesEventImpl(
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

class _$AddFavouriteProductFavouritesEventImpl
    implements AddFavouriteProductFavouritesEvent {
  const _$AddFavouriteProductFavouritesEventImpl(
      {required this.index, required this.product});

  @override
  final int index;
  @override
  final ProductDataModel product;

  @override
  String toString() {
    return 'FavouritesEvent.addFavouriteProduct(index: $index, product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddFavouriteProductFavouritesEventImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddFavouriteProductFavouritesEventImplCopyWith<
          _$AddFavouriteProductFavouritesEventImpl>
      get copyWith => __$$AddFavouriteProductFavouritesEventImplCopyWithImpl<
          _$AddFavouriteProductFavouritesEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preloadData,
    required TResult Function(
            int index, int indexItem, FilterItemDataModel item)
        selectFilter,
    required TResult Function(
            int index, int indexItem, FilterItemDataModel item)
        deleteFilter,
    required TResult Function(int index) removeSelectFilterCategory,
    required TResult Function() removeSelectAllFilters,
    required TResult Function(int key, int index, FilterItemDataModel item)
        deleteCatalogFilter,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function(String code) getInfoProduct,
    required TResult Function() goBackProductInfo,
  }) {
    return addFavouriteProduct(index, product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? preloadData,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult? Function(int index)? removeSelectFilterCategory,
    TResult? Function()? removeSelectAllFilters,
    TResult? Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function(String code)? getInfoProduct,
    TResult? Function()? goBackProductInfo,
  }) {
    return addFavouriteProduct?.call(index, product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preloadData,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult Function(int index)? removeSelectFilterCategory,
    TResult Function()? removeSelectAllFilters,
    TResult Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function(String code)? getInfoProduct,
    TResult Function()? goBackProductInfo,
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
    required TResult Function(InitFavouritesEvent value) preloadData,
    required TResult Function(SelectFilterFavouritesEvent value) selectFilter,
    required TResult Function(DeleteFilterFavouritesEvent value) deleteFilter,
    required TResult Function(RemoveSelectFilterCategotyFavouritesEvent value)
        removeSelectFilterCategory,
    required TResult Function(
            RemoveSelectAllFiltersCategotyFavouritesEvent value)
        removeSelectAllFilters,
    required TResult Function(DeleteCatalogFavouritesEvent value)
        deleteCatalogFilter,
    required TResult Function(AddFavouriteProductFavouritesEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductFavouritesEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductFavouritesEvent value)
        getInfoProduct,
    required TResult Function(GoBackProductInfoCategotyFavouritesEvent value)
        goBackProductInfo,
  }) {
    return addFavouriteProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitFavouritesEvent value)? preloadData,
    TResult? Function(SelectFilterFavouritesEvent value)? selectFilter,
    TResult? Function(DeleteFilterFavouritesEvent value)? deleteFilter,
    TResult? Function(RemoveSelectFilterCategotyFavouritesEvent value)?
        removeSelectFilterCategory,
    TResult? Function(RemoveSelectAllFiltersCategotyFavouritesEvent value)?
        removeSelectAllFilters,
    TResult? Function(DeleteCatalogFavouritesEvent value)? deleteCatalogFilter,
    TResult? Function(AddFavouriteProductFavouritesEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductFavouritesEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductFavouritesEvent value)? getInfoProduct,
    TResult? Function(GoBackProductInfoCategotyFavouritesEvent value)?
        goBackProductInfo,
  }) {
    return addFavouriteProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitFavouritesEvent value)? preloadData,
    TResult Function(SelectFilterFavouritesEvent value)? selectFilter,
    TResult Function(DeleteFilterFavouritesEvent value)? deleteFilter,
    TResult Function(RemoveSelectFilterCategotyFavouritesEvent value)?
        removeSelectFilterCategory,
    TResult Function(RemoveSelectAllFiltersCategotyFavouritesEvent value)?
        removeSelectAllFilters,
    TResult Function(DeleteCatalogFavouritesEvent value)? deleteCatalogFilter,
    TResult Function(AddFavouriteProductFavouritesEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductFavouritesEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductFavouritesEvent value)? getInfoProduct,
    TResult Function(GoBackProductInfoCategotyFavouritesEvent value)?
        goBackProductInfo,
    required TResult orElse(),
  }) {
    if (addFavouriteProduct != null) {
      return addFavouriteProduct(this);
    }
    return orElse();
  }
}

abstract class AddFavouriteProductFavouritesEvent implements FavouritesEvent {
  const factory AddFavouriteProductFavouritesEvent(
          {required final int index, required final ProductDataModel product}) =
      _$AddFavouriteProductFavouritesEventImpl;

  int get index;
  ProductDataModel get product;
  @JsonKey(ignore: true)
  _$$AddFavouriteProductFavouritesEventImplCopyWith<
          _$AddFavouriteProductFavouritesEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteFavouriteProductFavouritesEventImplCopyWith<$Res> {
  factory _$$DeleteFavouriteProductFavouritesEventImplCopyWith(
          _$DeleteFavouriteProductFavouritesEventImpl value,
          $Res Function(_$DeleteFavouriteProductFavouritesEventImpl) then) =
      __$$DeleteFavouriteProductFavouritesEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$DeleteFavouriteProductFavouritesEventImplCopyWithImpl<$Res>
    extends _$FavouritesEventCopyWithImpl<$Res,
        _$DeleteFavouriteProductFavouritesEventImpl>
    implements _$$DeleteFavouriteProductFavouritesEventImplCopyWith<$Res> {
  __$$DeleteFavouriteProductFavouritesEventImplCopyWithImpl(
      _$DeleteFavouriteProductFavouritesEventImpl _value,
      $Res Function(_$DeleteFavouriteProductFavouritesEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$DeleteFavouriteProductFavouritesEventImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteFavouriteProductFavouritesEventImpl
    implements DeleteFavouriteProductFavouritesEvent {
  const _$DeleteFavouriteProductFavouritesEventImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'FavouritesEvent.deleteFavouriteProduct(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteFavouriteProductFavouritesEventImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteFavouriteProductFavouritesEventImplCopyWith<
          _$DeleteFavouriteProductFavouritesEventImpl>
      get copyWith => __$$DeleteFavouriteProductFavouritesEventImplCopyWithImpl<
          _$DeleteFavouriteProductFavouritesEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preloadData,
    required TResult Function(
            int index, int indexItem, FilterItemDataModel item)
        selectFilter,
    required TResult Function(
            int index, int indexItem, FilterItemDataModel item)
        deleteFilter,
    required TResult Function(int index) removeSelectFilterCategory,
    required TResult Function() removeSelectAllFilters,
    required TResult Function(int key, int index, FilterItemDataModel item)
        deleteCatalogFilter,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function(String code) getInfoProduct,
    required TResult Function() goBackProductInfo,
  }) {
    return deleteFavouriteProduct(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? preloadData,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult? Function(int index)? removeSelectFilterCategory,
    TResult? Function()? removeSelectAllFilters,
    TResult? Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function(String code)? getInfoProduct,
    TResult? Function()? goBackProductInfo,
  }) {
    return deleteFavouriteProduct?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preloadData,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult Function(int index)? removeSelectFilterCategory,
    TResult Function()? removeSelectAllFilters,
    TResult Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function(String code)? getInfoProduct,
    TResult Function()? goBackProductInfo,
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
    required TResult Function(InitFavouritesEvent value) preloadData,
    required TResult Function(SelectFilterFavouritesEvent value) selectFilter,
    required TResult Function(DeleteFilterFavouritesEvent value) deleteFilter,
    required TResult Function(RemoveSelectFilterCategotyFavouritesEvent value)
        removeSelectFilterCategory,
    required TResult Function(
            RemoveSelectAllFiltersCategotyFavouritesEvent value)
        removeSelectAllFilters,
    required TResult Function(DeleteCatalogFavouritesEvent value)
        deleteCatalogFilter,
    required TResult Function(AddFavouriteProductFavouritesEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductFavouritesEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductFavouritesEvent value)
        getInfoProduct,
    required TResult Function(GoBackProductInfoCategotyFavouritesEvent value)
        goBackProductInfo,
  }) {
    return deleteFavouriteProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitFavouritesEvent value)? preloadData,
    TResult? Function(SelectFilterFavouritesEvent value)? selectFilter,
    TResult? Function(DeleteFilterFavouritesEvent value)? deleteFilter,
    TResult? Function(RemoveSelectFilterCategotyFavouritesEvent value)?
        removeSelectFilterCategory,
    TResult? Function(RemoveSelectAllFiltersCategotyFavouritesEvent value)?
        removeSelectAllFilters,
    TResult? Function(DeleteCatalogFavouritesEvent value)? deleteCatalogFilter,
    TResult? Function(AddFavouriteProductFavouritesEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductFavouritesEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductFavouritesEvent value)? getInfoProduct,
    TResult? Function(GoBackProductInfoCategotyFavouritesEvent value)?
        goBackProductInfo,
  }) {
    return deleteFavouriteProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitFavouritesEvent value)? preloadData,
    TResult Function(SelectFilterFavouritesEvent value)? selectFilter,
    TResult Function(DeleteFilterFavouritesEvent value)? deleteFilter,
    TResult Function(RemoveSelectFilterCategotyFavouritesEvent value)?
        removeSelectFilterCategory,
    TResult Function(RemoveSelectAllFiltersCategotyFavouritesEvent value)?
        removeSelectAllFilters,
    TResult Function(DeleteCatalogFavouritesEvent value)? deleteCatalogFilter,
    TResult Function(AddFavouriteProductFavouritesEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductFavouritesEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductFavouritesEvent value)? getInfoProduct,
    TResult Function(GoBackProductInfoCategotyFavouritesEvent value)?
        goBackProductInfo,
    required TResult orElse(),
  }) {
    if (deleteFavouriteProduct != null) {
      return deleteFavouriteProduct(this);
    }
    return orElse();
  }
}

abstract class DeleteFavouriteProductFavouritesEvent
    implements FavouritesEvent {
  const factory DeleteFavouriteProductFavouritesEvent(
      {required final int index}) = _$DeleteFavouriteProductFavouritesEventImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$DeleteFavouriteProductFavouritesEventImplCopyWith<
          _$DeleteFavouriteProductFavouritesEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetInfoProductFavouritesEventImplCopyWith<$Res> {
  factory _$$GetInfoProductFavouritesEventImplCopyWith(
          _$GetInfoProductFavouritesEventImpl value,
          $Res Function(_$GetInfoProductFavouritesEventImpl) then) =
      __$$GetInfoProductFavouritesEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String code});
}

/// @nodoc
class __$$GetInfoProductFavouritesEventImplCopyWithImpl<$Res>
    extends _$FavouritesEventCopyWithImpl<$Res,
        _$GetInfoProductFavouritesEventImpl>
    implements _$$GetInfoProductFavouritesEventImplCopyWith<$Res> {
  __$$GetInfoProductFavouritesEventImplCopyWithImpl(
      _$GetInfoProductFavouritesEventImpl _value,
      $Res Function(_$GetInfoProductFavouritesEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$GetInfoProductFavouritesEventImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetInfoProductFavouritesEventImpl
    implements GetInfoProductFavouritesEvent {
  const _$GetInfoProductFavouritesEventImpl({required this.code});

  @override
  final String code;

  @override
  String toString() {
    return 'FavouritesEvent.getInfoProduct(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetInfoProductFavouritesEventImpl &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetInfoProductFavouritesEventImplCopyWith<
          _$GetInfoProductFavouritesEventImpl>
      get copyWith => __$$GetInfoProductFavouritesEventImplCopyWithImpl<
          _$GetInfoProductFavouritesEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preloadData,
    required TResult Function(
            int index, int indexItem, FilterItemDataModel item)
        selectFilter,
    required TResult Function(
            int index, int indexItem, FilterItemDataModel item)
        deleteFilter,
    required TResult Function(int index) removeSelectFilterCategory,
    required TResult Function() removeSelectAllFilters,
    required TResult Function(int key, int index, FilterItemDataModel item)
        deleteCatalogFilter,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function(String code) getInfoProduct,
    required TResult Function() goBackProductInfo,
  }) {
    return getInfoProduct(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? preloadData,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult? Function(int index)? removeSelectFilterCategory,
    TResult? Function()? removeSelectAllFilters,
    TResult? Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function(String code)? getInfoProduct,
    TResult? Function()? goBackProductInfo,
  }) {
    return getInfoProduct?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preloadData,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult Function(int index)? removeSelectFilterCategory,
    TResult Function()? removeSelectAllFilters,
    TResult Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function(String code)? getInfoProduct,
    TResult Function()? goBackProductInfo,
    required TResult orElse(),
  }) {
    if (getInfoProduct != null) {
      return getInfoProduct(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitFavouritesEvent value) preloadData,
    required TResult Function(SelectFilterFavouritesEvent value) selectFilter,
    required TResult Function(DeleteFilterFavouritesEvent value) deleteFilter,
    required TResult Function(RemoveSelectFilterCategotyFavouritesEvent value)
        removeSelectFilterCategory,
    required TResult Function(
            RemoveSelectAllFiltersCategotyFavouritesEvent value)
        removeSelectAllFilters,
    required TResult Function(DeleteCatalogFavouritesEvent value)
        deleteCatalogFilter,
    required TResult Function(AddFavouriteProductFavouritesEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductFavouritesEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductFavouritesEvent value)
        getInfoProduct,
    required TResult Function(GoBackProductInfoCategotyFavouritesEvent value)
        goBackProductInfo,
  }) {
    return getInfoProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitFavouritesEvent value)? preloadData,
    TResult? Function(SelectFilterFavouritesEvent value)? selectFilter,
    TResult? Function(DeleteFilterFavouritesEvent value)? deleteFilter,
    TResult? Function(RemoveSelectFilterCategotyFavouritesEvent value)?
        removeSelectFilterCategory,
    TResult? Function(RemoveSelectAllFiltersCategotyFavouritesEvent value)?
        removeSelectAllFilters,
    TResult? Function(DeleteCatalogFavouritesEvent value)? deleteCatalogFilter,
    TResult? Function(AddFavouriteProductFavouritesEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductFavouritesEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductFavouritesEvent value)? getInfoProduct,
    TResult? Function(GoBackProductInfoCategotyFavouritesEvent value)?
        goBackProductInfo,
  }) {
    return getInfoProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitFavouritesEvent value)? preloadData,
    TResult Function(SelectFilterFavouritesEvent value)? selectFilter,
    TResult Function(DeleteFilterFavouritesEvent value)? deleteFilter,
    TResult Function(RemoveSelectFilterCategotyFavouritesEvent value)?
        removeSelectFilterCategory,
    TResult Function(RemoveSelectAllFiltersCategotyFavouritesEvent value)?
        removeSelectAllFilters,
    TResult Function(DeleteCatalogFavouritesEvent value)? deleteCatalogFilter,
    TResult Function(AddFavouriteProductFavouritesEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductFavouritesEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductFavouritesEvent value)? getInfoProduct,
    TResult Function(GoBackProductInfoCategotyFavouritesEvent value)?
        goBackProductInfo,
    required TResult orElse(),
  }) {
    if (getInfoProduct != null) {
      return getInfoProduct(this);
    }
    return orElse();
  }
}

abstract class GetInfoProductFavouritesEvent implements FavouritesEvent {
  const factory GetInfoProductFavouritesEvent({required final String code}) =
      _$GetInfoProductFavouritesEventImpl;

  String get code;
  @JsonKey(ignore: true)
  _$$GetInfoProductFavouritesEventImplCopyWith<
          _$GetInfoProductFavouritesEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GoBackProductInfoCategotyFavouritesEventImplCopyWith<$Res> {
  factory _$$GoBackProductInfoCategotyFavouritesEventImplCopyWith(
          _$GoBackProductInfoCategotyFavouritesEventImpl value,
          $Res Function(_$GoBackProductInfoCategotyFavouritesEventImpl) then) =
      __$$GoBackProductInfoCategotyFavouritesEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GoBackProductInfoCategotyFavouritesEventImplCopyWithImpl<$Res>
    extends _$FavouritesEventCopyWithImpl<$Res,
        _$GoBackProductInfoCategotyFavouritesEventImpl>
    implements _$$GoBackProductInfoCategotyFavouritesEventImplCopyWith<$Res> {
  __$$GoBackProductInfoCategotyFavouritesEventImplCopyWithImpl(
      _$GoBackProductInfoCategotyFavouritesEventImpl _value,
      $Res Function(_$GoBackProductInfoCategotyFavouritesEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GoBackProductInfoCategotyFavouritesEventImpl
    implements GoBackProductInfoCategotyFavouritesEvent {
  const _$GoBackProductInfoCategotyFavouritesEventImpl();

  @override
  String toString() {
    return 'FavouritesEvent.goBackProductInfo()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoBackProductInfoCategotyFavouritesEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preloadData,
    required TResult Function(
            int index, int indexItem, FilterItemDataModel item)
        selectFilter,
    required TResult Function(
            int index, int indexItem, FilterItemDataModel item)
        deleteFilter,
    required TResult Function(int index) removeSelectFilterCategory,
    required TResult Function() removeSelectAllFilters,
    required TResult Function(int key, int index, FilterItemDataModel item)
        deleteCatalogFilter,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function(String code) getInfoProduct,
    required TResult Function() goBackProductInfo,
  }) {
    return goBackProductInfo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? preloadData,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult? Function(int index)? removeSelectFilterCategory,
    TResult? Function()? removeSelectAllFilters,
    TResult? Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function(String code)? getInfoProduct,
    TResult? Function()? goBackProductInfo,
  }) {
    return goBackProductInfo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preloadData,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult Function(int index)? removeSelectFilterCategory,
    TResult Function()? removeSelectAllFilters,
    TResult Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function(String code)? getInfoProduct,
    TResult Function()? goBackProductInfo,
    required TResult orElse(),
  }) {
    if (goBackProductInfo != null) {
      return goBackProductInfo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitFavouritesEvent value) preloadData,
    required TResult Function(SelectFilterFavouritesEvent value) selectFilter,
    required TResult Function(DeleteFilterFavouritesEvent value) deleteFilter,
    required TResult Function(RemoveSelectFilterCategotyFavouritesEvent value)
        removeSelectFilterCategory,
    required TResult Function(
            RemoveSelectAllFiltersCategotyFavouritesEvent value)
        removeSelectAllFilters,
    required TResult Function(DeleteCatalogFavouritesEvent value)
        deleteCatalogFilter,
    required TResult Function(AddFavouriteProductFavouritesEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductFavouritesEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductFavouritesEvent value)
        getInfoProduct,
    required TResult Function(GoBackProductInfoCategotyFavouritesEvent value)
        goBackProductInfo,
  }) {
    return goBackProductInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitFavouritesEvent value)? preloadData,
    TResult? Function(SelectFilterFavouritesEvent value)? selectFilter,
    TResult? Function(DeleteFilterFavouritesEvent value)? deleteFilter,
    TResult? Function(RemoveSelectFilterCategotyFavouritesEvent value)?
        removeSelectFilterCategory,
    TResult? Function(RemoveSelectAllFiltersCategotyFavouritesEvent value)?
        removeSelectAllFilters,
    TResult? Function(DeleteCatalogFavouritesEvent value)? deleteCatalogFilter,
    TResult? Function(AddFavouriteProductFavouritesEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductFavouritesEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductFavouritesEvent value)? getInfoProduct,
    TResult? Function(GoBackProductInfoCategotyFavouritesEvent value)?
        goBackProductInfo,
  }) {
    return goBackProductInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitFavouritesEvent value)? preloadData,
    TResult Function(SelectFilterFavouritesEvent value)? selectFilter,
    TResult Function(DeleteFilterFavouritesEvent value)? deleteFilter,
    TResult Function(RemoveSelectFilterCategotyFavouritesEvent value)?
        removeSelectFilterCategory,
    TResult Function(RemoveSelectAllFiltersCategotyFavouritesEvent value)?
        removeSelectAllFilters,
    TResult Function(DeleteCatalogFavouritesEvent value)? deleteCatalogFilter,
    TResult Function(AddFavouriteProductFavouritesEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductFavouritesEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductFavouritesEvent value)? getInfoProduct,
    TResult Function(GoBackProductInfoCategotyFavouritesEvent value)?
        goBackProductInfo,
    required TResult orElse(),
  }) {
    if (goBackProductInfo != null) {
      return goBackProductInfo(this);
    }
    return orElse();
  }
}

abstract class GoBackProductInfoCategotyFavouritesEvent
    implements FavouritesEvent {
  const factory GoBackProductInfoCategotyFavouritesEvent() =
      _$GoBackProductInfoCategotyFavouritesEventImpl;
}

/// @nodoc
mixin _$FavouritesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function(
            List<ProductDataModel> favouritesProducts,
            List<ProductDataModel> favouritesDefaultProducts,
            List<FilterInfoDataModel> filter,
            Map<int, List<FilterItemDataModel>> selectFilter,
            List<Map<int, FilterItemDataModel>> allSelectFilter,
            FavouritesCatalogProductsRequest request,
            List<String> listProductsCode,
            List<int> favouritesProductsId,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct)
        productsFavourites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function(
            List<ProductDataModel> favouritesProducts,
            List<ProductDataModel> favouritesDefaultProducts,
            List<FilterInfoDataModel> filter,
            Map<int, List<FilterItemDataModel>> selectFilter,
            List<Map<int, FilterItemDataModel>> allSelectFilter,
            FavouritesCatalogProductsRequest request,
            List<String> listProductsCode,
            List<int> favouritesProductsId,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct)?
        productsFavourites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(
            List<ProductDataModel> favouritesProducts,
            List<ProductDataModel> favouritesDefaultProducts,
            List<FilterInfoDataModel> filter,
            Map<int, List<FilterItemDataModel>> selectFilter,
            List<Map<int, FilterItemDataModel>> allSelectFilter,
            FavouritesCatalogProductsRequest request,
            List<String> listProductsCode,
            List<int> favouritesProductsId,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct)?
        productsFavourites,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitFavouritesState value) init,
    required TResult Function(LoadingFavouritesState value) load,
    required TResult Function(ProductsFavouritesState value) productsFavourites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitFavouritesState value)? init,
    TResult? Function(LoadingFavouritesState value)? load,
    TResult? Function(ProductsFavouritesState value)? productsFavourites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitFavouritesState value)? init,
    TResult Function(LoadingFavouritesState value)? load,
    TResult Function(ProductsFavouritesState value)? productsFavourites,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouritesStateCopyWith<$Res> {
  factory $FavouritesStateCopyWith(
          FavouritesState value, $Res Function(FavouritesState) then) =
      _$FavouritesStateCopyWithImpl<$Res, FavouritesState>;
}

/// @nodoc
class _$FavouritesStateCopyWithImpl<$Res, $Val extends FavouritesState>
    implements $FavouritesStateCopyWith<$Res> {
  _$FavouritesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitFavouritesStateImplCopyWith<$Res> {
  factory _$$InitFavouritesStateImplCopyWith(_$InitFavouritesStateImpl value,
          $Res Function(_$InitFavouritesStateImpl) then) =
      __$$InitFavouritesStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitFavouritesStateImplCopyWithImpl<$Res>
    extends _$FavouritesStateCopyWithImpl<$Res, _$InitFavouritesStateImpl>
    implements _$$InitFavouritesStateImplCopyWith<$Res> {
  __$$InitFavouritesStateImplCopyWithImpl(_$InitFavouritesStateImpl _value,
      $Res Function(_$InitFavouritesStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitFavouritesStateImpl implements InitFavouritesState {
  const _$InitFavouritesStateImpl();

  @override
  String toString() {
    return 'FavouritesState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitFavouritesStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function(
            List<ProductDataModel> favouritesProducts,
            List<ProductDataModel> favouritesDefaultProducts,
            List<FilterInfoDataModel> filter,
            Map<int, List<FilterItemDataModel>> selectFilter,
            List<Map<int, FilterItemDataModel>> allSelectFilter,
            FavouritesCatalogProductsRequest request,
            List<String> listProductsCode,
            List<int> favouritesProductsId,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct)
        productsFavourites,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function(
            List<ProductDataModel> favouritesProducts,
            List<ProductDataModel> favouritesDefaultProducts,
            List<FilterInfoDataModel> filter,
            Map<int, List<FilterItemDataModel>> selectFilter,
            List<Map<int, FilterItemDataModel>> allSelectFilter,
            FavouritesCatalogProductsRequest request,
            List<String> listProductsCode,
            List<int> favouritesProductsId,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct)?
        productsFavourites,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(
            List<ProductDataModel> favouritesProducts,
            List<ProductDataModel> favouritesDefaultProducts,
            List<FilterInfoDataModel> filter,
            Map<int, List<FilterItemDataModel>> selectFilter,
            List<Map<int, FilterItemDataModel>> allSelectFilter,
            FavouritesCatalogProductsRequest request,
            List<String> listProductsCode,
            List<int> favouritesProductsId,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct)?
        productsFavourites,
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
    required TResult Function(InitFavouritesState value) init,
    required TResult Function(LoadingFavouritesState value) load,
    required TResult Function(ProductsFavouritesState value) productsFavourites,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitFavouritesState value)? init,
    TResult? Function(LoadingFavouritesState value)? load,
    TResult? Function(ProductsFavouritesState value)? productsFavourites,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitFavouritesState value)? init,
    TResult Function(LoadingFavouritesState value)? load,
    TResult Function(ProductsFavouritesState value)? productsFavourites,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitFavouritesState implements FavouritesState {
  const factory InitFavouritesState() = _$InitFavouritesStateImpl;
}

/// @nodoc
abstract class _$$LoadingFavouritesStateImplCopyWith<$Res> {
  factory _$$LoadingFavouritesStateImplCopyWith(
          _$LoadingFavouritesStateImpl value,
          $Res Function(_$LoadingFavouritesStateImpl) then) =
      __$$LoadingFavouritesStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingFavouritesStateImplCopyWithImpl<$Res>
    extends _$FavouritesStateCopyWithImpl<$Res, _$LoadingFavouritesStateImpl>
    implements _$$LoadingFavouritesStateImplCopyWith<$Res> {
  __$$LoadingFavouritesStateImplCopyWithImpl(
      _$LoadingFavouritesStateImpl _value,
      $Res Function(_$LoadingFavouritesStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingFavouritesStateImpl implements LoadingFavouritesState {
  const _$LoadingFavouritesStateImpl();

  @override
  String toString() {
    return 'FavouritesState.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingFavouritesStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function(
            List<ProductDataModel> favouritesProducts,
            List<ProductDataModel> favouritesDefaultProducts,
            List<FilterInfoDataModel> filter,
            Map<int, List<FilterItemDataModel>> selectFilter,
            List<Map<int, FilterItemDataModel>> allSelectFilter,
            FavouritesCatalogProductsRequest request,
            List<String> listProductsCode,
            List<int> favouritesProductsId,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct)
        productsFavourites,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function(
            List<ProductDataModel> favouritesProducts,
            List<ProductDataModel> favouritesDefaultProducts,
            List<FilterInfoDataModel> filter,
            Map<int, List<FilterItemDataModel>> selectFilter,
            List<Map<int, FilterItemDataModel>> allSelectFilter,
            FavouritesCatalogProductsRequest request,
            List<String> listProductsCode,
            List<int> favouritesProductsId,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct)?
        productsFavourites,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(
            List<ProductDataModel> favouritesProducts,
            List<ProductDataModel> favouritesDefaultProducts,
            List<FilterInfoDataModel> filter,
            Map<int, List<FilterItemDataModel>> selectFilter,
            List<Map<int, FilterItemDataModel>> allSelectFilter,
            FavouritesCatalogProductsRequest request,
            List<String> listProductsCode,
            List<int> favouritesProductsId,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct)?
        productsFavourites,
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
    required TResult Function(InitFavouritesState value) init,
    required TResult Function(LoadingFavouritesState value) load,
    required TResult Function(ProductsFavouritesState value) productsFavourites,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitFavouritesState value)? init,
    TResult? Function(LoadingFavouritesState value)? load,
    TResult? Function(ProductsFavouritesState value)? productsFavourites,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitFavouritesState value)? init,
    TResult Function(LoadingFavouritesState value)? load,
    TResult Function(ProductsFavouritesState value)? productsFavourites,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LoadingFavouritesState implements FavouritesState {
  const factory LoadingFavouritesState() = _$LoadingFavouritesStateImpl;
}

/// @nodoc
abstract class _$$ProductsFavouritesStateImplCopyWith<$Res> {
  factory _$$ProductsFavouritesStateImplCopyWith(
          _$ProductsFavouritesStateImpl value,
          $Res Function(_$ProductsFavouritesStateImpl) then) =
      __$$ProductsFavouritesStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<ProductDataModel> favouritesProducts,
      List<ProductDataModel> favouritesDefaultProducts,
      List<FilterInfoDataModel> filter,
      Map<int, List<FilterItemDataModel>> selectFilter,
      List<Map<int, FilterItemDataModel>> allSelectFilter,
      FavouritesCatalogProductsRequest request,
      List<String> listProductsCode,
      List<int> favouritesProductsId,
      List<ProductDataModel> listProdcutsStyle,
      List<ProductDataModel> listProdcutsAlso,
      List<ProductDataModel> listProdcutsBrand,
      FavouritesCatalogInfoDataModel? favouritesProductsInfo,
      DetailProductDataModel? detailsProduct});

  $FavouritesCatalogProductsRequestCopyWith<$Res> get request;
  $FavouritesCatalogInfoDataModelCopyWith<$Res>? get favouritesProductsInfo;
  $DetailProductDataModelCopyWith<$Res>? get detailsProduct;
}

/// @nodoc
class __$$ProductsFavouritesStateImplCopyWithImpl<$Res>
    extends _$FavouritesStateCopyWithImpl<$Res, _$ProductsFavouritesStateImpl>
    implements _$$ProductsFavouritesStateImplCopyWith<$Res> {
  __$$ProductsFavouritesStateImplCopyWithImpl(
      _$ProductsFavouritesStateImpl _value,
      $Res Function(_$ProductsFavouritesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favouritesProducts = null,
    Object? favouritesDefaultProducts = null,
    Object? filter = null,
    Object? selectFilter = null,
    Object? allSelectFilter = null,
    Object? request = null,
    Object? listProductsCode = null,
    Object? favouritesProductsId = null,
    Object? listProdcutsStyle = null,
    Object? listProdcutsAlso = null,
    Object? listProdcutsBrand = null,
    Object? favouritesProductsInfo = freezed,
    Object? detailsProduct = freezed,
  }) {
    return _then(_$ProductsFavouritesStateImpl(
      favouritesProducts: null == favouritesProducts
          ? _value._favouritesProducts
          : favouritesProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductDataModel>,
      favouritesDefaultProducts: null == favouritesDefaultProducts
          ? _value._favouritesDefaultProducts
          : favouritesDefaultProducts // ignore: cast_nullable_to_non_nullable
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
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as FavouritesCatalogProductsRequest,
      listProductsCode: null == listProductsCode
          ? _value._listProductsCode
          : listProductsCode // ignore: cast_nullable_to_non_nullable
              as List<String>,
      favouritesProductsId: null == favouritesProductsId
          ? _value._favouritesProductsId
          : favouritesProductsId // ignore: cast_nullable_to_non_nullable
              as List<int>,
      listProdcutsStyle: null == listProdcutsStyle
          ? _value._listProdcutsStyle
          : listProdcutsStyle // ignore: cast_nullable_to_non_nullable
              as List<ProductDataModel>,
      listProdcutsAlso: null == listProdcutsAlso
          ? _value._listProdcutsAlso
          : listProdcutsAlso // ignore: cast_nullable_to_non_nullable
              as List<ProductDataModel>,
      listProdcutsBrand: null == listProdcutsBrand
          ? _value._listProdcutsBrand
          : listProdcutsBrand // ignore: cast_nullable_to_non_nullable
              as List<ProductDataModel>,
      favouritesProductsInfo: freezed == favouritesProductsInfo
          ? _value.favouritesProductsInfo
          : favouritesProductsInfo // ignore: cast_nullable_to_non_nullable
              as FavouritesCatalogInfoDataModel?,
      detailsProduct: freezed == detailsProduct
          ? _value.detailsProduct
          : detailsProduct // ignore: cast_nullable_to_non_nullable
              as DetailProductDataModel?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FavouritesCatalogProductsRequestCopyWith<$Res> get request {
    return $FavouritesCatalogProductsRequestCopyWith<$Res>(_value.request,
        (value) {
      return _then(_value.copyWith(request: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FavouritesCatalogInfoDataModelCopyWith<$Res>? get favouritesProductsInfo {
    if (_value.favouritesProductsInfo == null) {
      return null;
    }

    return $FavouritesCatalogInfoDataModelCopyWith<$Res>(
        _value.favouritesProductsInfo!, (value) {
      return _then(_value.copyWith(favouritesProductsInfo: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DetailProductDataModelCopyWith<$Res>? get detailsProduct {
    if (_value.detailsProduct == null) {
      return null;
    }

    return $DetailProductDataModelCopyWith<$Res>(_value.detailsProduct!,
        (value) {
      return _then(_value.copyWith(detailsProduct: value));
    });
  }
}

/// @nodoc

class _$ProductsFavouritesStateImpl implements ProductsFavouritesState {
  const _$ProductsFavouritesStateImpl(
      {required final List<ProductDataModel> favouritesProducts,
      required final List<ProductDataModel> favouritesDefaultProducts,
      required final List<FilterInfoDataModel> filter,
      required final Map<int, List<FilterItemDataModel>> selectFilter,
      required final List<Map<int, FilterItemDataModel>> allSelectFilter,
      required this.request,
      required final List<String> listProductsCode,
      required final List<int> favouritesProductsId,
      required final List<ProductDataModel> listProdcutsStyle,
      required final List<ProductDataModel> listProdcutsAlso,
      required final List<ProductDataModel> listProdcutsBrand,
      this.favouritesProductsInfo,
      this.detailsProduct})
      : _favouritesProducts = favouritesProducts,
        _favouritesDefaultProducts = favouritesDefaultProducts,
        _filter = filter,
        _selectFilter = selectFilter,
        _allSelectFilter = allSelectFilter,
        _listProductsCode = listProductsCode,
        _favouritesProductsId = favouritesProductsId,
        _listProdcutsStyle = listProdcutsStyle,
        _listProdcutsAlso = listProdcutsAlso,
        _listProdcutsBrand = listProdcutsBrand;

  final List<ProductDataModel> _favouritesProducts;
  @override
  List<ProductDataModel> get favouritesProducts {
    if (_favouritesProducts is EqualUnmodifiableListView)
      return _favouritesProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favouritesProducts);
  }

  final List<ProductDataModel> _favouritesDefaultProducts;
  @override
  List<ProductDataModel> get favouritesDefaultProducts {
    if (_favouritesDefaultProducts is EqualUnmodifiableListView)
      return _favouritesDefaultProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favouritesDefaultProducts);
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

  @override
  final FavouritesCatalogProductsRequest request;
  final List<String> _listProductsCode;
  @override
  List<String> get listProductsCode {
    if (_listProductsCode is EqualUnmodifiableListView)
      return _listProductsCode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listProductsCode);
  }

  final List<int> _favouritesProductsId;
  @override
  List<int> get favouritesProductsId {
    if (_favouritesProductsId is EqualUnmodifiableListView)
      return _favouritesProductsId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favouritesProductsId);
  }

  final List<ProductDataModel> _listProdcutsStyle;
  @override
  List<ProductDataModel> get listProdcutsStyle {
    if (_listProdcutsStyle is EqualUnmodifiableListView)
      return _listProdcutsStyle;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listProdcutsStyle);
  }

  final List<ProductDataModel> _listProdcutsAlso;
  @override
  List<ProductDataModel> get listProdcutsAlso {
    if (_listProdcutsAlso is EqualUnmodifiableListView)
      return _listProdcutsAlso;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listProdcutsAlso);
  }

  final List<ProductDataModel> _listProdcutsBrand;
  @override
  List<ProductDataModel> get listProdcutsBrand {
    if (_listProdcutsBrand is EqualUnmodifiableListView)
      return _listProdcutsBrand;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listProdcutsBrand);
  }

  @override
  final FavouritesCatalogInfoDataModel? favouritesProductsInfo;
  @override
  final DetailProductDataModel? detailsProduct;

  @override
  String toString() {
    return 'FavouritesState.productsFavourites(favouritesProducts: $favouritesProducts, favouritesDefaultProducts: $favouritesDefaultProducts, filter: $filter, selectFilter: $selectFilter, allSelectFilter: $allSelectFilter, request: $request, listProductsCode: $listProductsCode, favouritesProductsId: $favouritesProductsId, listProdcutsStyle: $listProdcutsStyle, listProdcutsAlso: $listProdcutsAlso, listProdcutsBrand: $listProdcutsBrand, favouritesProductsInfo: $favouritesProductsInfo, detailsProduct: $detailsProduct)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsFavouritesStateImpl &&
            const DeepCollectionEquality()
                .equals(other._favouritesProducts, _favouritesProducts) &&
            const DeepCollectionEquality().equals(
                other._favouritesDefaultProducts, _favouritesDefaultProducts) &&
            const DeepCollectionEquality().equals(other._filter, _filter) &&
            const DeepCollectionEquality()
                .equals(other._selectFilter, _selectFilter) &&
            const DeepCollectionEquality()
                .equals(other._allSelectFilter, _allSelectFilter) &&
            (identical(other.request, request) || other.request == request) &&
            const DeepCollectionEquality()
                .equals(other._listProductsCode, _listProductsCode) &&
            const DeepCollectionEquality()
                .equals(other._favouritesProductsId, _favouritesProductsId) &&
            const DeepCollectionEquality()
                .equals(other._listProdcutsStyle, _listProdcutsStyle) &&
            const DeepCollectionEquality()
                .equals(other._listProdcutsAlso, _listProdcutsAlso) &&
            const DeepCollectionEquality()
                .equals(other._listProdcutsBrand, _listProdcutsBrand) &&
            (identical(other.favouritesProductsInfo, favouritesProductsInfo) ||
                other.favouritesProductsInfo == favouritesProductsInfo) &&
            (identical(other.detailsProduct, detailsProduct) ||
                other.detailsProduct == detailsProduct));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_favouritesProducts),
      const DeepCollectionEquality().hash(_favouritesDefaultProducts),
      const DeepCollectionEquality().hash(_filter),
      const DeepCollectionEquality().hash(_selectFilter),
      const DeepCollectionEquality().hash(_allSelectFilter),
      request,
      const DeepCollectionEquality().hash(_listProductsCode),
      const DeepCollectionEquality().hash(_favouritesProductsId),
      const DeepCollectionEquality().hash(_listProdcutsStyle),
      const DeepCollectionEquality().hash(_listProdcutsAlso),
      const DeepCollectionEquality().hash(_listProdcutsBrand),
      favouritesProductsInfo,
      detailsProduct);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsFavouritesStateImplCopyWith<_$ProductsFavouritesStateImpl>
      get copyWith => __$$ProductsFavouritesStateImplCopyWithImpl<
          _$ProductsFavouritesStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function(
            List<ProductDataModel> favouritesProducts,
            List<ProductDataModel> favouritesDefaultProducts,
            List<FilterInfoDataModel> filter,
            Map<int, List<FilterItemDataModel>> selectFilter,
            List<Map<int, FilterItemDataModel>> allSelectFilter,
            FavouritesCatalogProductsRequest request,
            List<String> listProductsCode,
            List<int> favouritesProductsId,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct)
        productsFavourites,
  }) {
    return productsFavourites(
        favouritesProducts,
        favouritesDefaultProducts,
        filter,
        selectFilter,
        allSelectFilter,
        request,
        listProductsCode,
        favouritesProductsId,
        listProdcutsStyle,
        listProdcutsAlso,
        listProdcutsBrand,
        favouritesProductsInfo,
        detailsProduct);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function(
            List<ProductDataModel> favouritesProducts,
            List<ProductDataModel> favouritesDefaultProducts,
            List<FilterInfoDataModel> filter,
            Map<int, List<FilterItemDataModel>> selectFilter,
            List<Map<int, FilterItemDataModel>> allSelectFilter,
            FavouritesCatalogProductsRequest request,
            List<String> listProductsCode,
            List<int> favouritesProductsId,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct)?
        productsFavourites,
  }) {
    return productsFavourites?.call(
        favouritesProducts,
        favouritesDefaultProducts,
        filter,
        selectFilter,
        allSelectFilter,
        request,
        listProductsCode,
        favouritesProductsId,
        listProdcutsStyle,
        listProdcutsAlso,
        listProdcutsBrand,
        favouritesProductsInfo,
        detailsProduct);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(
            List<ProductDataModel> favouritesProducts,
            List<ProductDataModel> favouritesDefaultProducts,
            List<FilterInfoDataModel> filter,
            Map<int, List<FilterItemDataModel>> selectFilter,
            List<Map<int, FilterItemDataModel>> allSelectFilter,
            FavouritesCatalogProductsRequest request,
            List<String> listProductsCode,
            List<int> favouritesProductsId,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct)?
        productsFavourites,
    required TResult orElse(),
  }) {
    if (productsFavourites != null) {
      return productsFavourites(
          favouritesProducts,
          favouritesDefaultProducts,
          filter,
          selectFilter,
          allSelectFilter,
          request,
          listProductsCode,
          favouritesProductsId,
          listProdcutsStyle,
          listProdcutsAlso,
          listProdcutsBrand,
          favouritesProductsInfo,
          detailsProduct);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitFavouritesState value) init,
    required TResult Function(LoadingFavouritesState value) load,
    required TResult Function(ProductsFavouritesState value) productsFavourites,
  }) {
    return productsFavourites(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitFavouritesState value)? init,
    TResult? Function(LoadingFavouritesState value)? load,
    TResult? Function(ProductsFavouritesState value)? productsFavourites,
  }) {
    return productsFavourites?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitFavouritesState value)? init,
    TResult Function(LoadingFavouritesState value)? load,
    TResult Function(ProductsFavouritesState value)? productsFavourites,
    required TResult orElse(),
  }) {
    if (productsFavourites != null) {
      return productsFavourites(this);
    }
    return orElse();
  }
}

abstract class ProductsFavouritesState implements FavouritesState {
  const factory ProductsFavouritesState(
          {required final List<ProductDataModel> favouritesProducts,
          required final List<ProductDataModel> favouritesDefaultProducts,
          required final List<FilterInfoDataModel> filter,
          required final Map<int, List<FilterItemDataModel>> selectFilter,
          required final List<Map<int, FilterItemDataModel>> allSelectFilter,
          required final FavouritesCatalogProductsRequest request,
          required final List<String> listProductsCode,
          required final List<int> favouritesProductsId,
          required final List<ProductDataModel> listProdcutsStyle,
          required final List<ProductDataModel> listProdcutsAlso,
          required final List<ProductDataModel> listProdcutsBrand,
          final FavouritesCatalogInfoDataModel? favouritesProductsInfo,
          final DetailProductDataModel? detailsProduct}) =
      _$ProductsFavouritesStateImpl;

  List<ProductDataModel> get favouritesProducts;
  List<ProductDataModel> get favouritesDefaultProducts;
  List<FilterInfoDataModel> get filter;
  Map<int, List<FilterItemDataModel>> get selectFilter;
  List<Map<int, FilterItemDataModel>> get allSelectFilter;
  FavouritesCatalogProductsRequest get request;
  List<String> get listProductsCode;
  List<int> get favouritesProductsId;
  List<ProductDataModel> get listProdcutsStyle;
  List<ProductDataModel> get listProdcutsAlso;
  List<ProductDataModel> get listProdcutsBrand;
  FavouritesCatalogInfoDataModel? get favouritesProductsInfo;
  DetailProductDataModel? get detailsProduct;
  @JsonKey(ignore: true)
  _$$ProductsFavouritesStateImplCopyWith<_$ProductsFavouritesStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
