// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String query) searchProfucts,
    required TResult Function(String query) searchProfuctsInfo,
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
    required TResult Function(
            int index, ProductDataModel product, String? typeError)
        addFavouriteProduct,
    required TResult Function(int index, String? typeError)
        deleteFavouriteProduct,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate,
            String? typeError)
        getInfoProduct,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function() goBackProductInfo,
    required TResult Function() paginationProduct,
    required TResult Function(
            int code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size)
        addProductToSoppingCart,
    required TResult Function(bool isButtonTop) checkButtonTop,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(String code, bool isShop, String titleScreen)
        getInfoProductSize,
    required TResult Function(String titleScreen) updateInfoProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String query)? searchProfucts,
    TResult? Function(String query)? searchProfuctsInfo,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult? Function(int index)? removeSelectFilterCategory,
    TResult? Function()? removeSelectAllFilters,
    TResult? Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult? Function(int index, ProductDataModel product, String? typeError)?
        addFavouriteProduct,
    TResult? Function(int index, String? typeError)? deleteFavouriteProduct,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate,
            String? typeError)?
        getInfoProduct,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function()? goBackProductInfo,
    TResult? Function()? paginationProduct,
    TResult? Function(
            int code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size)?
        addProductToSoppingCart,
    TResult? Function(bool isButtonTop)? checkButtonTop,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(String code, bool isShop, String titleScreen)?
        getInfoProductSize,
    TResult? Function(String titleScreen)? updateInfoProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String query)? searchProfucts,
    TResult Function(String query)? searchProfuctsInfo,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult Function(int index)? removeSelectFilterCategory,
    TResult Function()? removeSelectAllFilters,
    TResult Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult Function(int index, ProductDataModel product, String? typeError)?
        addFavouriteProduct,
    TResult Function(int index, String? typeError)? deleteFavouriteProduct,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate,
            String? typeError)?
        getInfoProduct,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function()? goBackProductInfo,
    TResult Function()? paginationProduct,
    TResult Function(
            int code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size)?
        addProductToSoppingCart,
    TResult Function(bool isButtonTop)? checkButtonTop,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(String code, bool isShop, String titleScreen)?
        getInfoProductSize,
    TResult Function(String titleScreen)? updateInfoProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitSearchEvent value) init,
    required TResult Function(ProfuctsSearchEvent value) searchProfucts,
    required TResult Function(ProfuctsInfoSearchEvent value) searchProfuctsInfo,
    required TResult Function(SelectFilterSearchEvent value) selectFilter,
    required TResult Function(DeleteFilterSearchEvent value) deleteFilter,
    required TResult Function(RemoveSelectFilterCategotySearchEvent value)
        removeSelectFilterCategory,
    required TResult Function(RemoveSelectAllFiltersCategotySearchEvent value)
        removeSelectAllFilters,
    required TResult Function(DeleteCatalogSearchEvent value)
        deleteCatalogFilter,
    required TResult Function(AddFavouriteProductSearchEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductSearchEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductSearchEvent value) getInfoProduct,
    required TResult Function(ChangeSizeProductSearchEvent value)
        changeSizeProduct,
    required TResult Function(GoBackProductInfoCategotySearchEvent value)
        goBackProductInfo,
    required TResult Function(PaginationProductSearchEvent value)
        paginationProduct,
    required TResult Function(AddProductToSoppingCartSearchEvent value)
        addProductToSoppingCart,
    required TResult Function(CheckButtonTopSearchEvent value) checkButtonTop,
    required TResult Function(CheckProductToSoppingCartSearchEvent value)
        checkProductToSoppingCart,
    required TResult Function(GetInfoProductSizeSearchEvent value)
        getInfoProductSize,
    required TResult Function(UpdateInfoProductsSearchEvent value)
        updateInfoProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitSearchEvent value)? init,
    TResult? Function(ProfuctsSearchEvent value)? searchProfucts,
    TResult? Function(ProfuctsInfoSearchEvent value)? searchProfuctsInfo,
    TResult? Function(SelectFilterSearchEvent value)? selectFilter,
    TResult? Function(DeleteFilterSearchEvent value)? deleteFilter,
    TResult? Function(RemoveSelectFilterCategotySearchEvent value)?
        removeSelectFilterCategory,
    TResult? Function(RemoveSelectAllFiltersCategotySearchEvent value)?
        removeSelectAllFilters,
    TResult? Function(DeleteCatalogSearchEvent value)? deleteCatalogFilter,
    TResult? Function(AddFavouriteProductSearchEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductSearchEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductSearchEvent value)? getInfoProduct,
    TResult? Function(ChangeSizeProductSearchEvent value)? changeSizeProduct,
    TResult? Function(GoBackProductInfoCategotySearchEvent value)?
        goBackProductInfo,
    TResult? Function(PaginationProductSearchEvent value)? paginationProduct,
    TResult? Function(AddProductToSoppingCartSearchEvent value)?
        addProductToSoppingCart,
    TResult? Function(CheckButtonTopSearchEvent value)? checkButtonTop,
    TResult? Function(CheckProductToSoppingCartSearchEvent value)?
        checkProductToSoppingCart,
    TResult? Function(GetInfoProductSizeSearchEvent value)? getInfoProductSize,
    TResult? Function(UpdateInfoProductsSearchEvent value)? updateInfoProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitSearchEvent value)? init,
    TResult Function(ProfuctsSearchEvent value)? searchProfucts,
    TResult Function(ProfuctsInfoSearchEvent value)? searchProfuctsInfo,
    TResult Function(SelectFilterSearchEvent value)? selectFilter,
    TResult Function(DeleteFilterSearchEvent value)? deleteFilter,
    TResult Function(RemoveSelectFilterCategotySearchEvent value)?
        removeSelectFilterCategory,
    TResult Function(RemoveSelectAllFiltersCategotySearchEvent value)?
        removeSelectAllFilters,
    TResult Function(DeleteCatalogSearchEvent value)? deleteCatalogFilter,
    TResult Function(AddFavouriteProductSearchEvent value)? addFavouriteProduct,
    TResult Function(DeleteFavouriteProductSearchEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductSearchEvent value)? getInfoProduct,
    TResult Function(ChangeSizeProductSearchEvent value)? changeSizeProduct,
    TResult Function(GoBackProductInfoCategotySearchEvent value)?
        goBackProductInfo,
    TResult Function(PaginationProductSearchEvent value)? paginationProduct,
    TResult Function(AddProductToSoppingCartSearchEvent value)?
        addProductToSoppingCart,
    TResult Function(CheckButtonTopSearchEvent value)? checkButtonTop,
    TResult Function(CheckProductToSoppingCartSearchEvent value)?
        checkProductToSoppingCart,
    TResult Function(GetInfoProductSizeSearchEvent value)? getInfoProductSize,
    TResult Function(UpdateInfoProductsSearchEvent value)? updateInfoProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res, SearchEvent>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res, $Val extends SearchEvent>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitSearchEventImplCopyWith<$Res> {
  factory _$$InitSearchEventImplCopyWith(_$InitSearchEventImpl value,
          $Res Function(_$InitSearchEventImpl) then) =
      __$$InitSearchEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitSearchEventImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$InitSearchEventImpl>
    implements _$$InitSearchEventImplCopyWith<$Res> {
  __$$InitSearchEventImplCopyWithImpl(
      _$InitSearchEventImpl _value, $Res Function(_$InitSearchEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitSearchEventImpl implements InitSearchEvent {
  const _$InitSearchEventImpl();

  @override
  String toString() {
    return 'SearchEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitSearchEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String query) searchProfucts,
    required TResult Function(String query) searchProfuctsInfo,
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
    required TResult Function(
            int index, ProductDataModel product, String? typeError)
        addFavouriteProduct,
    required TResult Function(int index, String? typeError)
        deleteFavouriteProduct,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate,
            String? typeError)
        getInfoProduct,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function() goBackProductInfo,
    required TResult Function() paginationProduct,
    required TResult Function(
            int code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size)
        addProductToSoppingCart,
    required TResult Function(bool isButtonTop) checkButtonTop,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(String code, bool isShop, String titleScreen)
        getInfoProductSize,
    required TResult Function(String titleScreen) updateInfoProducts,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String query)? searchProfucts,
    TResult? Function(String query)? searchProfuctsInfo,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult? Function(int index)? removeSelectFilterCategory,
    TResult? Function()? removeSelectAllFilters,
    TResult? Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult? Function(int index, ProductDataModel product, String? typeError)?
        addFavouriteProduct,
    TResult? Function(int index, String? typeError)? deleteFavouriteProduct,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate,
            String? typeError)?
        getInfoProduct,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function()? goBackProductInfo,
    TResult? Function()? paginationProduct,
    TResult? Function(
            int code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size)?
        addProductToSoppingCart,
    TResult? Function(bool isButtonTop)? checkButtonTop,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(String code, bool isShop, String titleScreen)?
        getInfoProductSize,
    TResult? Function(String titleScreen)? updateInfoProducts,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String query)? searchProfucts,
    TResult Function(String query)? searchProfuctsInfo,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult Function(int index)? removeSelectFilterCategory,
    TResult Function()? removeSelectAllFilters,
    TResult Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult Function(int index, ProductDataModel product, String? typeError)?
        addFavouriteProduct,
    TResult Function(int index, String? typeError)? deleteFavouriteProduct,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate,
            String? typeError)?
        getInfoProduct,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function()? goBackProductInfo,
    TResult Function()? paginationProduct,
    TResult Function(
            int code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size)?
        addProductToSoppingCart,
    TResult Function(bool isButtonTop)? checkButtonTop,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(String code, bool isShop, String titleScreen)?
        getInfoProductSize,
    TResult Function(String titleScreen)? updateInfoProducts,
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
    required TResult Function(InitSearchEvent value) init,
    required TResult Function(ProfuctsSearchEvent value) searchProfucts,
    required TResult Function(ProfuctsInfoSearchEvent value) searchProfuctsInfo,
    required TResult Function(SelectFilterSearchEvent value) selectFilter,
    required TResult Function(DeleteFilterSearchEvent value) deleteFilter,
    required TResult Function(RemoveSelectFilterCategotySearchEvent value)
        removeSelectFilterCategory,
    required TResult Function(RemoveSelectAllFiltersCategotySearchEvent value)
        removeSelectAllFilters,
    required TResult Function(DeleteCatalogSearchEvent value)
        deleteCatalogFilter,
    required TResult Function(AddFavouriteProductSearchEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductSearchEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductSearchEvent value) getInfoProduct,
    required TResult Function(ChangeSizeProductSearchEvent value)
        changeSizeProduct,
    required TResult Function(GoBackProductInfoCategotySearchEvent value)
        goBackProductInfo,
    required TResult Function(PaginationProductSearchEvent value)
        paginationProduct,
    required TResult Function(AddProductToSoppingCartSearchEvent value)
        addProductToSoppingCart,
    required TResult Function(CheckButtonTopSearchEvent value) checkButtonTop,
    required TResult Function(CheckProductToSoppingCartSearchEvent value)
        checkProductToSoppingCart,
    required TResult Function(GetInfoProductSizeSearchEvent value)
        getInfoProductSize,
    required TResult Function(UpdateInfoProductsSearchEvent value)
        updateInfoProducts,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitSearchEvent value)? init,
    TResult? Function(ProfuctsSearchEvent value)? searchProfucts,
    TResult? Function(ProfuctsInfoSearchEvent value)? searchProfuctsInfo,
    TResult? Function(SelectFilterSearchEvent value)? selectFilter,
    TResult? Function(DeleteFilterSearchEvent value)? deleteFilter,
    TResult? Function(RemoveSelectFilterCategotySearchEvent value)?
        removeSelectFilterCategory,
    TResult? Function(RemoveSelectAllFiltersCategotySearchEvent value)?
        removeSelectAllFilters,
    TResult? Function(DeleteCatalogSearchEvent value)? deleteCatalogFilter,
    TResult? Function(AddFavouriteProductSearchEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductSearchEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductSearchEvent value)? getInfoProduct,
    TResult? Function(ChangeSizeProductSearchEvent value)? changeSizeProduct,
    TResult? Function(GoBackProductInfoCategotySearchEvent value)?
        goBackProductInfo,
    TResult? Function(PaginationProductSearchEvent value)? paginationProduct,
    TResult? Function(AddProductToSoppingCartSearchEvent value)?
        addProductToSoppingCart,
    TResult? Function(CheckButtonTopSearchEvent value)? checkButtonTop,
    TResult? Function(CheckProductToSoppingCartSearchEvent value)?
        checkProductToSoppingCart,
    TResult? Function(GetInfoProductSizeSearchEvent value)? getInfoProductSize,
    TResult? Function(UpdateInfoProductsSearchEvent value)? updateInfoProducts,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitSearchEvent value)? init,
    TResult Function(ProfuctsSearchEvent value)? searchProfucts,
    TResult Function(ProfuctsInfoSearchEvent value)? searchProfuctsInfo,
    TResult Function(SelectFilterSearchEvent value)? selectFilter,
    TResult Function(DeleteFilterSearchEvent value)? deleteFilter,
    TResult Function(RemoveSelectFilterCategotySearchEvent value)?
        removeSelectFilterCategory,
    TResult Function(RemoveSelectAllFiltersCategotySearchEvent value)?
        removeSelectAllFilters,
    TResult Function(DeleteCatalogSearchEvent value)? deleteCatalogFilter,
    TResult Function(AddFavouriteProductSearchEvent value)? addFavouriteProduct,
    TResult Function(DeleteFavouriteProductSearchEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductSearchEvent value)? getInfoProduct,
    TResult Function(ChangeSizeProductSearchEvent value)? changeSizeProduct,
    TResult Function(GoBackProductInfoCategotySearchEvent value)?
        goBackProductInfo,
    TResult Function(PaginationProductSearchEvent value)? paginationProduct,
    TResult Function(AddProductToSoppingCartSearchEvent value)?
        addProductToSoppingCart,
    TResult Function(CheckButtonTopSearchEvent value)? checkButtonTop,
    TResult Function(CheckProductToSoppingCartSearchEvent value)?
        checkProductToSoppingCart,
    TResult Function(GetInfoProductSizeSearchEvent value)? getInfoProductSize,
    TResult Function(UpdateInfoProductsSearchEvent value)? updateInfoProducts,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitSearchEvent implements SearchEvent {
  const factory InitSearchEvent() = _$InitSearchEventImpl;
}

/// @nodoc
abstract class _$$ProfuctsSearchEventImplCopyWith<$Res> {
  factory _$$ProfuctsSearchEventImplCopyWith(_$ProfuctsSearchEventImpl value,
          $Res Function(_$ProfuctsSearchEventImpl) then) =
      __$$ProfuctsSearchEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$ProfuctsSearchEventImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$ProfuctsSearchEventImpl>
    implements _$$ProfuctsSearchEventImplCopyWith<$Res> {
  __$$ProfuctsSearchEventImplCopyWithImpl(_$ProfuctsSearchEventImpl _value,
      $Res Function(_$ProfuctsSearchEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$ProfuctsSearchEventImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProfuctsSearchEventImpl implements ProfuctsSearchEvent {
  const _$ProfuctsSearchEventImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'SearchEvent.searchProfucts(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfuctsSearchEventImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfuctsSearchEventImplCopyWith<_$ProfuctsSearchEventImpl> get copyWith =>
      __$$ProfuctsSearchEventImplCopyWithImpl<_$ProfuctsSearchEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String query) searchProfucts,
    required TResult Function(String query) searchProfuctsInfo,
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
    required TResult Function(
            int index, ProductDataModel product, String? typeError)
        addFavouriteProduct,
    required TResult Function(int index, String? typeError)
        deleteFavouriteProduct,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate,
            String? typeError)
        getInfoProduct,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function() goBackProductInfo,
    required TResult Function() paginationProduct,
    required TResult Function(
            int code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size)
        addProductToSoppingCart,
    required TResult Function(bool isButtonTop) checkButtonTop,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(String code, bool isShop, String titleScreen)
        getInfoProductSize,
    required TResult Function(String titleScreen) updateInfoProducts,
  }) {
    return searchProfucts(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String query)? searchProfucts,
    TResult? Function(String query)? searchProfuctsInfo,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult? Function(int index)? removeSelectFilterCategory,
    TResult? Function()? removeSelectAllFilters,
    TResult? Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult? Function(int index, ProductDataModel product, String? typeError)?
        addFavouriteProduct,
    TResult? Function(int index, String? typeError)? deleteFavouriteProduct,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate,
            String? typeError)?
        getInfoProduct,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function()? goBackProductInfo,
    TResult? Function()? paginationProduct,
    TResult? Function(
            int code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size)?
        addProductToSoppingCart,
    TResult? Function(bool isButtonTop)? checkButtonTop,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(String code, bool isShop, String titleScreen)?
        getInfoProductSize,
    TResult? Function(String titleScreen)? updateInfoProducts,
  }) {
    return searchProfucts?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String query)? searchProfucts,
    TResult Function(String query)? searchProfuctsInfo,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult Function(int index)? removeSelectFilterCategory,
    TResult Function()? removeSelectAllFilters,
    TResult Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult Function(int index, ProductDataModel product, String? typeError)?
        addFavouriteProduct,
    TResult Function(int index, String? typeError)? deleteFavouriteProduct,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate,
            String? typeError)?
        getInfoProduct,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function()? goBackProductInfo,
    TResult Function()? paginationProduct,
    TResult Function(
            int code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size)?
        addProductToSoppingCart,
    TResult Function(bool isButtonTop)? checkButtonTop,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(String code, bool isShop, String titleScreen)?
        getInfoProductSize,
    TResult Function(String titleScreen)? updateInfoProducts,
    required TResult orElse(),
  }) {
    if (searchProfucts != null) {
      return searchProfucts(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitSearchEvent value) init,
    required TResult Function(ProfuctsSearchEvent value) searchProfucts,
    required TResult Function(ProfuctsInfoSearchEvent value) searchProfuctsInfo,
    required TResult Function(SelectFilterSearchEvent value) selectFilter,
    required TResult Function(DeleteFilterSearchEvent value) deleteFilter,
    required TResult Function(RemoveSelectFilterCategotySearchEvent value)
        removeSelectFilterCategory,
    required TResult Function(RemoveSelectAllFiltersCategotySearchEvent value)
        removeSelectAllFilters,
    required TResult Function(DeleteCatalogSearchEvent value)
        deleteCatalogFilter,
    required TResult Function(AddFavouriteProductSearchEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductSearchEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductSearchEvent value) getInfoProduct,
    required TResult Function(ChangeSizeProductSearchEvent value)
        changeSizeProduct,
    required TResult Function(GoBackProductInfoCategotySearchEvent value)
        goBackProductInfo,
    required TResult Function(PaginationProductSearchEvent value)
        paginationProduct,
    required TResult Function(AddProductToSoppingCartSearchEvent value)
        addProductToSoppingCart,
    required TResult Function(CheckButtonTopSearchEvent value) checkButtonTop,
    required TResult Function(CheckProductToSoppingCartSearchEvent value)
        checkProductToSoppingCart,
    required TResult Function(GetInfoProductSizeSearchEvent value)
        getInfoProductSize,
    required TResult Function(UpdateInfoProductsSearchEvent value)
        updateInfoProducts,
  }) {
    return searchProfucts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitSearchEvent value)? init,
    TResult? Function(ProfuctsSearchEvent value)? searchProfucts,
    TResult? Function(ProfuctsInfoSearchEvent value)? searchProfuctsInfo,
    TResult? Function(SelectFilterSearchEvent value)? selectFilter,
    TResult? Function(DeleteFilterSearchEvent value)? deleteFilter,
    TResult? Function(RemoveSelectFilterCategotySearchEvent value)?
        removeSelectFilterCategory,
    TResult? Function(RemoveSelectAllFiltersCategotySearchEvent value)?
        removeSelectAllFilters,
    TResult? Function(DeleteCatalogSearchEvent value)? deleteCatalogFilter,
    TResult? Function(AddFavouriteProductSearchEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductSearchEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductSearchEvent value)? getInfoProduct,
    TResult? Function(ChangeSizeProductSearchEvent value)? changeSizeProduct,
    TResult? Function(GoBackProductInfoCategotySearchEvent value)?
        goBackProductInfo,
    TResult? Function(PaginationProductSearchEvent value)? paginationProduct,
    TResult? Function(AddProductToSoppingCartSearchEvent value)?
        addProductToSoppingCart,
    TResult? Function(CheckButtonTopSearchEvent value)? checkButtonTop,
    TResult? Function(CheckProductToSoppingCartSearchEvent value)?
        checkProductToSoppingCart,
    TResult? Function(GetInfoProductSizeSearchEvent value)? getInfoProductSize,
    TResult? Function(UpdateInfoProductsSearchEvent value)? updateInfoProducts,
  }) {
    return searchProfucts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitSearchEvent value)? init,
    TResult Function(ProfuctsSearchEvent value)? searchProfucts,
    TResult Function(ProfuctsInfoSearchEvent value)? searchProfuctsInfo,
    TResult Function(SelectFilterSearchEvent value)? selectFilter,
    TResult Function(DeleteFilterSearchEvent value)? deleteFilter,
    TResult Function(RemoveSelectFilterCategotySearchEvent value)?
        removeSelectFilterCategory,
    TResult Function(RemoveSelectAllFiltersCategotySearchEvent value)?
        removeSelectAllFilters,
    TResult Function(DeleteCatalogSearchEvent value)? deleteCatalogFilter,
    TResult Function(AddFavouriteProductSearchEvent value)? addFavouriteProduct,
    TResult Function(DeleteFavouriteProductSearchEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductSearchEvent value)? getInfoProduct,
    TResult Function(ChangeSizeProductSearchEvent value)? changeSizeProduct,
    TResult Function(GoBackProductInfoCategotySearchEvent value)?
        goBackProductInfo,
    TResult Function(PaginationProductSearchEvent value)? paginationProduct,
    TResult Function(AddProductToSoppingCartSearchEvent value)?
        addProductToSoppingCart,
    TResult Function(CheckButtonTopSearchEvent value)? checkButtonTop,
    TResult Function(CheckProductToSoppingCartSearchEvent value)?
        checkProductToSoppingCart,
    TResult Function(GetInfoProductSizeSearchEvent value)? getInfoProductSize,
    TResult Function(UpdateInfoProductsSearchEvent value)? updateInfoProducts,
    required TResult orElse(),
  }) {
    if (searchProfucts != null) {
      return searchProfucts(this);
    }
    return orElse();
  }
}

abstract class ProfuctsSearchEvent implements SearchEvent {
  const factory ProfuctsSearchEvent(final String query) =
      _$ProfuctsSearchEventImpl;

  String get query;

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfuctsSearchEventImplCopyWith<_$ProfuctsSearchEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProfuctsInfoSearchEventImplCopyWith<$Res> {
  factory _$$ProfuctsInfoSearchEventImplCopyWith(
          _$ProfuctsInfoSearchEventImpl value,
          $Res Function(_$ProfuctsInfoSearchEventImpl) then) =
      __$$ProfuctsInfoSearchEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$ProfuctsInfoSearchEventImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$ProfuctsInfoSearchEventImpl>
    implements _$$ProfuctsInfoSearchEventImplCopyWith<$Res> {
  __$$ProfuctsInfoSearchEventImplCopyWithImpl(
      _$ProfuctsInfoSearchEventImpl _value,
      $Res Function(_$ProfuctsInfoSearchEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$ProfuctsInfoSearchEventImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProfuctsInfoSearchEventImpl implements ProfuctsInfoSearchEvent {
  const _$ProfuctsInfoSearchEventImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'SearchEvent.searchProfuctsInfo(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfuctsInfoSearchEventImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfuctsInfoSearchEventImplCopyWith<_$ProfuctsInfoSearchEventImpl>
      get copyWith => __$$ProfuctsInfoSearchEventImplCopyWithImpl<
          _$ProfuctsInfoSearchEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String query) searchProfucts,
    required TResult Function(String query) searchProfuctsInfo,
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
    required TResult Function(
            int index, ProductDataModel product, String? typeError)
        addFavouriteProduct,
    required TResult Function(int index, String? typeError)
        deleteFavouriteProduct,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate,
            String? typeError)
        getInfoProduct,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function() goBackProductInfo,
    required TResult Function() paginationProduct,
    required TResult Function(
            int code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size)
        addProductToSoppingCart,
    required TResult Function(bool isButtonTop) checkButtonTop,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(String code, bool isShop, String titleScreen)
        getInfoProductSize,
    required TResult Function(String titleScreen) updateInfoProducts,
  }) {
    return searchProfuctsInfo(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String query)? searchProfucts,
    TResult? Function(String query)? searchProfuctsInfo,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult? Function(int index)? removeSelectFilterCategory,
    TResult? Function()? removeSelectAllFilters,
    TResult? Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult? Function(int index, ProductDataModel product, String? typeError)?
        addFavouriteProduct,
    TResult? Function(int index, String? typeError)? deleteFavouriteProduct,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate,
            String? typeError)?
        getInfoProduct,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function()? goBackProductInfo,
    TResult? Function()? paginationProduct,
    TResult? Function(
            int code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size)?
        addProductToSoppingCart,
    TResult? Function(bool isButtonTop)? checkButtonTop,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(String code, bool isShop, String titleScreen)?
        getInfoProductSize,
    TResult? Function(String titleScreen)? updateInfoProducts,
  }) {
    return searchProfuctsInfo?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String query)? searchProfucts,
    TResult Function(String query)? searchProfuctsInfo,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult Function(int index)? removeSelectFilterCategory,
    TResult Function()? removeSelectAllFilters,
    TResult Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult Function(int index, ProductDataModel product, String? typeError)?
        addFavouriteProduct,
    TResult Function(int index, String? typeError)? deleteFavouriteProduct,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate,
            String? typeError)?
        getInfoProduct,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function()? goBackProductInfo,
    TResult Function()? paginationProduct,
    TResult Function(
            int code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size)?
        addProductToSoppingCart,
    TResult Function(bool isButtonTop)? checkButtonTop,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(String code, bool isShop, String titleScreen)?
        getInfoProductSize,
    TResult Function(String titleScreen)? updateInfoProducts,
    required TResult orElse(),
  }) {
    if (searchProfuctsInfo != null) {
      return searchProfuctsInfo(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitSearchEvent value) init,
    required TResult Function(ProfuctsSearchEvent value) searchProfucts,
    required TResult Function(ProfuctsInfoSearchEvent value) searchProfuctsInfo,
    required TResult Function(SelectFilterSearchEvent value) selectFilter,
    required TResult Function(DeleteFilterSearchEvent value) deleteFilter,
    required TResult Function(RemoveSelectFilterCategotySearchEvent value)
        removeSelectFilterCategory,
    required TResult Function(RemoveSelectAllFiltersCategotySearchEvent value)
        removeSelectAllFilters,
    required TResult Function(DeleteCatalogSearchEvent value)
        deleteCatalogFilter,
    required TResult Function(AddFavouriteProductSearchEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductSearchEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductSearchEvent value) getInfoProduct,
    required TResult Function(ChangeSizeProductSearchEvent value)
        changeSizeProduct,
    required TResult Function(GoBackProductInfoCategotySearchEvent value)
        goBackProductInfo,
    required TResult Function(PaginationProductSearchEvent value)
        paginationProduct,
    required TResult Function(AddProductToSoppingCartSearchEvent value)
        addProductToSoppingCart,
    required TResult Function(CheckButtonTopSearchEvent value) checkButtonTop,
    required TResult Function(CheckProductToSoppingCartSearchEvent value)
        checkProductToSoppingCart,
    required TResult Function(GetInfoProductSizeSearchEvent value)
        getInfoProductSize,
    required TResult Function(UpdateInfoProductsSearchEvent value)
        updateInfoProducts,
  }) {
    return searchProfuctsInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitSearchEvent value)? init,
    TResult? Function(ProfuctsSearchEvent value)? searchProfucts,
    TResult? Function(ProfuctsInfoSearchEvent value)? searchProfuctsInfo,
    TResult? Function(SelectFilterSearchEvent value)? selectFilter,
    TResult? Function(DeleteFilterSearchEvent value)? deleteFilter,
    TResult? Function(RemoveSelectFilterCategotySearchEvent value)?
        removeSelectFilterCategory,
    TResult? Function(RemoveSelectAllFiltersCategotySearchEvent value)?
        removeSelectAllFilters,
    TResult? Function(DeleteCatalogSearchEvent value)? deleteCatalogFilter,
    TResult? Function(AddFavouriteProductSearchEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductSearchEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductSearchEvent value)? getInfoProduct,
    TResult? Function(ChangeSizeProductSearchEvent value)? changeSizeProduct,
    TResult? Function(GoBackProductInfoCategotySearchEvent value)?
        goBackProductInfo,
    TResult? Function(PaginationProductSearchEvent value)? paginationProduct,
    TResult? Function(AddProductToSoppingCartSearchEvent value)?
        addProductToSoppingCart,
    TResult? Function(CheckButtonTopSearchEvent value)? checkButtonTop,
    TResult? Function(CheckProductToSoppingCartSearchEvent value)?
        checkProductToSoppingCart,
    TResult? Function(GetInfoProductSizeSearchEvent value)? getInfoProductSize,
    TResult? Function(UpdateInfoProductsSearchEvent value)? updateInfoProducts,
  }) {
    return searchProfuctsInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitSearchEvent value)? init,
    TResult Function(ProfuctsSearchEvent value)? searchProfucts,
    TResult Function(ProfuctsInfoSearchEvent value)? searchProfuctsInfo,
    TResult Function(SelectFilterSearchEvent value)? selectFilter,
    TResult Function(DeleteFilterSearchEvent value)? deleteFilter,
    TResult Function(RemoveSelectFilterCategotySearchEvent value)?
        removeSelectFilterCategory,
    TResult Function(RemoveSelectAllFiltersCategotySearchEvent value)?
        removeSelectAllFilters,
    TResult Function(DeleteCatalogSearchEvent value)? deleteCatalogFilter,
    TResult Function(AddFavouriteProductSearchEvent value)? addFavouriteProduct,
    TResult Function(DeleteFavouriteProductSearchEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductSearchEvent value)? getInfoProduct,
    TResult Function(ChangeSizeProductSearchEvent value)? changeSizeProduct,
    TResult Function(GoBackProductInfoCategotySearchEvent value)?
        goBackProductInfo,
    TResult Function(PaginationProductSearchEvent value)? paginationProduct,
    TResult Function(AddProductToSoppingCartSearchEvent value)?
        addProductToSoppingCart,
    TResult Function(CheckButtonTopSearchEvent value)? checkButtonTop,
    TResult Function(CheckProductToSoppingCartSearchEvent value)?
        checkProductToSoppingCart,
    TResult Function(GetInfoProductSizeSearchEvent value)? getInfoProductSize,
    TResult Function(UpdateInfoProductsSearchEvent value)? updateInfoProducts,
    required TResult orElse(),
  }) {
    if (searchProfuctsInfo != null) {
      return searchProfuctsInfo(this);
    }
    return orElse();
  }
}

abstract class ProfuctsInfoSearchEvent implements SearchEvent {
  const factory ProfuctsInfoSearchEvent(final String query) =
      _$ProfuctsInfoSearchEventImpl;

  String get query;

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfuctsInfoSearchEventImplCopyWith<_$ProfuctsInfoSearchEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectFilterSearchEventImplCopyWith<$Res> {
  factory _$$SelectFilterSearchEventImplCopyWith(
          _$SelectFilterSearchEventImpl value,
          $Res Function(_$SelectFilterSearchEventImpl) then) =
      __$$SelectFilterSearchEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index, int indexItem, FilterItemDataModel item});

  $FilterItemDataModelCopyWith<$Res> get item;
}

/// @nodoc
class __$$SelectFilterSearchEventImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$SelectFilterSearchEventImpl>
    implements _$$SelectFilterSearchEventImplCopyWith<$Res> {
  __$$SelectFilterSearchEventImplCopyWithImpl(
      _$SelectFilterSearchEventImpl _value,
      $Res Function(_$SelectFilterSearchEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? indexItem = null,
    Object? item = null,
  }) {
    return _then(_$SelectFilterSearchEventImpl(
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

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FilterItemDataModelCopyWith<$Res> get item {
    return $FilterItemDataModelCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc

class _$SelectFilterSearchEventImpl implements SelectFilterSearchEvent {
  const _$SelectFilterSearchEventImpl(
      {required this.index, required this.indexItem, required this.item});

  @override
  final int index;
  @override
  final int indexItem;
  @override
  final FilterItemDataModel item;

  @override
  String toString() {
    return 'SearchEvent.selectFilter(index: $index, indexItem: $indexItem, item: $item)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectFilterSearchEventImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.indexItem, indexItem) ||
                other.indexItem == indexItem) &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, indexItem, item);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectFilterSearchEventImplCopyWith<_$SelectFilterSearchEventImpl>
      get copyWith => __$$SelectFilterSearchEventImplCopyWithImpl<
          _$SelectFilterSearchEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String query) searchProfucts,
    required TResult Function(String query) searchProfuctsInfo,
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
    required TResult Function(
            int index, ProductDataModel product, String? typeError)
        addFavouriteProduct,
    required TResult Function(int index, String? typeError)
        deleteFavouriteProduct,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate,
            String? typeError)
        getInfoProduct,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function() goBackProductInfo,
    required TResult Function() paginationProduct,
    required TResult Function(
            int code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size)
        addProductToSoppingCart,
    required TResult Function(bool isButtonTop) checkButtonTop,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(String code, bool isShop, String titleScreen)
        getInfoProductSize,
    required TResult Function(String titleScreen) updateInfoProducts,
  }) {
    return selectFilter(index, indexItem, item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String query)? searchProfucts,
    TResult? Function(String query)? searchProfuctsInfo,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult? Function(int index)? removeSelectFilterCategory,
    TResult? Function()? removeSelectAllFilters,
    TResult? Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult? Function(int index, ProductDataModel product, String? typeError)?
        addFavouriteProduct,
    TResult? Function(int index, String? typeError)? deleteFavouriteProduct,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate,
            String? typeError)?
        getInfoProduct,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function()? goBackProductInfo,
    TResult? Function()? paginationProduct,
    TResult? Function(
            int code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size)?
        addProductToSoppingCart,
    TResult? Function(bool isButtonTop)? checkButtonTop,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(String code, bool isShop, String titleScreen)?
        getInfoProductSize,
    TResult? Function(String titleScreen)? updateInfoProducts,
  }) {
    return selectFilter?.call(index, indexItem, item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String query)? searchProfucts,
    TResult Function(String query)? searchProfuctsInfo,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult Function(int index)? removeSelectFilterCategory,
    TResult Function()? removeSelectAllFilters,
    TResult Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult Function(int index, ProductDataModel product, String? typeError)?
        addFavouriteProduct,
    TResult Function(int index, String? typeError)? deleteFavouriteProduct,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate,
            String? typeError)?
        getInfoProduct,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function()? goBackProductInfo,
    TResult Function()? paginationProduct,
    TResult Function(
            int code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size)?
        addProductToSoppingCart,
    TResult Function(bool isButtonTop)? checkButtonTop,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(String code, bool isShop, String titleScreen)?
        getInfoProductSize,
    TResult Function(String titleScreen)? updateInfoProducts,
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
    required TResult Function(InitSearchEvent value) init,
    required TResult Function(ProfuctsSearchEvent value) searchProfucts,
    required TResult Function(ProfuctsInfoSearchEvent value) searchProfuctsInfo,
    required TResult Function(SelectFilterSearchEvent value) selectFilter,
    required TResult Function(DeleteFilterSearchEvent value) deleteFilter,
    required TResult Function(RemoveSelectFilterCategotySearchEvent value)
        removeSelectFilterCategory,
    required TResult Function(RemoveSelectAllFiltersCategotySearchEvent value)
        removeSelectAllFilters,
    required TResult Function(DeleteCatalogSearchEvent value)
        deleteCatalogFilter,
    required TResult Function(AddFavouriteProductSearchEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductSearchEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductSearchEvent value) getInfoProduct,
    required TResult Function(ChangeSizeProductSearchEvent value)
        changeSizeProduct,
    required TResult Function(GoBackProductInfoCategotySearchEvent value)
        goBackProductInfo,
    required TResult Function(PaginationProductSearchEvent value)
        paginationProduct,
    required TResult Function(AddProductToSoppingCartSearchEvent value)
        addProductToSoppingCart,
    required TResult Function(CheckButtonTopSearchEvent value) checkButtonTop,
    required TResult Function(CheckProductToSoppingCartSearchEvent value)
        checkProductToSoppingCart,
    required TResult Function(GetInfoProductSizeSearchEvent value)
        getInfoProductSize,
    required TResult Function(UpdateInfoProductsSearchEvent value)
        updateInfoProducts,
  }) {
    return selectFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitSearchEvent value)? init,
    TResult? Function(ProfuctsSearchEvent value)? searchProfucts,
    TResult? Function(ProfuctsInfoSearchEvent value)? searchProfuctsInfo,
    TResult? Function(SelectFilterSearchEvent value)? selectFilter,
    TResult? Function(DeleteFilterSearchEvent value)? deleteFilter,
    TResult? Function(RemoveSelectFilterCategotySearchEvent value)?
        removeSelectFilterCategory,
    TResult? Function(RemoveSelectAllFiltersCategotySearchEvent value)?
        removeSelectAllFilters,
    TResult? Function(DeleteCatalogSearchEvent value)? deleteCatalogFilter,
    TResult? Function(AddFavouriteProductSearchEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductSearchEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductSearchEvent value)? getInfoProduct,
    TResult? Function(ChangeSizeProductSearchEvent value)? changeSizeProduct,
    TResult? Function(GoBackProductInfoCategotySearchEvent value)?
        goBackProductInfo,
    TResult? Function(PaginationProductSearchEvent value)? paginationProduct,
    TResult? Function(AddProductToSoppingCartSearchEvent value)?
        addProductToSoppingCart,
    TResult? Function(CheckButtonTopSearchEvent value)? checkButtonTop,
    TResult? Function(CheckProductToSoppingCartSearchEvent value)?
        checkProductToSoppingCart,
    TResult? Function(GetInfoProductSizeSearchEvent value)? getInfoProductSize,
    TResult? Function(UpdateInfoProductsSearchEvent value)? updateInfoProducts,
  }) {
    return selectFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitSearchEvent value)? init,
    TResult Function(ProfuctsSearchEvent value)? searchProfucts,
    TResult Function(ProfuctsInfoSearchEvent value)? searchProfuctsInfo,
    TResult Function(SelectFilterSearchEvent value)? selectFilter,
    TResult Function(DeleteFilterSearchEvent value)? deleteFilter,
    TResult Function(RemoveSelectFilterCategotySearchEvent value)?
        removeSelectFilterCategory,
    TResult Function(RemoveSelectAllFiltersCategotySearchEvent value)?
        removeSelectAllFilters,
    TResult Function(DeleteCatalogSearchEvent value)? deleteCatalogFilter,
    TResult Function(AddFavouriteProductSearchEvent value)? addFavouriteProduct,
    TResult Function(DeleteFavouriteProductSearchEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductSearchEvent value)? getInfoProduct,
    TResult Function(ChangeSizeProductSearchEvent value)? changeSizeProduct,
    TResult Function(GoBackProductInfoCategotySearchEvent value)?
        goBackProductInfo,
    TResult Function(PaginationProductSearchEvent value)? paginationProduct,
    TResult Function(AddProductToSoppingCartSearchEvent value)?
        addProductToSoppingCart,
    TResult Function(CheckButtonTopSearchEvent value)? checkButtonTop,
    TResult Function(CheckProductToSoppingCartSearchEvent value)?
        checkProductToSoppingCart,
    TResult Function(GetInfoProductSizeSearchEvent value)? getInfoProductSize,
    TResult Function(UpdateInfoProductsSearchEvent value)? updateInfoProducts,
    required TResult orElse(),
  }) {
    if (selectFilter != null) {
      return selectFilter(this);
    }
    return orElse();
  }
}

abstract class SelectFilterSearchEvent implements SearchEvent {
  const factory SelectFilterSearchEvent(
      {required final int index,
      required final int indexItem,
      required final FilterItemDataModel item}) = _$SelectFilterSearchEventImpl;

  int get index;
  int get indexItem;
  FilterItemDataModel get item;

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectFilterSearchEventImplCopyWith<_$SelectFilterSearchEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteFilterSearchEventImplCopyWith<$Res> {
  factory _$$DeleteFilterSearchEventImplCopyWith(
          _$DeleteFilterSearchEventImpl value,
          $Res Function(_$DeleteFilterSearchEventImpl) then) =
      __$$DeleteFilterSearchEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index, int indexItem, FilterItemDataModel item});

  $FilterItemDataModelCopyWith<$Res> get item;
}

/// @nodoc
class __$$DeleteFilterSearchEventImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$DeleteFilterSearchEventImpl>
    implements _$$DeleteFilterSearchEventImplCopyWith<$Res> {
  __$$DeleteFilterSearchEventImplCopyWithImpl(
      _$DeleteFilterSearchEventImpl _value,
      $Res Function(_$DeleteFilterSearchEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? indexItem = null,
    Object? item = null,
  }) {
    return _then(_$DeleteFilterSearchEventImpl(
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

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FilterItemDataModelCopyWith<$Res> get item {
    return $FilterItemDataModelCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc

class _$DeleteFilterSearchEventImpl implements DeleteFilterSearchEvent {
  const _$DeleteFilterSearchEventImpl(
      {required this.index, required this.indexItem, required this.item});

  @override
  final int index;
  @override
  final int indexItem;
  @override
  final FilterItemDataModel item;

  @override
  String toString() {
    return 'SearchEvent.deleteFilter(index: $index, indexItem: $indexItem, item: $item)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteFilterSearchEventImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.indexItem, indexItem) ||
                other.indexItem == indexItem) &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, indexItem, item);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteFilterSearchEventImplCopyWith<_$DeleteFilterSearchEventImpl>
      get copyWith => __$$DeleteFilterSearchEventImplCopyWithImpl<
          _$DeleteFilterSearchEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String query) searchProfucts,
    required TResult Function(String query) searchProfuctsInfo,
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
    required TResult Function(
            int index, ProductDataModel product, String? typeError)
        addFavouriteProduct,
    required TResult Function(int index, String? typeError)
        deleteFavouriteProduct,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate,
            String? typeError)
        getInfoProduct,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function() goBackProductInfo,
    required TResult Function() paginationProduct,
    required TResult Function(
            int code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size)
        addProductToSoppingCart,
    required TResult Function(bool isButtonTop) checkButtonTop,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(String code, bool isShop, String titleScreen)
        getInfoProductSize,
    required TResult Function(String titleScreen) updateInfoProducts,
  }) {
    return deleteFilter(index, indexItem, item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String query)? searchProfucts,
    TResult? Function(String query)? searchProfuctsInfo,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult? Function(int index)? removeSelectFilterCategory,
    TResult? Function()? removeSelectAllFilters,
    TResult? Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult? Function(int index, ProductDataModel product, String? typeError)?
        addFavouriteProduct,
    TResult? Function(int index, String? typeError)? deleteFavouriteProduct,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate,
            String? typeError)?
        getInfoProduct,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function()? goBackProductInfo,
    TResult? Function()? paginationProduct,
    TResult? Function(
            int code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size)?
        addProductToSoppingCart,
    TResult? Function(bool isButtonTop)? checkButtonTop,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(String code, bool isShop, String titleScreen)?
        getInfoProductSize,
    TResult? Function(String titleScreen)? updateInfoProducts,
  }) {
    return deleteFilter?.call(index, indexItem, item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String query)? searchProfucts,
    TResult Function(String query)? searchProfuctsInfo,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult Function(int index)? removeSelectFilterCategory,
    TResult Function()? removeSelectAllFilters,
    TResult Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult Function(int index, ProductDataModel product, String? typeError)?
        addFavouriteProduct,
    TResult Function(int index, String? typeError)? deleteFavouriteProduct,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate,
            String? typeError)?
        getInfoProduct,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function()? goBackProductInfo,
    TResult Function()? paginationProduct,
    TResult Function(
            int code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size)?
        addProductToSoppingCart,
    TResult Function(bool isButtonTop)? checkButtonTop,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(String code, bool isShop, String titleScreen)?
        getInfoProductSize,
    TResult Function(String titleScreen)? updateInfoProducts,
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
    required TResult Function(InitSearchEvent value) init,
    required TResult Function(ProfuctsSearchEvent value) searchProfucts,
    required TResult Function(ProfuctsInfoSearchEvent value) searchProfuctsInfo,
    required TResult Function(SelectFilterSearchEvent value) selectFilter,
    required TResult Function(DeleteFilterSearchEvent value) deleteFilter,
    required TResult Function(RemoveSelectFilterCategotySearchEvent value)
        removeSelectFilterCategory,
    required TResult Function(RemoveSelectAllFiltersCategotySearchEvent value)
        removeSelectAllFilters,
    required TResult Function(DeleteCatalogSearchEvent value)
        deleteCatalogFilter,
    required TResult Function(AddFavouriteProductSearchEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductSearchEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductSearchEvent value) getInfoProduct,
    required TResult Function(ChangeSizeProductSearchEvent value)
        changeSizeProduct,
    required TResult Function(GoBackProductInfoCategotySearchEvent value)
        goBackProductInfo,
    required TResult Function(PaginationProductSearchEvent value)
        paginationProduct,
    required TResult Function(AddProductToSoppingCartSearchEvent value)
        addProductToSoppingCart,
    required TResult Function(CheckButtonTopSearchEvent value) checkButtonTop,
    required TResult Function(CheckProductToSoppingCartSearchEvent value)
        checkProductToSoppingCart,
    required TResult Function(GetInfoProductSizeSearchEvent value)
        getInfoProductSize,
    required TResult Function(UpdateInfoProductsSearchEvent value)
        updateInfoProducts,
  }) {
    return deleteFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitSearchEvent value)? init,
    TResult? Function(ProfuctsSearchEvent value)? searchProfucts,
    TResult? Function(ProfuctsInfoSearchEvent value)? searchProfuctsInfo,
    TResult? Function(SelectFilterSearchEvent value)? selectFilter,
    TResult? Function(DeleteFilterSearchEvent value)? deleteFilter,
    TResult? Function(RemoveSelectFilterCategotySearchEvent value)?
        removeSelectFilterCategory,
    TResult? Function(RemoveSelectAllFiltersCategotySearchEvent value)?
        removeSelectAllFilters,
    TResult? Function(DeleteCatalogSearchEvent value)? deleteCatalogFilter,
    TResult? Function(AddFavouriteProductSearchEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductSearchEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductSearchEvent value)? getInfoProduct,
    TResult? Function(ChangeSizeProductSearchEvent value)? changeSizeProduct,
    TResult? Function(GoBackProductInfoCategotySearchEvent value)?
        goBackProductInfo,
    TResult? Function(PaginationProductSearchEvent value)? paginationProduct,
    TResult? Function(AddProductToSoppingCartSearchEvent value)?
        addProductToSoppingCart,
    TResult? Function(CheckButtonTopSearchEvent value)? checkButtonTop,
    TResult? Function(CheckProductToSoppingCartSearchEvent value)?
        checkProductToSoppingCart,
    TResult? Function(GetInfoProductSizeSearchEvent value)? getInfoProductSize,
    TResult? Function(UpdateInfoProductsSearchEvent value)? updateInfoProducts,
  }) {
    return deleteFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitSearchEvent value)? init,
    TResult Function(ProfuctsSearchEvent value)? searchProfucts,
    TResult Function(ProfuctsInfoSearchEvent value)? searchProfuctsInfo,
    TResult Function(SelectFilterSearchEvent value)? selectFilter,
    TResult Function(DeleteFilterSearchEvent value)? deleteFilter,
    TResult Function(RemoveSelectFilterCategotySearchEvent value)?
        removeSelectFilterCategory,
    TResult Function(RemoveSelectAllFiltersCategotySearchEvent value)?
        removeSelectAllFilters,
    TResult Function(DeleteCatalogSearchEvent value)? deleteCatalogFilter,
    TResult Function(AddFavouriteProductSearchEvent value)? addFavouriteProduct,
    TResult Function(DeleteFavouriteProductSearchEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductSearchEvent value)? getInfoProduct,
    TResult Function(ChangeSizeProductSearchEvent value)? changeSizeProduct,
    TResult Function(GoBackProductInfoCategotySearchEvent value)?
        goBackProductInfo,
    TResult Function(PaginationProductSearchEvent value)? paginationProduct,
    TResult Function(AddProductToSoppingCartSearchEvent value)?
        addProductToSoppingCart,
    TResult Function(CheckButtonTopSearchEvent value)? checkButtonTop,
    TResult Function(CheckProductToSoppingCartSearchEvent value)?
        checkProductToSoppingCart,
    TResult Function(GetInfoProductSizeSearchEvent value)? getInfoProductSize,
    TResult Function(UpdateInfoProductsSearchEvent value)? updateInfoProducts,
    required TResult orElse(),
  }) {
    if (deleteFilter != null) {
      return deleteFilter(this);
    }
    return orElse();
  }
}

abstract class DeleteFilterSearchEvent implements SearchEvent {
  const factory DeleteFilterSearchEvent(
      {required final int index,
      required final int indexItem,
      required final FilterItemDataModel item}) = _$DeleteFilterSearchEventImpl;

  int get index;
  int get indexItem;
  FilterItemDataModel get item;

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteFilterSearchEventImplCopyWith<_$DeleteFilterSearchEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveSelectFilterCategotySearchEventImplCopyWith<$Res> {
  factory _$$RemoveSelectFilterCategotySearchEventImplCopyWith(
          _$RemoveSelectFilterCategotySearchEventImpl value,
          $Res Function(_$RemoveSelectFilterCategotySearchEventImpl) then) =
      __$$RemoveSelectFilterCategotySearchEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$RemoveSelectFilterCategotySearchEventImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res,
        _$RemoveSelectFilterCategotySearchEventImpl>
    implements _$$RemoveSelectFilterCategotySearchEventImplCopyWith<$Res> {
  __$$RemoveSelectFilterCategotySearchEventImplCopyWithImpl(
      _$RemoveSelectFilterCategotySearchEventImpl _value,
      $Res Function(_$RemoveSelectFilterCategotySearchEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$RemoveSelectFilterCategotySearchEventImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RemoveSelectFilterCategotySearchEventImpl
    implements RemoveSelectFilterCategotySearchEvent {
  const _$RemoveSelectFilterCategotySearchEventImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'SearchEvent.removeSelectFilterCategory(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveSelectFilterCategotySearchEventImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveSelectFilterCategotySearchEventImplCopyWith<
          _$RemoveSelectFilterCategotySearchEventImpl>
      get copyWith => __$$RemoveSelectFilterCategotySearchEventImplCopyWithImpl<
          _$RemoveSelectFilterCategotySearchEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String query) searchProfucts,
    required TResult Function(String query) searchProfuctsInfo,
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
    required TResult Function(
            int index, ProductDataModel product, String? typeError)
        addFavouriteProduct,
    required TResult Function(int index, String? typeError)
        deleteFavouriteProduct,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate,
            String? typeError)
        getInfoProduct,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function() goBackProductInfo,
    required TResult Function() paginationProduct,
    required TResult Function(
            int code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size)
        addProductToSoppingCart,
    required TResult Function(bool isButtonTop) checkButtonTop,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(String code, bool isShop, String titleScreen)
        getInfoProductSize,
    required TResult Function(String titleScreen) updateInfoProducts,
  }) {
    return removeSelectFilterCategory(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String query)? searchProfucts,
    TResult? Function(String query)? searchProfuctsInfo,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult? Function(int index)? removeSelectFilterCategory,
    TResult? Function()? removeSelectAllFilters,
    TResult? Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult? Function(int index, ProductDataModel product, String? typeError)?
        addFavouriteProduct,
    TResult? Function(int index, String? typeError)? deleteFavouriteProduct,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate,
            String? typeError)?
        getInfoProduct,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function()? goBackProductInfo,
    TResult? Function()? paginationProduct,
    TResult? Function(
            int code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size)?
        addProductToSoppingCart,
    TResult? Function(bool isButtonTop)? checkButtonTop,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(String code, bool isShop, String titleScreen)?
        getInfoProductSize,
    TResult? Function(String titleScreen)? updateInfoProducts,
  }) {
    return removeSelectFilterCategory?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String query)? searchProfucts,
    TResult Function(String query)? searchProfuctsInfo,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult Function(int index)? removeSelectFilterCategory,
    TResult Function()? removeSelectAllFilters,
    TResult Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult Function(int index, ProductDataModel product, String? typeError)?
        addFavouriteProduct,
    TResult Function(int index, String? typeError)? deleteFavouriteProduct,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate,
            String? typeError)?
        getInfoProduct,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function()? goBackProductInfo,
    TResult Function()? paginationProduct,
    TResult Function(
            int code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size)?
        addProductToSoppingCart,
    TResult Function(bool isButtonTop)? checkButtonTop,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(String code, bool isShop, String titleScreen)?
        getInfoProductSize,
    TResult Function(String titleScreen)? updateInfoProducts,
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
    required TResult Function(InitSearchEvent value) init,
    required TResult Function(ProfuctsSearchEvent value) searchProfucts,
    required TResult Function(ProfuctsInfoSearchEvent value) searchProfuctsInfo,
    required TResult Function(SelectFilterSearchEvent value) selectFilter,
    required TResult Function(DeleteFilterSearchEvent value) deleteFilter,
    required TResult Function(RemoveSelectFilterCategotySearchEvent value)
        removeSelectFilterCategory,
    required TResult Function(RemoveSelectAllFiltersCategotySearchEvent value)
        removeSelectAllFilters,
    required TResult Function(DeleteCatalogSearchEvent value)
        deleteCatalogFilter,
    required TResult Function(AddFavouriteProductSearchEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductSearchEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductSearchEvent value) getInfoProduct,
    required TResult Function(ChangeSizeProductSearchEvent value)
        changeSizeProduct,
    required TResult Function(GoBackProductInfoCategotySearchEvent value)
        goBackProductInfo,
    required TResult Function(PaginationProductSearchEvent value)
        paginationProduct,
    required TResult Function(AddProductToSoppingCartSearchEvent value)
        addProductToSoppingCart,
    required TResult Function(CheckButtonTopSearchEvent value) checkButtonTop,
    required TResult Function(CheckProductToSoppingCartSearchEvent value)
        checkProductToSoppingCart,
    required TResult Function(GetInfoProductSizeSearchEvent value)
        getInfoProductSize,
    required TResult Function(UpdateInfoProductsSearchEvent value)
        updateInfoProducts,
  }) {
    return removeSelectFilterCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitSearchEvent value)? init,
    TResult? Function(ProfuctsSearchEvent value)? searchProfucts,
    TResult? Function(ProfuctsInfoSearchEvent value)? searchProfuctsInfo,
    TResult? Function(SelectFilterSearchEvent value)? selectFilter,
    TResult? Function(DeleteFilterSearchEvent value)? deleteFilter,
    TResult? Function(RemoveSelectFilterCategotySearchEvent value)?
        removeSelectFilterCategory,
    TResult? Function(RemoveSelectAllFiltersCategotySearchEvent value)?
        removeSelectAllFilters,
    TResult? Function(DeleteCatalogSearchEvent value)? deleteCatalogFilter,
    TResult? Function(AddFavouriteProductSearchEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductSearchEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductSearchEvent value)? getInfoProduct,
    TResult? Function(ChangeSizeProductSearchEvent value)? changeSizeProduct,
    TResult? Function(GoBackProductInfoCategotySearchEvent value)?
        goBackProductInfo,
    TResult? Function(PaginationProductSearchEvent value)? paginationProduct,
    TResult? Function(AddProductToSoppingCartSearchEvent value)?
        addProductToSoppingCart,
    TResult? Function(CheckButtonTopSearchEvent value)? checkButtonTop,
    TResult? Function(CheckProductToSoppingCartSearchEvent value)?
        checkProductToSoppingCart,
    TResult? Function(GetInfoProductSizeSearchEvent value)? getInfoProductSize,
    TResult? Function(UpdateInfoProductsSearchEvent value)? updateInfoProducts,
  }) {
    return removeSelectFilterCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitSearchEvent value)? init,
    TResult Function(ProfuctsSearchEvent value)? searchProfucts,
    TResult Function(ProfuctsInfoSearchEvent value)? searchProfuctsInfo,
    TResult Function(SelectFilterSearchEvent value)? selectFilter,
    TResult Function(DeleteFilterSearchEvent value)? deleteFilter,
    TResult Function(RemoveSelectFilterCategotySearchEvent value)?
        removeSelectFilterCategory,
    TResult Function(RemoveSelectAllFiltersCategotySearchEvent value)?
        removeSelectAllFilters,
    TResult Function(DeleteCatalogSearchEvent value)? deleteCatalogFilter,
    TResult Function(AddFavouriteProductSearchEvent value)? addFavouriteProduct,
    TResult Function(DeleteFavouriteProductSearchEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductSearchEvent value)? getInfoProduct,
    TResult Function(ChangeSizeProductSearchEvent value)? changeSizeProduct,
    TResult Function(GoBackProductInfoCategotySearchEvent value)?
        goBackProductInfo,
    TResult Function(PaginationProductSearchEvent value)? paginationProduct,
    TResult Function(AddProductToSoppingCartSearchEvent value)?
        addProductToSoppingCart,
    TResult Function(CheckButtonTopSearchEvent value)? checkButtonTop,
    TResult Function(CheckProductToSoppingCartSearchEvent value)?
        checkProductToSoppingCart,
    TResult Function(GetInfoProductSizeSearchEvent value)? getInfoProductSize,
    TResult Function(UpdateInfoProductsSearchEvent value)? updateInfoProducts,
    required TResult orElse(),
  }) {
    if (removeSelectFilterCategory != null) {
      return removeSelectFilterCategory(this);
    }
    return orElse();
  }
}

abstract class RemoveSelectFilterCategotySearchEvent implements SearchEvent {
  const factory RemoveSelectFilterCategotySearchEvent(
      {required final int index}) = _$RemoveSelectFilterCategotySearchEventImpl;

  int get index;

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveSelectFilterCategotySearchEventImplCopyWith<
          _$RemoveSelectFilterCategotySearchEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveSelectAllFiltersCategotySearchEventImplCopyWith<$Res> {
  factory _$$RemoveSelectAllFiltersCategotySearchEventImplCopyWith(
          _$RemoveSelectAllFiltersCategotySearchEventImpl value,
          $Res Function(_$RemoveSelectAllFiltersCategotySearchEventImpl) then) =
      __$$RemoveSelectAllFiltersCategotySearchEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RemoveSelectAllFiltersCategotySearchEventImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res,
        _$RemoveSelectAllFiltersCategotySearchEventImpl>
    implements _$$RemoveSelectAllFiltersCategotySearchEventImplCopyWith<$Res> {
  __$$RemoveSelectAllFiltersCategotySearchEventImplCopyWithImpl(
      _$RemoveSelectAllFiltersCategotySearchEventImpl _value,
      $Res Function(_$RemoveSelectAllFiltersCategotySearchEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RemoveSelectAllFiltersCategotySearchEventImpl
    implements RemoveSelectAllFiltersCategotySearchEvent {
  const _$RemoveSelectAllFiltersCategotySearchEventImpl();

  @override
  String toString() {
    return 'SearchEvent.removeSelectAllFilters()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveSelectAllFiltersCategotySearchEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String query) searchProfucts,
    required TResult Function(String query) searchProfuctsInfo,
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
    required TResult Function(
            int index, ProductDataModel product, String? typeError)
        addFavouriteProduct,
    required TResult Function(int index, String? typeError)
        deleteFavouriteProduct,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate,
            String? typeError)
        getInfoProduct,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function() goBackProductInfo,
    required TResult Function() paginationProduct,
    required TResult Function(
            int code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size)
        addProductToSoppingCart,
    required TResult Function(bool isButtonTop) checkButtonTop,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(String code, bool isShop, String titleScreen)
        getInfoProductSize,
    required TResult Function(String titleScreen) updateInfoProducts,
  }) {
    return removeSelectAllFilters();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String query)? searchProfucts,
    TResult? Function(String query)? searchProfuctsInfo,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult? Function(int index)? removeSelectFilterCategory,
    TResult? Function()? removeSelectAllFilters,
    TResult? Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult? Function(int index, ProductDataModel product, String? typeError)?
        addFavouriteProduct,
    TResult? Function(int index, String? typeError)? deleteFavouriteProduct,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate,
            String? typeError)?
        getInfoProduct,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function()? goBackProductInfo,
    TResult? Function()? paginationProduct,
    TResult? Function(
            int code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size)?
        addProductToSoppingCart,
    TResult? Function(bool isButtonTop)? checkButtonTop,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(String code, bool isShop, String titleScreen)?
        getInfoProductSize,
    TResult? Function(String titleScreen)? updateInfoProducts,
  }) {
    return removeSelectAllFilters?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String query)? searchProfucts,
    TResult Function(String query)? searchProfuctsInfo,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult Function(int index)? removeSelectFilterCategory,
    TResult Function()? removeSelectAllFilters,
    TResult Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult Function(int index, ProductDataModel product, String? typeError)?
        addFavouriteProduct,
    TResult Function(int index, String? typeError)? deleteFavouriteProduct,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate,
            String? typeError)?
        getInfoProduct,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function()? goBackProductInfo,
    TResult Function()? paginationProduct,
    TResult Function(
            int code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size)?
        addProductToSoppingCart,
    TResult Function(bool isButtonTop)? checkButtonTop,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(String code, bool isShop, String titleScreen)?
        getInfoProductSize,
    TResult Function(String titleScreen)? updateInfoProducts,
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
    required TResult Function(InitSearchEvent value) init,
    required TResult Function(ProfuctsSearchEvent value) searchProfucts,
    required TResult Function(ProfuctsInfoSearchEvent value) searchProfuctsInfo,
    required TResult Function(SelectFilterSearchEvent value) selectFilter,
    required TResult Function(DeleteFilterSearchEvent value) deleteFilter,
    required TResult Function(RemoveSelectFilterCategotySearchEvent value)
        removeSelectFilterCategory,
    required TResult Function(RemoveSelectAllFiltersCategotySearchEvent value)
        removeSelectAllFilters,
    required TResult Function(DeleteCatalogSearchEvent value)
        deleteCatalogFilter,
    required TResult Function(AddFavouriteProductSearchEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductSearchEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductSearchEvent value) getInfoProduct,
    required TResult Function(ChangeSizeProductSearchEvent value)
        changeSizeProduct,
    required TResult Function(GoBackProductInfoCategotySearchEvent value)
        goBackProductInfo,
    required TResult Function(PaginationProductSearchEvent value)
        paginationProduct,
    required TResult Function(AddProductToSoppingCartSearchEvent value)
        addProductToSoppingCart,
    required TResult Function(CheckButtonTopSearchEvent value) checkButtonTop,
    required TResult Function(CheckProductToSoppingCartSearchEvent value)
        checkProductToSoppingCart,
    required TResult Function(GetInfoProductSizeSearchEvent value)
        getInfoProductSize,
    required TResult Function(UpdateInfoProductsSearchEvent value)
        updateInfoProducts,
  }) {
    return removeSelectAllFilters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitSearchEvent value)? init,
    TResult? Function(ProfuctsSearchEvent value)? searchProfucts,
    TResult? Function(ProfuctsInfoSearchEvent value)? searchProfuctsInfo,
    TResult? Function(SelectFilterSearchEvent value)? selectFilter,
    TResult? Function(DeleteFilterSearchEvent value)? deleteFilter,
    TResult? Function(RemoveSelectFilterCategotySearchEvent value)?
        removeSelectFilterCategory,
    TResult? Function(RemoveSelectAllFiltersCategotySearchEvent value)?
        removeSelectAllFilters,
    TResult? Function(DeleteCatalogSearchEvent value)? deleteCatalogFilter,
    TResult? Function(AddFavouriteProductSearchEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductSearchEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductSearchEvent value)? getInfoProduct,
    TResult? Function(ChangeSizeProductSearchEvent value)? changeSizeProduct,
    TResult? Function(GoBackProductInfoCategotySearchEvent value)?
        goBackProductInfo,
    TResult? Function(PaginationProductSearchEvent value)? paginationProduct,
    TResult? Function(AddProductToSoppingCartSearchEvent value)?
        addProductToSoppingCart,
    TResult? Function(CheckButtonTopSearchEvent value)? checkButtonTop,
    TResult? Function(CheckProductToSoppingCartSearchEvent value)?
        checkProductToSoppingCart,
    TResult? Function(GetInfoProductSizeSearchEvent value)? getInfoProductSize,
    TResult? Function(UpdateInfoProductsSearchEvent value)? updateInfoProducts,
  }) {
    return removeSelectAllFilters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitSearchEvent value)? init,
    TResult Function(ProfuctsSearchEvent value)? searchProfucts,
    TResult Function(ProfuctsInfoSearchEvent value)? searchProfuctsInfo,
    TResult Function(SelectFilterSearchEvent value)? selectFilter,
    TResult Function(DeleteFilterSearchEvent value)? deleteFilter,
    TResult Function(RemoveSelectFilterCategotySearchEvent value)?
        removeSelectFilterCategory,
    TResult Function(RemoveSelectAllFiltersCategotySearchEvent value)?
        removeSelectAllFilters,
    TResult Function(DeleteCatalogSearchEvent value)? deleteCatalogFilter,
    TResult Function(AddFavouriteProductSearchEvent value)? addFavouriteProduct,
    TResult Function(DeleteFavouriteProductSearchEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductSearchEvent value)? getInfoProduct,
    TResult Function(ChangeSizeProductSearchEvent value)? changeSizeProduct,
    TResult Function(GoBackProductInfoCategotySearchEvent value)?
        goBackProductInfo,
    TResult Function(PaginationProductSearchEvent value)? paginationProduct,
    TResult Function(AddProductToSoppingCartSearchEvent value)?
        addProductToSoppingCart,
    TResult Function(CheckButtonTopSearchEvent value)? checkButtonTop,
    TResult Function(CheckProductToSoppingCartSearchEvent value)?
        checkProductToSoppingCart,
    TResult Function(GetInfoProductSizeSearchEvent value)? getInfoProductSize,
    TResult Function(UpdateInfoProductsSearchEvent value)? updateInfoProducts,
    required TResult orElse(),
  }) {
    if (removeSelectAllFilters != null) {
      return removeSelectAllFilters(this);
    }
    return orElse();
  }
}

abstract class RemoveSelectAllFiltersCategotySearchEvent
    implements SearchEvent {
  const factory RemoveSelectAllFiltersCategotySearchEvent() =
      _$RemoveSelectAllFiltersCategotySearchEventImpl;
}

/// @nodoc
abstract class _$$DeleteCatalogSearchEventImplCopyWith<$Res> {
  factory _$$DeleteCatalogSearchEventImplCopyWith(
          _$DeleteCatalogSearchEventImpl value,
          $Res Function(_$DeleteCatalogSearchEventImpl) then) =
      __$$DeleteCatalogSearchEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int key, int index, FilterItemDataModel item});

  $FilterItemDataModelCopyWith<$Res> get item;
}

/// @nodoc
class __$$DeleteCatalogSearchEventImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$DeleteCatalogSearchEventImpl>
    implements _$$DeleteCatalogSearchEventImplCopyWith<$Res> {
  __$$DeleteCatalogSearchEventImplCopyWithImpl(
      _$DeleteCatalogSearchEventImpl _value,
      $Res Function(_$DeleteCatalogSearchEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? index = null,
    Object? item = null,
  }) {
    return _then(_$DeleteCatalogSearchEventImpl(
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

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FilterItemDataModelCopyWith<$Res> get item {
    return $FilterItemDataModelCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc

class _$DeleteCatalogSearchEventImpl implements DeleteCatalogSearchEvent {
  const _$DeleteCatalogSearchEventImpl(
      {required this.key, required this.index, required this.item});

  @override
  final int key;
  @override
  final int index;
  @override
  final FilterItemDataModel item;

  @override
  String toString() {
    return 'SearchEvent.deleteCatalogFilter(key: $key, index: $index, item: $item)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCatalogSearchEventImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, key, index, item);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCatalogSearchEventImplCopyWith<_$DeleteCatalogSearchEventImpl>
      get copyWith => __$$DeleteCatalogSearchEventImplCopyWithImpl<
          _$DeleteCatalogSearchEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String query) searchProfucts,
    required TResult Function(String query) searchProfuctsInfo,
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
    required TResult Function(
            int index, ProductDataModel product, String? typeError)
        addFavouriteProduct,
    required TResult Function(int index, String? typeError)
        deleteFavouriteProduct,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate,
            String? typeError)
        getInfoProduct,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function() goBackProductInfo,
    required TResult Function() paginationProduct,
    required TResult Function(
            int code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size)
        addProductToSoppingCart,
    required TResult Function(bool isButtonTop) checkButtonTop,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(String code, bool isShop, String titleScreen)
        getInfoProductSize,
    required TResult Function(String titleScreen) updateInfoProducts,
  }) {
    return deleteCatalogFilter(key, index, item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String query)? searchProfucts,
    TResult? Function(String query)? searchProfuctsInfo,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult? Function(int index)? removeSelectFilterCategory,
    TResult? Function()? removeSelectAllFilters,
    TResult? Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult? Function(int index, ProductDataModel product, String? typeError)?
        addFavouriteProduct,
    TResult? Function(int index, String? typeError)? deleteFavouriteProduct,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate,
            String? typeError)?
        getInfoProduct,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function()? goBackProductInfo,
    TResult? Function()? paginationProduct,
    TResult? Function(
            int code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size)?
        addProductToSoppingCart,
    TResult? Function(bool isButtonTop)? checkButtonTop,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(String code, bool isShop, String titleScreen)?
        getInfoProductSize,
    TResult? Function(String titleScreen)? updateInfoProducts,
  }) {
    return deleteCatalogFilter?.call(key, index, item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String query)? searchProfucts,
    TResult Function(String query)? searchProfuctsInfo,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult Function(int index)? removeSelectFilterCategory,
    TResult Function()? removeSelectAllFilters,
    TResult Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult Function(int index, ProductDataModel product, String? typeError)?
        addFavouriteProduct,
    TResult Function(int index, String? typeError)? deleteFavouriteProduct,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate,
            String? typeError)?
        getInfoProduct,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function()? goBackProductInfo,
    TResult Function()? paginationProduct,
    TResult Function(
            int code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size)?
        addProductToSoppingCart,
    TResult Function(bool isButtonTop)? checkButtonTop,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(String code, bool isShop, String titleScreen)?
        getInfoProductSize,
    TResult Function(String titleScreen)? updateInfoProducts,
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
    required TResult Function(InitSearchEvent value) init,
    required TResult Function(ProfuctsSearchEvent value) searchProfucts,
    required TResult Function(ProfuctsInfoSearchEvent value) searchProfuctsInfo,
    required TResult Function(SelectFilterSearchEvent value) selectFilter,
    required TResult Function(DeleteFilterSearchEvent value) deleteFilter,
    required TResult Function(RemoveSelectFilterCategotySearchEvent value)
        removeSelectFilterCategory,
    required TResult Function(RemoveSelectAllFiltersCategotySearchEvent value)
        removeSelectAllFilters,
    required TResult Function(DeleteCatalogSearchEvent value)
        deleteCatalogFilter,
    required TResult Function(AddFavouriteProductSearchEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductSearchEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductSearchEvent value) getInfoProduct,
    required TResult Function(ChangeSizeProductSearchEvent value)
        changeSizeProduct,
    required TResult Function(GoBackProductInfoCategotySearchEvent value)
        goBackProductInfo,
    required TResult Function(PaginationProductSearchEvent value)
        paginationProduct,
    required TResult Function(AddProductToSoppingCartSearchEvent value)
        addProductToSoppingCart,
    required TResult Function(CheckButtonTopSearchEvent value) checkButtonTop,
    required TResult Function(CheckProductToSoppingCartSearchEvent value)
        checkProductToSoppingCart,
    required TResult Function(GetInfoProductSizeSearchEvent value)
        getInfoProductSize,
    required TResult Function(UpdateInfoProductsSearchEvent value)
        updateInfoProducts,
  }) {
    return deleteCatalogFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitSearchEvent value)? init,
    TResult? Function(ProfuctsSearchEvent value)? searchProfucts,
    TResult? Function(ProfuctsInfoSearchEvent value)? searchProfuctsInfo,
    TResult? Function(SelectFilterSearchEvent value)? selectFilter,
    TResult? Function(DeleteFilterSearchEvent value)? deleteFilter,
    TResult? Function(RemoveSelectFilterCategotySearchEvent value)?
        removeSelectFilterCategory,
    TResult? Function(RemoveSelectAllFiltersCategotySearchEvent value)?
        removeSelectAllFilters,
    TResult? Function(DeleteCatalogSearchEvent value)? deleteCatalogFilter,
    TResult? Function(AddFavouriteProductSearchEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductSearchEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductSearchEvent value)? getInfoProduct,
    TResult? Function(ChangeSizeProductSearchEvent value)? changeSizeProduct,
    TResult? Function(GoBackProductInfoCategotySearchEvent value)?
        goBackProductInfo,
    TResult? Function(PaginationProductSearchEvent value)? paginationProduct,
    TResult? Function(AddProductToSoppingCartSearchEvent value)?
        addProductToSoppingCart,
    TResult? Function(CheckButtonTopSearchEvent value)? checkButtonTop,
    TResult? Function(CheckProductToSoppingCartSearchEvent value)?
        checkProductToSoppingCart,
    TResult? Function(GetInfoProductSizeSearchEvent value)? getInfoProductSize,
    TResult? Function(UpdateInfoProductsSearchEvent value)? updateInfoProducts,
  }) {
    return deleteCatalogFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitSearchEvent value)? init,
    TResult Function(ProfuctsSearchEvent value)? searchProfucts,
    TResult Function(ProfuctsInfoSearchEvent value)? searchProfuctsInfo,
    TResult Function(SelectFilterSearchEvent value)? selectFilter,
    TResult Function(DeleteFilterSearchEvent value)? deleteFilter,
    TResult Function(RemoveSelectFilterCategotySearchEvent value)?
        removeSelectFilterCategory,
    TResult Function(RemoveSelectAllFiltersCategotySearchEvent value)?
        removeSelectAllFilters,
    TResult Function(DeleteCatalogSearchEvent value)? deleteCatalogFilter,
    TResult Function(AddFavouriteProductSearchEvent value)? addFavouriteProduct,
    TResult Function(DeleteFavouriteProductSearchEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductSearchEvent value)? getInfoProduct,
    TResult Function(ChangeSizeProductSearchEvent value)? changeSizeProduct,
    TResult Function(GoBackProductInfoCategotySearchEvent value)?
        goBackProductInfo,
    TResult Function(PaginationProductSearchEvent value)? paginationProduct,
    TResult Function(AddProductToSoppingCartSearchEvent value)?
        addProductToSoppingCart,
    TResult Function(CheckButtonTopSearchEvent value)? checkButtonTop,
    TResult Function(CheckProductToSoppingCartSearchEvent value)?
        checkProductToSoppingCart,
    TResult Function(GetInfoProductSizeSearchEvent value)? getInfoProductSize,
    TResult Function(UpdateInfoProductsSearchEvent value)? updateInfoProducts,
    required TResult orElse(),
  }) {
    if (deleteCatalogFilter != null) {
      return deleteCatalogFilter(this);
    }
    return orElse();
  }
}

abstract class DeleteCatalogSearchEvent implements SearchEvent {
  const factory DeleteCatalogSearchEvent(
          {required final int key,
          required final int index,
          required final FilterItemDataModel item}) =
      _$DeleteCatalogSearchEventImpl;

  int get key;
  int get index;
  FilterItemDataModel get item;

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteCatalogSearchEventImplCopyWith<_$DeleteCatalogSearchEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddFavouriteProductSearchEventImplCopyWith<$Res> {
  factory _$$AddFavouriteProductSearchEventImplCopyWith(
          _$AddFavouriteProductSearchEventImpl value,
          $Res Function(_$AddFavouriteProductSearchEventImpl) then) =
      __$$AddFavouriteProductSearchEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index, ProductDataModel product, String? typeError});

  $ProductDataModelCopyWith<$Res> get product;
}

/// @nodoc
class __$$AddFavouriteProductSearchEventImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res,
        _$AddFavouriteProductSearchEventImpl>
    implements _$$AddFavouriteProductSearchEventImplCopyWith<$Res> {
  __$$AddFavouriteProductSearchEventImplCopyWithImpl(
      _$AddFavouriteProductSearchEventImpl _value,
      $Res Function(_$AddFavouriteProductSearchEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? product = null,
    Object? typeError = freezed,
  }) {
    return _then(_$AddFavouriteProductSearchEventImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductDataModel,
      typeError: freezed == typeError
          ? _value.typeError
          : typeError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductDataModelCopyWith<$Res> get product {
    return $ProductDataModelCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc

class _$AddFavouriteProductSearchEventImpl
    implements AddFavouriteProductSearchEvent {
  const _$AddFavouriteProductSearchEventImpl(
      {required this.index, required this.product, this.typeError});

  @override
  final int index;
  @override
  final ProductDataModel product;
  @override
  final String? typeError;

  @override
  String toString() {
    return 'SearchEvent.addFavouriteProduct(index: $index, product: $product, typeError: $typeError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddFavouriteProductSearchEventImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.typeError, typeError) ||
                other.typeError == typeError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, product, typeError);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddFavouriteProductSearchEventImplCopyWith<
          _$AddFavouriteProductSearchEventImpl>
      get copyWith => __$$AddFavouriteProductSearchEventImplCopyWithImpl<
          _$AddFavouriteProductSearchEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String query) searchProfucts,
    required TResult Function(String query) searchProfuctsInfo,
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
    required TResult Function(
            int index, ProductDataModel product, String? typeError)
        addFavouriteProduct,
    required TResult Function(int index, String? typeError)
        deleteFavouriteProduct,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate,
            String? typeError)
        getInfoProduct,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function() goBackProductInfo,
    required TResult Function() paginationProduct,
    required TResult Function(
            int code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size)
        addProductToSoppingCart,
    required TResult Function(bool isButtonTop) checkButtonTop,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(String code, bool isShop, String titleScreen)
        getInfoProductSize,
    required TResult Function(String titleScreen) updateInfoProducts,
  }) {
    return addFavouriteProduct(index, product, typeError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String query)? searchProfucts,
    TResult? Function(String query)? searchProfuctsInfo,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult? Function(int index)? removeSelectFilterCategory,
    TResult? Function()? removeSelectAllFilters,
    TResult? Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult? Function(int index, ProductDataModel product, String? typeError)?
        addFavouriteProduct,
    TResult? Function(int index, String? typeError)? deleteFavouriteProduct,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate,
            String? typeError)?
        getInfoProduct,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function()? goBackProductInfo,
    TResult? Function()? paginationProduct,
    TResult? Function(
            int code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size)?
        addProductToSoppingCart,
    TResult? Function(bool isButtonTop)? checkButtonTop,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(String code, bool isShop, String titleScreen)?
        getInfoProductSize,
    TResult? Function(String titleScreen)? updateInfoProducts,
  }) {
    return addFavouriteProduct?.call(index, product, typeError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String query)? searchProfucts,
    TResult Function(String query)? searchProfuctsInfo,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult Function(int index)? removeSelectFilterCategory,
    TResult Function()? removeSelectAllFilters,
    TResult Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult Function(int index, ProductDataModel product, String? typeError)?
        addFavouriteProduct,
    TResult Function(int index, String? typeError)? deleteFavouriteProduct,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate,
            String? typeError)?
        getInfoProduct,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function()? goBackProductInfo,
    TResult Function()? paginationProduct,
    TResult Function(
            int code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size)?
        addProductToSoppingCart,
    TResult Function(bool isButtonTop)? checkButtonTop,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(String code, bool isShop, String titleScreen)?
        getInfoProductSize,
    TResult Function(String titleScreen)? updateInfoProducts,
    required TResult orElse(),
  }) {
    if (addFavouriteProduct != null) {
      return addFavouriteProduct(index, product, typeError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitSearchEvent value) init,
    required TResult Function(ProfuctsSearchEvent value) searchProfucts,
    required TResult Function(ProfuctsInfoSearchEvent value) searchProfuctsInfo,
    required TResult Function(SelectFilterSearchEvent value) selectFilter,
    required TResult Function(DeleteFilterSearchEvent value) deleteFilter,
    required TResult Function(RemoveSelectFilterCategotySearchEvent value)
        removeSelectFilterCategory,
    required TResult Function(RemoveSelectAllFiltersCategotySearchEvent value)
        removeSelectAllFilters,
    required TResult Function(DeleteCatalogSearchEvent value)
        deleteCatalogFilter,
    required TResult Function(AddFavouriteProductSearchEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductSearchEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductSearchEvent value) getInfoProduct,
    required TResult Function(ChangeSizeProductSearchEvent value)
        changeSizeProduct,
    required TResult Function(GoBackProductInfoCategotySearchEvent value)
        goBackProductInfo,
    required TResult Function(PaginationProductSearchEvent value)
        paginationProduct,
    required TResult Function(AddProductToSoppingCartSearchEvent value)
        addProductToSoppingCart,
    required TResult Function(CheckButtonTopSearchEvent value) checkButtonTop,
    required TResult Function(CheckProductToSoppingCartSearchEvent value)
        checkProductToSoppingCart,
    required TResult Function(GetInfoProductSizeSearchEvent value)
        getInfoProductSize,
    required TResult Function(UpdateInfoProductsSearchEvent value)
        updateInfoProducts,
  }) {
    return addFavouriteProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitSearchEvent value)? init,
    TResult? Function(ProfuctsSearchEvent value)? searchProfucts,
    TResult? Function(ProfuctsInfoSearchEvent value)? searchProfuctsInfo,
    TResult? Function(SelectFilterSearchEvent value)? selectFilter,
    TResult? Function(DeleteFilterSearchEvent value)? deleteFilter,
    TResult? Function(RemoveSelectFilterCategotySearchEvent value)?
        removeSelectFilterCategory,
    TResult? Function(RemoveSelectAllFiltersCategotySearchEvent value)?
        removeSelectAllFilters,
    TResult? Function(DeleteCatalogSearchEvent value)? deleteCatalogFilter,
    TResult? Function(AddFavouriteProductSearchEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductSearchEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductSearchEvent value)? getInfoProduct,
    TResult? Function(ChangeSizeProductSearchEvent value)? changeSizeProduct,
    TResult? Function(GoBackProductInfoCategotySearchEvent value)?
        goBackProductInfo,
    TResult? Function(PaginationProductSearchEvent value)? paginationProduct,
    TResult? Function(AddProductToSoppingCartSearchEvent value)?
        addProductToSoppingCart,
    TResult? Function(CheckButtonTopSearchEvent value)? checkButtonTop,
    TResult? Function(CheckProductToSoppingCartSearchEvent value)?
        checkProductToSoppingCart,
    TResult? Function(GetInfoProductSizeSearchEvent value)? getInfoProductSize,
    TResult? Function(UpdateInfoProductsSearchEvent value)? updateInfoProducts,
  }) {
    return addFavouriteProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitSearchEvent value)? init,
    TResult Function(ProfuctsSearchEvent value)? searchProfucts,
    TResult Function(ProfuctsInfoSearchEvent value)? searchProfuctsInfo,
    TResult Function(SelectFilterSearchEvent value)? selectFilter,
    TResult Function(DeleteFilterSearchEvent value)? deleteFilter,
    TResult Function(RemoveSelectFilterCategotySearchEvent value)?
        removeSelectFilterCategory,
    TResult Function(RemoveSelectAllFiltersCategotySearchEvent value)?
        removeSelectAllFilters,
    TResult Function(DeleteCatalogSearchEvent value)? deleteCatalogFilter,
    TResult Function(AddFavouriteProductSearchEvent value)? addFavouriteProduct,
    TResult Function(DeleteFavouriteProductSearchEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductSearchEvent value)? getInfoProduct,
    TResult Function(ChangeSizeProductSearchEvent value)? changeSizeProduct,
    TResult Function(GoBackProductInfoCategotySearchEvent value)?
        goBackProductInfo,
    TResult Function(PaginationProductSearchEvent value)? paginationProduct,
    TResult Function(AddProductToSoppingCartSearchEvent value)?
        addProductToSoppingCart,
    TResult Function(CheckButtonTopSearchEvent value)? checkButtonTop,
    TResult Function(CheckProductToSoppingCartSearchEvent value)?
        checkProductToSoppingCart,
    TResult Function(GetInfoProductSizeSearchEvent value)? getInfoProductSize,
    TResult Function(UpdateInfoProductsSearchEvent value)? updateInfoProducts,
    required TResult orElse(),
  }) {
    if (addFavouriteProduct != null) {
      return addFavouriteProduct(this);
    }
    return orElse();
  }
}

abstract class AddFavouriteProductSearchEvent implements SearchEvent {
  const factory AddFavouriteProductSearchEvent(
      {required final int index,
      required final ProductDataModel product,
      final String? typeError}) = _$AddFavouriteProductSearchEventImpl;

  int get index;
  ProductDataModel get product;
  String? get typeError;

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddFavouriteProductSearchEventImplCopyWith<
          _$AddFavouriteProductSearchEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteFavouriteProductSearchEventImplCopyWith<$Res> {
  factory _$$DeleteFavouriteProductSearchEventImplCopyWith(
          _$DeleteFavouriteProductSearchEventImpl value,
          $Res Function(_$DeleteFavouriteProductSearchEventImpl) then) =
      __$$DeleteFavouriteProductSearchEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index, String? typeError});
}

/// @nodoc
class __$$DeleteFavouriteProductSearchEventImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res,
        _$DeleteFavouriteProductSearchEventImpl>
    implements _$$DeleteFavouriteProductSearchEventImplCopyWith<$Res> {
  __$$DeleteFavouriteProductSearchEventImplCopyWithImpl(
      _$DeleteFavouriteProductSearchEventImpl _value,
      $Res Function(_$DeleteFavouriteProductSearchEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? typeError = freezed,
  }) {
    return _then(_$DeleteFavouriteProductSearchEventImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      typeError: freezed == typeError
          ? _value.typeError
          : typeError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DeleteFavouriteProductSearchEventImpl
    implements DeleteFavouriteProductSearchEvent {
  const _$DeleteFavouriteProductSearchEventImpl(
      {required this.index, this.typeError});

  @override
  final int index;
  @override
  final String? typeError;

  @override
  String toString() {
    return 'SearchEvent.deleteFavouriteProduct(index: $index, typeError: $typeError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteFavouriteProductSearchEventImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.typeError, typeError) ||
                other.typeError == typeError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, typeError);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteFavouriteProductSearchEventImplCopyWith<
          _$DeleteFavouriteProductSearchEventImpl>
      get copyWith => __$$DeleteFavouriteProductSearchEventImplCopyWithImpl<
          _$DeleteFavouriteProductSearchEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String query) searchProfucts,
    required TResult Function(String query) searchProfuctsInfo,
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
    required TResult Function(
            int index, ProductDataModel product, String? typeError)
        addFavouriteProduct,
    required TResult Function(int index, String? typeError)
        deleteFavouriteProduct,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate,
            String? typeError)
        getInfoProduct,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function() goBackProductInfo,
    required TResult Function() paginationProduct,
    required TResult Function(
            int code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size)
        addProductToSoppingCart,
    required TResult Function(bool isButtonTop) checkButtonTop,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(String code, bool isShop, String titleScreen)
        getInfoProductSize,
    required TResult Function(String titleScreen) updateInfoProducts,
  }) {
    return deleteFavouriteProduct(index, typeError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String query)? searchProfucts,
    TResult? Function(String query)? searchProfuctsInfo,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult? Function(int index)? removeSelectFilterCategory,
    TResult? Function()? removeSelectAllFilters,
    TResult? Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult? Function(int index, ProductDataModel product, String? typeError)?
        addFavouriteProduct,
    TResult? Function(int index, String? typeError)? deleteFavouriteProduct,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate,
            String? typeError)?
        getInfoProduct,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function()? goBackProductInfo,
    TResult? Function()? paginationProduct,
    TResult? Function(
            int code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size)?
        addProductToSoppingCart,
    TResult? Function(bool isButtonTop)? checkButtonTop,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(String code, bool isShop, String titleScreen)?
        getInfoProductSize,
    TResult? Function(String titleScreen)? updateInfoProducts,
  }) {
    return deleteFavouriteProduct?.call(index, typeError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String query)? searchProfucts,
    TResult Function(String query)? searchProfuctsInfo,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult Function(int index)? removeSelectFilterCategory,
    TResult Function()? removeSelectAllFilters,
    TResult Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult Function(int index, ProductDataModel product, String? typeError)?
        addFavouriteProduct,
    TResult Function(int index, String? typeError)? deleteFavouriteProduct,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate,
            String? typeError)?
        getInfoProduct,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function()? goBackProductInfo,
    TResult Function()? paginationProduct,
    TResult Function(
            int code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size)?
        addProductToSoppingCart,
    TResult Function(bool isButtonTop)? checkButtonTop,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(String code, bool isShop, String titleScreen)?
        getInfoProductSize,
    TResult Function(String titleScreen)? updateInfoProducts,
    required TResult orElse(),
  }) {
    if (deleteFavouriteProduct != null) {
      return deleteFavouriteProduct(index, typeError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitSearchEvent value) init,
    required TResult Function(ProfuctsSearchEvent value) searchProfucts,
    required TResult Function(ProfuctsInfoSearchEvent value) searchProfuctsInfo,
    required TResult Function(SelectFilterSearchEvent value) selectFilter,
    required TResult Function(DeleteFilterSearchEvent value) deleteFilter,
    required TResult Function(RemoveSelectFilterCategotySearchEvent value)
        removeSelectFilterCategory,
    required TResult Function(RemoveSelectAllFiltersCategotySearchEvent value)
        removeSelectAllFilters,
    required TResult Function(DeleteCatalogSearchEvent value)
        deleteCatalogFilter,
    required TResult Function(AddFavouriteProductSearchEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductSearchEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductSearchEvent value) getInfoProduct,
    required TResult Function(ChangeSizeProductSearchEvent value)
        changeSizeProduct,
    required TResult Function(GoBackProductInfoCategotySearchEvent value)
        goBackProductInfo,
    required TResult Function(PaginationProductSearchEvent value)
        paginationProduct,
    required TResult Function(AddProductToSoppingCartSearchEvent value)
        addProductToSoppingCart,
    required TResult Function(CheckButtonTopSearchEvent value) checkButtonTop,
    required TResult Function(CheckProductToSoppingCartSearchEvent value)
        checkProductToSoppingCart,
    required TResult Function(GetInfoProductSizeSearchEvent value)
        getInfoProductSize,
    required TResult Function(UpdateInfoProductsSearchEvent value)
        updateInfoProducts,
  }) {
    return deleteFavouriteProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitSearchEvent value)? init,
    TResult? Function(ProfuctsSearchEvent value)? searchProfucts,
    TResult? Function(ProfuctsInfoSearchEvent value)? searchProfuctsInfo,
    TResult? Function(SelectFilterSearchEvent value)? selectFilter,
    TResult? Function(DeleteFilterSearchEvent value)? deleteFilter,
    TResult? Function(RemoveSelectFilterCategotySearchEvent value)?
        removeSelectFilterCategory,
    TResult? Function(RemoveSelectAllFiltersCategotySearchEvent value)?
        removeSelectAllFilters,
    TResult? Function(DeleteCatalogSearchEvent value)? deleteCatalogFilter,
    TResult? Function(AddFavouriteProductSearchEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductSearchEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductSearchEvent value)? getInfoProduct,
    TResult? Function(ChangeSizeProductSearchEvent value)? changeSizeProduct,
    TResult? Function(GoBackProductInfoCategotySearchEvent value)?
        goBackProductInfo,
    TResult? Function(PaginationProductSearchEvent value)? paginationProduct,
    TResult? Function(AddProductToSoppingCartSearchEvent value)?
        addProductToSoppingCart,
    TResult? Function(CheckButtonTopSearchEvent value)? checkButtonTop,
    TResult? Function(CheckProductToSoppingCartSearchEvent value)?
        checkProductToSoppingCart,
    TResult? Function(GetInfoProductSizeSearchEvent value)? getInfoProductSize,
    TResult? Function(UpdateInfoProductsSearchEvent value)? updateInfoProducts,
  }) {
    return deleteFavouriteProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitSearchEvent value)? init,
    TResult Function(ProfuctsSearchEvent value)? searchProfucts,
    TResult Function(ProfuctsInfoSearchEvent value)? searchProfuctsInfo,
    TResult Function(SelectFilterSearchEvent value)? selectFilter,
    TResult Function(DeleteFilterSearchEvent value)? deleteFilter,
    TResult Function(RemoveSelectFilterCategotySearchEvent value)?
        removeSelectFilterCategory,
    TResult Function(RemoveSelectAllFiltersCategotySearchEvent value)?
        removeSelectAllFilters,
    TResult Function(DeleteCatalogSearchEvent value)? deleteCatalogFilter,
    TResult Function(AddFavouriteProductSearchEvent value)? addFavouriteProduct,
    TResult Function(DeleteFavouriteProductSearchEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductSearchEvent value)? getInfoProduct,
    TResult Function(ChangeSizeProductSearchEvent value)? changeSizeProduct,
    TResult Function(GoBackProductInfoCategotySearchEvent value)?
        goBackProductInfo,
    TResult Function(PaginationProductSearchEvent value)? paginationProduct,
    TResult Function(AddProductToSoppingCartSearchEvent value)?
        addProductToSoppingCart,
    TResult Function(CheckButtonTopSearchEvent value)? checkButtonTop,
    TResult Function(CheckProductToSoppingCartSearchEvent value)?
        checkProductToSoppingCart,
    TResult Function(GetInfoProductSizeSearchEvent value)? getInfoProductSize,
    TResult Function(UpdateInfoProductsSearchEvent value)? updateInfoProducts,
    required TResult orElse(),
  }) {
    if (deleteFavouriteProduct != null) {
      return deleteFavouriteProduct(this);
    }
    return orElse();
  }
}

abstract class DeleteFavouriteProductSearchEvent implements SearchEvent {
  const factory DeleteFavouriteProductSearchEvent(
      {required final int index,
      final String? typeError}) = _$DeleteFavouriteProductSearchEventImpl;

  int get index;
  String? get typeError;

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteFavouriteProductSearchEventImplCopyWith<
          _$DeleteFavouriteProductSearchEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetInfoProductSearchEventImplCopyWith<$Res> {
  factory _$$GetInfoProductSearchEventImplCopyWith(
          _$GetInfoProductSearchEventImpl value,
          $Res Function(_$GetInfoProductSearchEventImpl) then) =
      __$$GetInfoProductSearchEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String code,
      String titleScreen,
      String typeAddProductToShoppingCart,
      String identifierAddProductToShoppingCart,
      SkuProductDataModel? size,
      bool? isUpdate,
      String? typeError});

  $SkuProductDataModelCopyWith<$Res>? get size;
}

/// @nodoc
class __$$GetInfoProductSearchEventImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$GetInfoProductSearchEventImpl>
    implements _$$GetInfoProductSearchEventImplCopyWith<$Res> {
  __$$GetInfoProductSearchEventImplCopyWithImpl(
      _$GetInfoProductSearchEventImpl _value,
      $Res Function(_$GetInfoProductSearchEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? titleScreen = null,
    Object? typeAddProductToShoppingCart = null,
    Object? identifierAddProductToShoppingCart = null,
    Object? size = freezed,
    Object? isUpdate = freezed,
    Object? typeError = freezed,
  }) {
    return _then(_$GetInfoProductSearchEventImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      titleScreen: null == titleScreen
          ? _value.titleScreen
          : titleScreen // ignore: cast_nullable_to_non_nullable
              as String,
      typeAddProductToShoppingCart: null == typeAddProductToShoppingCart
          ? _value.typeAddProductToShoppingCart
          : typeAddProductToShoppingCart // ignore: cast_nullable_to_non_nullable
              as String,
      identifierAddProductToShoppingCart: null ==
              identifierAddProductToShoppingCart
          ? _value.identifierAddProductToShoppingCart
          : identifierAddProductToShoppingCart // ignore: cast_nullable_to_non_nullable
              as String,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as SkuProductDataModel?,
      isUpdate: freezed == isUpdate
          ? _value.isUpdate
          : isUpdate // ignore: cast_nullable_to_non_nullable
              as bool?,
      typeError: freezed == typeError
          ? _value.typeError
          : typeError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SkuProductDataModelCopyWith<$Res>? get size {
    if (_value.size == null) {
      return null;
    }

    return $SkuProductDataModelCopyWith<$Res>(_value.size!, (value) {
      return _then(_value.copyWith(size: value));
    });
  }
}

/// @nodoc

class _$GetInfoProductSearchEventImpl implements GetInfoProductSearchEvent {
  const _$GetInfoProductSearchEventImpl(
      {required this.code,
      required this.titleScreen,
      required this.typeAddProductToShoppingCart,
      required this.identifierAddProductToShoppingCart,
      this.size,
      this.isUpdate,
      this.typeError});

  @override
  final String code;
  @override
  final String titleScreen;
  @override
  final String typeAddProductToShoppingCart;
  @override
  final String identifierAddProductToShoppingCart;
  @override
  final SkuProductDataModel? size;
  @override
  final bool? isUpdate;
  @override
  final String? typeError;

  @override
  String toString() {
    return 'SearchEvent.getInfoProduct(code: $code, titleScreen: $titleScreen, typeAddProductToShoppingCart: $typeAddProductToShoppingCart, identifierAddProductToShoppingCart: $identifierAddProductToShoppingCart, size: $size, isUpdate: $isUpdate, typeError: $typeError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetInfoProductSearchEventImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.titleScreen, titleScreen) ||
                other.titleScreen == titleScreen) &&
            (identical(other.typeAddProductToShoppingCart,
                    typeAddProductToShoppingCart) ||
                other.typeAddProductToShoppingCart ==
                    typeAddProductToShoppingCart) &&
            (identical(other.identifierAddProductToShoppingCart,
                    identifierAddProductToShoppingCart) ||
                other.identifierAddProductToShoppingCart ==
                    identifierAddProductToShoppingCart) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.isUpdate, isUpdate) ||
                other.isUpdate == isUpdate) &&
            (identical(other.typeError, typeError) ||
                other.typeError == typeError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      code,
      titleScreen,
      typeAddProductToShoppingCart,
      identifierAddProductToShoppingCart,
      size,
      isUpdate,
      typeError);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetInfoProductSearchEventImplCopyWith<_$GetInfoProductSearchEventImpl>
      get copyWith => __$$GetInfoProductSearchEventImplCopyWithImpl<
          _$GetInfoProductSearchEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String query) searchProfucts,
    required TResult Function(String query) searchProfuctsInfo,
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
    required TResult Function(
            int index, ProductDataModel product, String? typeError)
        addFavouriteProduct,
    required TResult Function(int index, String? typeError)
        deleteFavouriteProduct,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate,
            String? typeError)
        getInfoProduct,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function() goBackProductInfo,
    required TResult Function() paginationProduct,
    required TResult Function(
            int code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size)
        addProductToSoppingCart,
    required TResult Function(bool isButtonTop) checkButtonTop,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(String code, bool isShop, String titleScreen)
        getInfoProductSize,
    required TResult Function(String titleScreen) updateInfoProducts,
  }) {
    return getInfoProduct(code, titleScreen, typeAddProductToShoppingCart,
        identifierAddProductToShoppingCart, size, isUpdate, typeError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String query)? searchProfucts,
    TResult? Function(String query)? searchProfuctsInfo,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult? Function(int index)? removeSelectFilterCategory,
    TResult? Function()? removeSelectAllFilters,
    TResult? Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult? Function(int index, ProductDataModel product, String? typeError)?
        addFavouriteProduct,
    TResult? Function(int index, String? typeError)? deleteFavouriteProduct,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate,
            String? typeError)?
        getInfoProduct,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function()? goBackProductInfo,
    TResult? Function()? paginationProduct,
    TResult? Function(
            int code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size)?
        addProductToSoppingCart,
    TResult? Function(bool isButtonTop)? checkButtonTop,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(String code, bool isShop, String titleScreen)?
        getInfoProductSize,
    TResult? Function(String titleScreen)? updateInfoProducts,
  }) {
    return getInfoProduct?.call(code, titleScreen, typeAddProductToShoppingCart,
        identifierAddProductToShoppingCart, size, isUpdate, typeError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String query)? searchProfucts,
    TResult Function(String query)? searchProfuctsInfo,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult Function(int index)? removeSelectFilterCategory,
    TResult Function()? removeSelectAllFilters,
    TResult Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult Function(int index, ProductDataModel product, String? typeError)?
        addFavouriteProduct,
    TResult Function(int index, String? typeError)? deleteFavouriteProduct,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate,
            String? typeError)?
        getInfoProduct,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function()? goBackProductInfo,
    TResult Function()? paginationProduct,
    TResult Function(
            int code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size)?
        addProductToSoppingCart,
    TResult Function(bool isButtonTop)? checkButtonTop,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(String code, bool isShop, String titleScreen)?
        getInfoProductSize,
    TResult Function(String titleScreen)? updateInfoProducts,
    required TResult orElse(),
  }) {
    if (getInfoProduct != null) {
      return getInfoProduct(code, titleScreen, typeAddProductToShoppingCart,
          identifierAddProductToShoppingCart, size, isUpdate, typeError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitSearchEvent value) init,
    required TResult Function(ProfuctsSearchEvent value) searchProfucts,
    required TResult Function(ProfuctsInfoSearchEvent value) searchProfuctsInfo,
    required TResult Function(SelectFilterSearchEvent value) selectFilter,
    required TResult Function(DeleteFilterSearchEvent value) deleteFilter,
    required TResult Function(RemoveSelectFilterCategotySearchEvent value)
        removeSelectFilterCategory,
    required TResult Function(RemoveSelectAllFiltersCategotySearchEvent value)
        removeSelectAllFilters,
    required TResult Function(DeleteCatalogSearchEvent value)
        deleteCatalogFilter,
    required TResult Function(AddFavouriteProductSearchEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductSearchEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductSearchEvent value) getInfoProduct,
    required TResult Function(ChangeSizeProductSearchEvent value)
        changeSizeProduct,
    required TResult Function(GoBackProductInfoCategotySearchEvent value)
        goBackProductInfo,
    required TResult Function(PaginationProductSearchEvent value)
        paginationProduct,
    required TResult Function(AddProductToSoppingCartSearchEvent value)
        addProductToSoppingCart,
    required TResult Function(CheckButtonTopSearchEvent value) checkButtonTop,
    required TResult Function(CheckProductToSoppingCartSearchEvent value)
        checkProductToSoppingCart,
    required TResult Function(GetInfoProductSizeSearchEvent value)
        getInfoProductSize,
    required TResult Function(UpdateInfoProductsSearchEvent value)
        updateInfoProducts,
  }) {
    return getInfoProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitSearchEvent value)? init,
    TResult? Function(ProfuctsSearchEvent value)? searchProfucts,
    TResult? Function(ProfuctsInfoSearchEvent value)? searchProfuctsInfo,
    TResult? Function(SelectFilterSearchEvent value)? selectFilter,
    TResult? Function(DeleteFilterSearchEvent value)? deleteFilter,
    TResult? Function(RemoveSelectFilterCategotySearchEvent value)?
        removeSelectFilterCategory,
    TResult? Function(RemoveSelectAllFiltersCategotySearchEvent value)?
        removeSelectAllFilters,
    TResult? Function(DeleteCatalogSearchEvent value)? deleteCatalogFilter,
    TResult? Function(AddFavouriteProductSearchEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductSearchEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductSearchEvent value)? getInfoProduct,
    TResult? Function(ChangeSizeProductSearchEvent value)? changeSizeProduct,
    TResult? Function(GoBackProductInfoCategotySearchEvent value)?
        goBackProductInfo,
    TResult? Function(PaginationProductSearchEvent value)? paginationProduct,
    TResult? Function(AddProductToSoppingCartSearchEvent value)?
        addProductToSoppingCart,
    TResult? Function(CheckButtonTopSearchEvent value)? checkButtonTop,
    TResult? Function(CheckProductToSoppingCartSearchEvent value)?
        checkProductToSoppingCart,
    TResult? Function(GetInfoProductSizeSearchEvent value)? getInfoProductSize,
    TResult? Function(UpdateInfoProductsSearchEvent value)? updateInfoProducts,
  }) {
    return getInfoProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitSearchEvent value)? init,
    TResult Function(ProfuctsSearchEvent value)? searchProfucts,
    TResult Function(ProfuctsInfoSearchEvent value)? searchProfuctsInfo,
    TResult Function(SelectFilterSearchEvent value)? selectFilter,
    TResult Function(DeleteFilterSearchEvent value)? deleteFilter,
    TResult Function(RemoveSelectFilterCategotySearchEvent value)?
        removeSelectFilterCategory,
    TResult Function(RemoveSelectAllFiltersCategotySearchEvent value)?
        removeSelectAllFilters,
    TResult Function(DeleteCatalogSearchEvent value)? deleteCatalogFilter,
    TResult Function(AddFavouriteProductSearchEvent value)? addFavouriteProduct,
    TResult Function(DeleteFavouriteProductSearchEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductSearchEvent value)? getInfoProduct,
    TResult Function(ChangeSizeProductSearchEvent value)? changeSizeProduct,
    TResult Function(GoBackProductInfoCategotySearchEvent value)?
        goBackProductInfo,
    TResult Function(PaginationProductSearchEvent value)? paginationProduct,
    TResult Function(AddProductToSoppingCartSearchEvent value)?
        addProductToSoppingCart,
    TResult Function(CheckButtonTopSearchEvent value)? checkButtonTop,
    TResult Function(CheckProductToSoppingCartSearchEvent value)?
        checkProductToSoppingCart,
    TResult Function(GetInfoProductSizeSearchEvent value)? getInfoProductSize,
    TResult Function(UpdateInfoProductsSearchEvent value)? updateInfoProducts,
    required TResult orElse(),
  }) {
    if (getInfoProduct != null) {
      return getInfoProduct(this);
    }
    return orElse();
  }
}

abstract class GetInfoProductSearchEvent implements SearchEvent {
  const factory GetInfoProductSearchEvent(
      {required final String code,
      required final String titleScreen,
      required final String typeAddProductToShoppingCart,
      required final String identifierAddProductToShoppingCart,
      final SkuProductDataModel? size,
      final bool? isUpdate,
      final String? typeError}) = _$GetInfoProductSearchEventImpl;

  String get code;
  String get titleScreen;
  String get typeAddProductToShoppingCart;
  String get identifierAddProductToShoppingCart;
  SkuProductDataModel? get size;
  bool? get isUpdate;
  String? get typeError;

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetInfoProductSearchEventImplCopyWith<_$GetInfoProductSearchEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeSizeProductSearchEventImplCopyWith<$Res> {
  factory _$$ChangeSizeProductSearchEventImplCopyWith(
          _$ChangeSizeProductSearchEventImpl value,
          $Res Function(_$ChangeSizeProductSearchEventImpl) then) =
      __$$ChangeSizeProductSearchEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SkuProductDataModel selectSizeProduct});

  $SkuProductDataModelCopyWith<$Res> get selectSizeProduct;
}

/// @nodoc
class __$$ChangeSizeProductSearchEventImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$ChangeSizeProductSearchEventImpl>
    implements _$$ChangeSizeProductSearchEventImplCopyWith<$Res> {
  __$$ChangeSizeProductSearchEventImplCopyWithImpl(
      _$ChangeSizeProductSearchEventImpl _value,
      $Res Function(_$ChangeSizeProductSearchEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectSizeProduct = null,
  }) {
    return _then(_$ChangeSizeProductSearchEventImpl(
      selectSizeProduct: null == selectSizeProduct
          ? _value.selectSizeProduct
          : selectSizeProduct // ignore: cast_nullable_to_non_nullable
              as SkuProductDataModel,
    ));
  }

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SkuProductDataModelCopyWith<$Res> get selectSizeProduct {
    return $SkuProductDataModelCopyWith<$Res>(_value.selectSizeProduct,
        (value) {
      return _then(_value.copyWith(selectSizeProduct: value));
    });
  }
}

/// @nodoc

class _$ChangeSizeProductSearchEventImpl
    implements ChangeSizeProductSearchEvent {
  const _$ChangeSizeProductSearchEventImpl({required this.selectSizeProduct});

  @override
  final SkuProductDataModel selectSizeProduct;

  @override
  String toString() {
    return 'SearchEvent.changeSizeProduct(selectSizeProduct: $selectSizeProduct)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeSizeProductSearchEventImpl &&
            (identical(other.selectSizeProduct, selectSizeProduct) ||
                other.selectSizeProduct == selectSizeProduct));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectSizeProduct);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeSizeProductSearchEventImplCopyWith<
          _$ChangeSizeProductSearchEventImpl>
      get copyWith => __$$ChangeSizeProductSearchEventImplCopyWithImpl<
          _$ChangeSizeProductSearchEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String query) searchProfucts,
    required TResult Function(String query) searchProfuctsInfo,
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
    required TResult Function(
            int index, ProductDataModel product, String? typeError)
        addFavouriteProduct,
    required TResult Function(int index, String? typeError)
        deleteFavouriteProduct,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate,
            String? typeError)
        getInfoProduct,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function() goBackProductInfo,
    required TResult Function() paginationProduct,
    required TResult Function(
            int code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size)
        addProductToSoppingCart,
    required TResult Function(bool isButtonTop) checkButtonTop,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(String code, bool isShop, String titleScreen)
        getInfoProductSize,
    required TResult Function(String titleScreen) updateInfoProducts,
  }) {
    return changeSizeProduct(selectSizeProduct);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String query)? searchProfucts,
    TResult? Function(String query)? searchProfuctsInfo,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult? Function(int index)? removeSelectFilterCategory,
    TResult? Function()? removeSelectAllFilters,
    TResult? Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult? Function(int index, ProductDataModel product, String? typeError)?
        addFavouriteProduct,
    TResult? Function(int index, String? typeError)? deleteFavouriteProduct,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate,
            String? typeError)?
        getInfoProduct,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function()? goBackProductInfo,
    TResult? Function()? paginationProduct,
    TResult? Function(
            int code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size)?
        addProductToSoppingCart,
    TResult? Function(bool isButtonTop)? checkButtonTop,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(String code, bool isShop, String titleScreen)?
        getInfoProductSize,
    TResult? Function(String titleScreen)? updateInfoProducts,
  }) {
    return changeSizeProduct?.call(selectSizeProduct);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String query)? searchProfucts,
    TResult Function(String query)? searchProfuctsInfo,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult Function(int index)? removeSelectFilterCategory,
    TResult Function()? removeSelectAllFilters,
    TResult Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult Function(int index, ProductDataModel product, String? typeError)?
        addFavouriteProduct,
    TResult Function(int index, String? typeError)? deleteFavouriteProduct,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate,
            String? typeError)?
        getInfoProduct,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function()? goBackProductInfo,
    TResult Function()? paginationProduct,
    TResult Function(
            int code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size)?
        addProductToSoppingCart,
    TResult Function(bool isButtonTop)? checkButtonTop,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(String code, bool isShop, String titleScreen)?
        getInfoProductSize,
    TResult Function(String titleScreen)? updateInfoProducts,
    required TResult orElse(),
  }) {
    if (changeSizeProduct != null) {
      return changeSizeProduct(selectSizeProduct);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitSearchEvent value) init,
    required TResult Function(ProfuctsSearchEvent value) searchProfucts,
    required TResult Function(ProfuctsInfoSearchEvent value) searchProfuctsInfo,
    required TResult Function(SelectFilterSearchEvent value) selectFilter,
    required TResult Function(DeleteFilterSearchEvent value) deleteFilter,
    required TResult Function(RemoveSelectFilterCategotySearchEvent value)
        removeSelectFilterCategory,
    required TResult Function(RemoveSelectAllFiltersCategotySearchEvent value)
        removeSelectAllFilters,
    required TResult Function(DeleteCatalogSearchEvent value)
        deleteCatalogFilter,
    required TResult Function(AddFavouriteProductSearchEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductSearchEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductSearchEvent value) getInfoProduct,
    required TResult Function(ChangeSizeProductSearchEvent value)
        changeSizeProduct,
    required TResult Function(GoBackProductInfoCategotySearchEvent value)
        goBackProductInfo,
    required TResult Function(PaginationProductSearchEvent value)
        paginationProduct,
    required TResult Function(AddProductToSoppingCartSearchEvent value)
        addProductToSoppingCart,
    required TResult Function(CheckButtonTopSearchEvent value) checkButtonTop,
    required TResult Function(CheckProductToSoppingCartSearchEvent value)
        checkProductToSoppingCart,
    required TResult Function(GetInfoProductSizeSearchEvent value)
        getInfoProductSize,
    required TResult Function(UpdateInfoProductsSearchEvent value)
        updateInfoProducts,
  }) {
    return changeSizeProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitSearchEvent value)? init,
    TResult? Function(ProfuctsSearchEvent value)? searchProfucts,
    TResult? Function(ProfuctsInfoSearchEvent value)? searchProfuctsInfo,
    TResult? Function(SelectFilterSearchEvent value)? selectFilter,
    TResult? Function(DeleteFilterSearchEvent value)? deleteFilter,
    TResult? Function(RemoveSelectFilterCategotySearchEvent value)?
        removeSelectFilterCategory,
    TResult? Function(RemoveSelectAllFiltersCategotySearchEvent value)?
        removeSelectAllFilters,
    TResult? Function(DeleteCatalogSearchEvent value)? deleteCatalogFilter,
    TResult? Function(AddFavouriteProductSearchEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductSearchEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductSearchEvent value)? getInfoProduct,
    TResult? Function(ChangeSizeProductSearchEvent value)? changeSizeProduct,
    TResult? Function(GoBackProductInfoCategotySearchEvent value)?
        goBackProductInfo,
    TResult? Function(PaginationProductSearchEvent value)? paginationProduct,
    TResult? Function(AddProductToSoppingCartSearchEvent value)?
        addProductToSoppingCart,
    TResult? Function(CheckButtonTopSearchEvent value)? checkButtonTop,
    TResult? Function(CheckProductToSoppingCartSearchEvent value)?
        checkProductToSoppingCart,
    TResult? Function(GetInfoProductSizeSearchEvent value)? getInfoProductSize,
    TResult? Function(UpdateInfoProductsSearchEvent value)? updateInfoProducts,
  }) {
    return changeSizeProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitSearchEvent value)? init,
    TResult Function(ProfuctsSearchEvent value)? searchProfucts,
    TResult Function(ProfuctsInfoSearchEvent value)? searchProfuctsInfo,
    TResult Function(SelectFilterSearchEvent value)? selectFilter,
    TResult Function(DeleteFilterSearchEvent value)? deleteFilter,
    TResult Function(RemoveSelectFilterCategotySearchEvent value)?
        removeSelectFilterCategory,
    TResult Function(RemoveSelectAllFiltersCategotySearchEvent value)?
        removeSelectAllFilters,
    TResult Function(DeleteCatalogSearchEvent value)? deleteCatalogFilter,
    TResult Function(AddFavouriteProductSearchEvent value)? addFavouriteProduct,
    TResult Function(DeleteFavouriteProductSearchEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductSearchEvent value)? getInfoProduct,
    TResult Function(ChangeSizeProductSearchEvent value)? changeSizeProduct,
    TResult Function(GoBackProductInfoCategotySearchEvent value)?
        goBackProductInfo,
    TResult Function(PaginationProductSearchEvent value)? paginationProduct,
    TResult Function(AddProductToSoppingCartSearchEvent value)?
        addProductToSoppingCart,
    TResult Function(CheckButtonTopSearchEvent value)? checkButtonTop,
    TResult Function(CheckProductToSoppingCartSearchEvent value)?
        checkProductToSoppingCart,
    TResult Function(GetInfoProductSizeSearchEvent value)? getInfoProductSize,
    TResult Function(UpdateInfoProductsSearchEvent value)? updateInfoProducts,
    required TResult orElse(),
  }) {
    if (changeSizeProduct != null) {
      return changeSizeProduct(this);
    }
    return orElse();
  }
}

abstract class ChangeSizeProductSearchEvent implements SearchEvent {
  const factory ChangeSizeProductSearchEvent(
          {required final SkuProductDataModel selectSizeProduct}) =
      _$ChangeSizeProductSearchEventImpl;

  SkuProductDataModel get selectSizeProduct;

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeSizeProductSearchEventImplCopyWith<
          _$ChangeSizeProductSearchEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GoBackProductInfoCategotySearchEventImplCopyWith<$Res> {
  factory _$$GoBackProductInfoCategotySearchEventImplCopyWith(
          _$GoBackProductInfoCategotySearchEventImpl value,
          $Res Function(_$GoBackProductInfoCategotySearchEventImpl) then) =
      __$$GoBackProductInfoCategotySearchEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GoBackProductInfoCategotySearchEventImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res,
        _$GoBackProductInfoCategotySearchEventImpl>
    implements _$$GoBackProductInfoCategotySearchEventImplCopyWith<$Res> {
  __$$GoBackProductInfoCategotySearchEventImplCopyWithImpl(
      _$GoBackProductInfoCategotySearchEventImpl _value,
      $Res Function(_$GoBackProductInfoCategotySearchEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GoBackProductInfoCategotySearchEventImpl
    implements GoBackProductInfoCategotySearchEvent {
  const _$GoBackProductInfoCategotySearchEventImpl();

  @override
  String toString() {
    return 'SearchEvent.goBackProductInfo()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoBackProductInfoCategotySearchEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String query) searchProfucts,
    required TResult Function(String query) searchProfuctsInfo,
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
    required TResult Function(
            int index, ProductDataModel product, String? typeError)
        addFavouriteProduct,
    required TResult Function(int index, String? typeError)
        deleteFavouriteProduct,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate,
            String? typeError)
        getInfoProduct,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function() goBackProductInfo,
    required TResult Function() paginationProduct,
    required TResult Function(
            int code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size)
        addProductToSoppingCart,
    required TResult Function(bool isButtonTop) checkButtonTop,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(String code, bool isShop, String titleScreen)
        getInfoProductSize,
    required TResult Function(String titleScreen) updateInfoProducts,
  }) {
    return goBackProductInfo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String query)? searchProfucts,
    TResult? Function(String query)? searchProfuctsInfo,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult? Function(int index)? removeSelectFilterCategory,
    TResult? Function()? removeSelectAllFilters,
    TResult? Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult? Function(int index, ProductDataModel product, String? typeError)?
        addFavouriteProduct,
    TResult? Function(int index, String? typeError)? deleteFavouriteProduct,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate,
            String? typeError)?
        getInfoProduct,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function()? goBackProductInfo,
    TResult? Function()? paginationProduct,
    TResult? Function(
            int code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size)?
        addProductToSoppingCart,
    TResult? Function(bool isButtonTop)? checkButtonTop,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(String code, bool isShop, String titleScreen)?
        getInfoProductSize,
    TResult? Function(String titleScreen)? updateInfoProducts,
  }) {
    return goBackProductInfo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String query)? searchProfucts,
    TResult Function(String query)? searchProfuctsInfo,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult Function(int index)? removeSelectFilterCategory,
    TResult Function()? removeSelectAllFilters,
    TResult Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult Function(int index, ProductDataModel product, String? typeError)?
        addFavouriteProduct,
    TResult Function(int index, String? typeError)? deleteFavouriteProduct,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate,
            String? typeError)?
        getInfoProduct,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function()? goBackProductInfo,
    TResult Function()? paginationProduct,
    TResult Function(
            int code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size)?
        addProductToSoppingCart,
    TResult Function(bool isButtonTop)? checkButtonTop,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(String code, bool isShop, String titleScreen)?
        getInfoProductSize,
    TResult Function(String titleScreen)? updateInfoProducts,
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
    required TResult Function(InitSearchEvent value) init,
    required TResult Function(ProfuctsSearchEvent value) searchProfucts,
    required TResult Function(ProfuctsInfoSearchEvent value) searchProfuctsInfo,
    required TResult Function(SelectFilterSearchEvent value) selectFilter,
    required TResult Function(DeleteFilterSearchEvent value) deleteFilter,
    required TResult Function(RemoveSelectFilterCategotySearchEvent value)
        removeSelectFilterCategory,
    required TResult Function(RemoveSelectAllFiltersCategotySearchEvent value)
        removeSelectAllFilters,
    required TResult Function(DeleteCatalogSearchEvent value)
        deleteCatalogFilter,
    required TResult Function(AddFavouriteProductSearchEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductSearchEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductSearchEvent value) getInfoProduct,
    required TResult Function(ChangeSizeProductSearchEvent value)
        changeSizeProduct,
    required TResult Function(GoBackProductInfoCategotySearchEvent value)
        goBackProductInfo,
    required TResult Function(PaginationProductSearchEvent value)
        paginationProduct,
    required TResult Function(AddProductToSoppingCartSearchEvent value)
        addProductToSoppingCart,
    required TResult Function(CheckButtonTopSearchEvent value) checkButtonTop,
    required TResult Function(CheckProductToSoppingCartSearchEvent value)
        checkProductToSoppingCart,
    required TResult Function(GetInfoProductSizeSearchEvent value)
        getInfoProductSize,
    required TResult Function(UpdateInfoProductsSearchEvent value)
        updateInfoProducts,
  }) {
    return goBackProductInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitSearchEvent value)? init,
    TResult? Function(ProfuctsSearchEvent value)? searchProfucts,
    TResult? Function(ProfuctsInfoSearchEvent value)? searchProfuctsInfo,
    TResult? Function(SelectFilterSearchEvent value)? selectFilter,
    TResult? Function(DeleteFilterSearchEvent value)? deleteFilter,
    TResult? Function(RemoveSelectFilterCategotySearchEvent value)?
        removeSelectFilterCategory,
    TResult? Function(RemoveSelectAllFiltersCategotySearchEvent value)?
        removeSelectAllFilters,
    TResult? Function(DeleteCatalogSearchEvent value)? deleteCatalogFilter,
    TResult? Function(AddFavouriteProductSearchEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductSearchEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductSearchEvent value)? getInfoProduct,
    TResult? Function(ChangeSizeProductSearchEvent value)? changeSizeProduct,
    TResult? Function(GoBackProductInfoCategotySearchEvent value)?
        goBackProductInfo,
    TResult? Function(PaginationProductSearchEvent value)? paginationProduct,
    TResult? Function(AddProductToSoppingCartSearchEvent value)?
        addProductToSoppingCart,
    TResult? Function(CheckButtonTopSearchEvent value)? checkButtonTop,
    TResult? Function(CheckProductToSoppingCartSearchEvent value)?
        checkProductToSoppingCart,
    TResult? Function(GetInfoProductSizeSearchEvent value)? getInfoProductSize,
    TResult? Function(UpdateInfoProductsSearchEvent value)? updateInfoProducts,
  }) {
    return goBackProductInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitSearchEvent value)? init,
    TResult Function(ProfuctsSearchEvent value)? searchProfucts,
    TResult Function(ProfuctsInfoSearchEvent value)? searchProfuctsInfo,
    TResult Function(SelectFilterSearchEvent value)? selectFilter,
    TResult Function(DeleteFilterSearchEvent value)? deleteFilter,
    TResult Function(RemoveSelectFilterCategotySearchEvent value)?
        removeSelectFilterCategory,
    TResult Function(RemoveSelectAllFiltersCategotySearchEvent value)?
        removeSelectAllFilters,
    TResult Function(DeleteCatalogSearchEvent value)? deleteCatalogFilter,
    TResult Function(AddFavouriteProductSearchEvent value)? addFavouriteProduct,
    TResult Function(DeleteFavouriteProductSearchEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductSearchEvent value)? getInfoProduct,
    TResult Function(ChangeSizeProductSearchEvent value)? changeSizeProduct,
    TResult Function(GoBackProductInfoCategotySearchEvent value)?
        goBackProductInfo,
    TResult Function(PaginationProductSearchEvent value)? paginationProduct,
    TResult Function(AddProductToSoppingCartSearchEvent value)?
        addProductToSoppingCart,
    TResult Function(CheckButtonTopSearchEvent value)? checkButtonTop,
    TResult Function(CheckProductToSoppingCartSearchEvent value)?
        checkProductToSoppingCart,
    TResult Function(GetInfoProductSizeSearchEvent value)? getInfoProductSize,
    TResult Function(UpdateInfoProductsSearchEvent value)? updateInfoProducts,
    required TResult orElse(),
  }) {
    if (goBackProductInfo != null) {
      return goBackProductInfo(this);
    }
    return orElse();
  }
}

abstract class GoBackProductInfoCategotySearchEvent implements SearchEvent {
  const factory GoBackProductInfoCategotySearchEvent() =
      _$GoBackProductInfoCategotySearchEventImpl;
}

/// @nodoc
abstract class _$$PaginationProductSearchEventImplCopyWith<$Res> {
  factory _$$PaginationProductSearchEventImplCopyWith(
          _$PaginationProductSearchEventImpl value,
          $Res Function(_$PaginationProductSearchEventImpl) then) =
      __$$PaginationProductSearchEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PaginationProductSearchEventImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$PaginationProductSearchEventImpl>
    implements _$$PaginationProductSearchEventImplCopyWith<$Res> {
  __$$PaginationProductSearchEventImplCopyWithImpl(
      _$PaginationProductSearchEventImpl _value,
      $Res Function(_$PaginationProductSearchEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PaginationProductSearchEventImpl
    implements PaginationProductSearchEvent {
  const _$PaginationProductSearchEventImpl();

  @override
  String toString() {
    return 'SearchEvent.paginationProduct()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationProductSearchEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String query) searchProfucts,
    required TResult Function(String query) searchProfuctsInfo,
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
    required TResult Function(
            int index, ProductDataModel product, String? typeError)
        addFavouriteProduct,
    required TResult Function(int index, String? typeError)
        deleteFavouriteProduct,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate,
            String? typeError)
        getInfoProduct,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function() goBackProductInfo,
    required TResult Function() paginationProduct,
    required TResult Function(
            int code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size)
        addProductToSoppingCart,
    required TResult Function(bool isButtonTop) checkButtonTop,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(String code, bool isShop, String titleScreen)
        getInfoProductSize,
    required TResult Function(String titleScreen) updateInfoProducts,
  }) {
    return paginationProduct();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String query)? searchProfucts,
    TResult? Function(String query)? searchProfuctsInfo,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult? Function(int index)? removeSelectFilterCategory,
    TResult? Function()? removeSelectAllFilters,
    TResult? Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult? Function(int index, ProductDataModel product, String? typeError)?
        addFavouriteProduct,
    TResult? Function(int index, String? typeError)? deleteFavouriteProduct,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate,
            String? typeError)?
        getInfoProduct,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function()? goBackProductInfo,
    TResult? Function()? paginationProduct,
    TResult? Function(
            int code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size)?
        addProductToSoppingCart,
    TResult? Function(bool isButtonTop)? checkButtonTop,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(String code, bool isShop, String titleScreen)?
        getInfoProductSize,
    TResult? Function(String titleScreen)? updateInfoProducts,
  }) {
    return paginationProduct?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String query)? searchProfucts,
    TResult Function(String query)? searchProfuctsInfo,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult Function(int index)? removeSelectFilterCategory,
    TResult Function()? removeSelectAllFilters,
    TResult Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult Function(int index, ProductDataModel product, String? typeError)?
        addFavouriteProduct,
    TResult Function(int index, String? typeError)? deleteFavouriteProduct,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate,
            String? typeError)?
        getInfoProduct,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function()? goBackProductInfo,
    TResult Function()? paginationProduct,
    TResult Function(
            int code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size)?
        addProductToSoppingCart,
    TResult Function(bool isButtonTop)? checkButtonTop,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(String code, bool isShop, String titleScreen)?
        getInfoProductSize,
    TResult Function(String titleScreen)? updateInfoProducts,
    required TResult orElse(),
  }) {
    if (paginationProduct != null) {
      return paginationProduct();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitSearchEvent value) init,
    required TResult Function(ProfuctsSearchEvent value) searchProfucts,
    required TResult Function(ProfuctsInfoSearchEvent value) searchProfuctsInfo,
    required TResult Function(SelectFilterSearchEvent value) selectFilter,
    required TResult Function(DeleteFilterSearchEvent value) deleteFilter,
    required TResult Function(RemoveSelectFilterCategotySearchEvent value)
        removeSelectFilterCategory,
    required TResult Function(RemoveSelectAllFiltersCategotySearchEvent value)
        removeSelectAllFilters,
    required TResult Function(DeleteCatalogSearchEvent value)
        deleteCatalogFilter,
    required TResult Function(AddFavouriteProductSearchEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductSearchEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductSearchEvent value) getInfoProduct,
    required TResult Function(ChangeSizeProductSearchEvent value)
        changeSizeProduct,
    required TResult Function(GoBackProductInfoCategotySearchEvent value)
        goBackProductInfo,
    required TResult Function(PaginationProductSearchEvent value)
        paginationProduct,
    required TResult Function(AddProductToSoppingCartSearchEvent value)
        addProductToSoppingCart,
    required TResult Function(CheckButtonTopSearchEvent value) checkButtonTop,
    required TResult Function(CheckProductToSoppingCartSearchEvent value)
        checkProductToSoppingCart,
    required TResult Function(GetInfoProductSizeSearchEvent value)
        getInfoProductSize,
    required TResult Function(UpdateInfoProductsSearchEvent value)
        updateInfoProducts,
  }) {
    return paginationProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitSearchEvent value)? init,
    TResult? Function(ProfuctsSearchEvent value)? searchProfucts,
    TResult? Function(ProfuctsInfoSearchEvent value)? searchProfuctsInfo,
    TResult? Function(SelectFilterSearchEvent value)? selectFilter,
    TResult? Function(DeleteFilterSearchEvent value)? deleteFilter,
    TResult? Function(RemoveSelectFilterCategotySearchEvent value)?
        removeSelectFilterCategory,
    TResult? Function(RemoveSelectAllFiltersCategotySearchEvent value)?
        removeSelectAllFilters,
    TResult? Function(DeleteCatalogSearchEvent value)? deleteCatalogFilter,
    TResult? Function(AddFavouriteProductSearchEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductSearchEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductSearchEvent value)? getInfoProduct,
    TResult? Function(ChangeSizeProductSearchEvent value)? changeSizeProduct,
    TResult? Function(GoBackProductInfoCategotySearchEvent value)?
        goBackProductInfo,
    TResult? Function(PaginationProductSearchEvent value)? paginationProduct,
    TResult? Function(AddProductToSoppingCartSearchEvent value)?
        addProductToSoppingCart,
    TResult? Function(CheckButtonTopSearchEvent value)? checkButtonTop,
    TResult? Function(CheckProductToSoppingCartSearchEvent value)?
        checkProductToSoppingCart,
    TResult? Function(GetInfoProductSizeSearchEvent value)? getInfoProductSize,
    TResult? Function(UpdateInfoProductsSearchEvent value)? updateInfoProducts,
  }) {
    return paginationProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitSearchEvent value)? init,
    TResult Function(ProfuctsSearchEvent value)? searchProfucts,
    TResult Function(ProfuctsInfoSearchEvent value)? searchProfuctsInfo,
    TResult Function(SelectFilterSearchEvent value)? selectFilter,
    TResult Function(DeleteFilterSearchEvent value)? deleteFilter,
    TResult Function(RemoveSelectFilterCategotySearchEvent value)?
        removeSelectFilterCategory,
    TResult Function(RemoveSelectAllFiltersCategotySearchEvent value)?
        removeSelectAllFilters,
    TResult Function(DeleteCatalogSearchEvent value)? deleteCatalogFilter,
    TResult Function(AddFavouriteProductSearchEvent value)? addFavouriteProduct,
    TResult Function(DeleteFavouriteProductSearchEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductSearchEvent value)? getInfoProduct,
    TResult Function(ChangeSizeProductSearchEvent value)? changeSizeProduct,
    TResult Function(GoBackProductInfoCategotySearchEvent value)?
        goBackProductInfo,
    TResult Function(PaginationProductSearchEvent value)? paginationProduct,
    TResult Function(AddProductToSoppingCartSearchEvent value)?
        addProductToSoppingCart,
    TResult Function(CheckButtonTopSearchEvent value)? checkButtonTop,
    TResult Function(CheckProductToSoppingCartSearchEvent value)?
        checkProductToSoppingCart,
    TResult Function(GetInfoProductSizeSearchEvent value)? getInfoProductSize,
    TResult Function(UpdateInfoProductsSearchEvent value)? updateInfoProducts,
    required TResult orElse(),
  }) {
    if (paginationProduct != null) {
      return paginationProduct(this);
    }
    return orElse();
  }
}

abstract class PaginationProductSearchEvent implements SearchEvent {
  const factory PaginationProductSearchEvent() =
      _$PaginationProductSearchEventImpl;
}

/// @nodoc
abstract class _$$AddProductToSoppingCartSearchEventImplCopyWith<$Res> {
  factory _$$AddProductToSoppingCartSearchEventImplCopyWith(
          _$AddProductToSoppingCartSearchEventImpl value,
          $Res Function(_$AddProductToSoppingCartSearchEventImpl) then) =
      __$$AddProductToSoppingCartSearchEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int code,
      String titleScreen,
      String typeAddProductToShoppingCart,
      String identifierAddProductToShoppingCart,
      SkuProductDataModel? size});

  $SkuProductDataModelCopyWith<$Res>? get size;
}

/// @nodoc
class __$$AddProductToSoppingCartSearchEventImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res,
        _$AddProductToSoppingCartSearchEventImpl>
    implements _$$AddProductToSoppingCartSearchEventImplCopyWith<$Res> {
  __$$AddProductToSoppingCartSearchEventImplCopyWithImpl(
      _$AddProductToSoppingCartSearchEventImpl _value,
      $Res Function(_$AddProductToSoppingCartSearchEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? titleScreen = null,
    Object? typeAddProductToShoppingCart = null,
    Object? identifierAddProductToShoppingCart = null,
    Object? size = freezed,
  }) {
    return _then(_$AddProductToSoppingCartSearchEventImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      titleScreen: null == titleScreen
          ? _value.titleScreen
          : titleScreen // ignore: cast_nullable_to_non_nullable
              as String,
      typeAddProductToShoppingCart: null == typeAddProductToShoppingCart
          ? _value.typeAddProductToShoppingCart
          : typeAddProductToShoppingCart // ignore: cast_nullable_to_non_nullable
              as String,
      identifierAddProductToShoppingCart: null ==
              identifierAddProductToShoppingCart
          ? _value.identifierAddProductToShoppingCart
          : identifierAddProductToShoppingCart // ignore: cast_nullable_to_non_nullable
              as String,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as SkuProductDataModel?,
    ));
  }

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SkuProductDataModelCopyWith<$Res>? get size {
    if (_value.size == null) {
      return null;
    }

    return $SkuProductDataModelCopyWith<$Res>(_value.size!, (value) {
      return _then(_value.copyWith(size: value));
    });
  }
}

/// @nodoc

class _$AddProductToSoppingCartSearchEventImpl
    implements AddProductToSoppingCartSearchEvent {
  const _$AddProductToSoppingCartSearchEventImpl(
      {required this.code,
      required this.titleScreen,
      required this.typeAddProductToShoppingCart,
      required this.identifierAddProductToShoppingCart,
      this.size});

  @override
  final int code;
  @override
  final String titleScreen;
  @override
  final String typeAddProductToShoppingCart;
  @override
  final String identifierAddProductToShoppingCart;
  @override
  final SkuProductDataModel? size;

  @override
  String toString() {
    return 'SearchEvent.addProductToSoppingCart(code: $code, titleScreen: $titleScreen, typeAddProductToShoppingCart: $typeAddProductToShoppingCart, identifierAddProductToShoppingCart: $identifierAddProductToShoppingCart, size: $size)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddProductToSoppingCartSearchEventImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.titleScreen, titleScreen) ||
                other.titleScreen == titleScreen) &&
            (identical(other.typeAddProductToShoppingCart,
                    typeAddProductToShoppingCart) ||
                other.typeAddProductToShoppingCart ==
                    typeAddProductToShoppingCart) &&
            (identical(other.identifierAddProductToShoppingCart,
                    identifierAddProductToShoppingCart) ||
                other.identifierAddProductToShoppingCart ==
                    identifierAddProductToShoppingCart) &&
            (identical(other.size, size) || other.size == size));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, titleScreen,
      typeAddProductToShoppingCart, identifierAddProductToShoppingCart, size);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddProductToSoppingCartSearchEventImplCopyWith<
          _$AddProductToSoppingCartSearchEventImpl>
      get copyWith => __$$AddProductToSoppingCartSearchEventImplCopyWithImpl<
          _$AddProductToSoppingCartSearchEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String query) searchProfucts,
    required TResult Function(String query) searchProfuctsInfo,
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
    required TResult Function(
            int index, ProductDataModel product, String? typeError)
        addFavouriteProduct,
    required TResult Function(int index, String? typeError)
        deleteFavouriteProduct,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate,
            String? typeError)
        getInfoProduct,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function() goBackProductInfo,
    required TResult Function() paginationProduct,
    required TResult Function(
            int code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size)
        addProductToSoppingCart,
    required TResult Function(bool isButtonTop) checkButtonTop,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(String code, bool isShop, String titleScreen)
        getInfoProductSize,
    required TResult Function(String titleScreen) updateInfoProducts,
  }) {
    return addProductToSoppingCart(code, titleScreen,
        typeAddProductToShoppingCart, identifierAddProductToShoppingCart, size);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String query)? searchProfucts,
    TResult? Function(String query)? searchProfuctsInfo,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult? Function(int index)? removeSelectFilterCategory,
    TResult? Function()? removeSelectAllFilters,
    TResult? Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult? Function(int index, ProductDataModel product, String? typeError)?
        addFavouriteProduct,
    TResult? Function(int index, String? typeError)? deleteFavouriteProduct,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate,
            String? typeError)?
        getInfoProduct,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function()? goBackProductInfo,
    TResult? Function()? paginationProduct,
    TResult? Function(
            int code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size)?
        addProductToSoppingCart,
    TResult? Function(bool isButtonTop)? checkButtonTop,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(String code, bool isShop, String titleScreen)?
        getInfoProductSize,
    TResult? Function(String titleScreen)? updateInfoProducts,
  }) {
    return addProductToSoppingCart?.call(code, titleScreen,
        typeAddProductToShoppingCart, identifierAddProductToShoppingCart, size);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String query)? searchProfucts,
    TResult Function(String query)? searchProfuctsInfo,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult Function(int index)? removeSelectFilterCategory,
    TResult Function()? removeSelectAllFilters,
    TResult Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult Function(int index, ProductDataModel product, String? typeError)?
        addFavouriteProduct,
    TResult Function(int index, String? typeError)? deleteFavouriteProduct,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate,
            String? typeError)?
        getInfoProduct,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function()? goBackProductInfo,
    TResult Function()? paginationProduct,
    TResult Function(
            int code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size)?
        addProductToSoppingCart,
    TResult Function(bool isButtonTop)? checkButtonTop,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(String code, bool isShop, String titleScreen)?
        getInfoProductSize,
    TResult Function(String titleScreen)? updateInfoProducts,
    required TResult orElse(),
  }) {
    if (addProductToSoppingCart != null) {
      return addProductToSoppingCart(
          code,
          titleScreen,
          typeAddProductToShoppingCart,
          identifierAddProductToShoppingCart,
          size);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitSearchEvent value) init,
    required TResult Function(ProfuctsSearchEvent value) searchProfucts,
    required TResult Function(ProfuctsInfoSearchEvent value) searchProfuctsInfo,
    required TResult Function(SelectFilterSearchEvent value) selectFilter,
    required TResult Function(DeleteFilterSearchEvent value) deleteFilter,
    required TResult Function(RemoveSelectFilterCategotySearchEvent value)
        removeSelectFilterCategory,
    required TResult Function(RemoveSelectAllFiltersCategotySearchEvent value)
        removeSelectAllFilters,
    required TResult Function(DeleteCatalogSearchEvent value)
        deleteCatalogFilter,
    required TResult Function(AddFavouriteProductSearchEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductSearchEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductSearchEvent value) getInfoProduct,
    required TResult Function(ChangeSizeProductSearchEvent value)
        changeSizeProduct,
    required TResult Function(GoBackProductInfoCategotySearchEvent value)
        goBackProductInfo,
    required TResult Function(PaginationProductSearchEvent value)
        paginationProduct,
    required TResult Function(AddProductToSoppingCartSearchEvent value)
        addProductToSoppingCart,
    required TResult Function(CheckButtonTopSearchEvent value) checkButtonTop,
    required TResult Function(CheckProductToSoppingCartSearchEvent value)
        checkProductToSoppingCart,
    required TResult Function(GetInfoProductSizeSearchEvent value)
        getInfoProductSize,
    required TResult Function(UpdateInfoProductsSearchEvent value)
        updateInfoProducts,
  }) {
    return addProductToSoppingCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitSearchEvent value)? init,
    TResult? Function(ProfuctsSearchEvent value)? searchProfucts,
    TResult? Function(ProfuctsInfoSearchEvent value)? searchProfuctsInfo,
    TResult? Function(SelectFilterSearchEvent value)? selectFilter,
    TResult? Function(DeleteFilterSearchEvent value)? deleteFilter,
    TResult? Function(RemoveSelectFilterCategotySearchEvent value)?
        removeSelectFilterCategory,
    TResult? Function(RemoveSelectAllFiltersCategotySearchEvent value)?
        removeSelectAllFilters,
    TResult? Function(DeleteCatalogSearchEvent value)? deleteCatalogFilter,
    TResult? Function(AddFavouriteProductSearchEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductSearchEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductSearchEvent value)? getInfoProduct,
    TResult? Function(ChangeSizeProductSearchEvent value)? changeSizeProduct,
    TResult? Function(GoBackProductInfoCategotySearchEvent value)?
        goBackProductInfo,
    TResult? Function(PaginationProductSearchEvent value)? paginationProduct,
    TResult? Function(AddProductToSoppingCartSearchEvent value)?
        addProductToSoppingCart,
    TResult? Function(CheckButtonTopSearchEvent value)? checkButtonTop,
    TResult? Function(CheckProductToSoppingCartSearchEvent value)?
        checkProductToSoppingCart,
    TResult? Function(GetInfoProductSizeSearchEvent value)? getInfoProductSize,
    TResult? Function(UpdateInfoProductsSearchEvent value)? updateInfoProducts,
  }) {
    return addProductToSoppingCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitSearchEvent value)? init,
    TResult Function(ProfuctsSearchEvent value)? searchProfucts,
    TResult Function(ProfuctsInfoSearchEvent value)? searchProfuctsInfo,
    TResult Function(SelectFilterSearchEvent value)? selectFilter,
    TResult Function(DeleteFilterSearchEvent value)? deleteFilter,
    TResult Function(RemoveSelectFilterCategotySearchEvent value)?
        removeSelectFilterCategory,
    TResult Function(RemoveSelectAllFiltersCategotySearchEvent value)?
        removeSelectAllFilters,
    TResult Function(DeleteCatalogSearchEvent value)? deleteCatalogFilter,
    TResult Function(AddFavouriteProductSearchEvent value)? addFavouriteProduct,
    TResult Function(DeleteFavouriteProductSearchEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductSearchEvent value)? getInfoProduct,
    TResult Function(ChangeSizeProductSearchEvent value)? changeSizeProduct,
    TResult Function(GoBackProductInfoCategotySearchEvent value)?
        goBackProductInfo,
    TResult Function(PaginationProductSearchEvent value)? paginationProduct,
    TResult Function(AddProductToSoppingCartSearchEvent value)?
        addProductToSoppingCart,
    TResult Function(CheckButtonTopSearchEvent value)? checkButtonTop,
    TResult Function(CheckProductToSoppingCartSearchEvent value)?
        checkProductToSoppingCart,
    TResult Function(GetInfoProductSizeSearchEvent value)? getInfoProductSize,
    TResult Function(UpdateInfoProductsSearchEvent value)? updateInfoProducts,
    required TResult orElse(),
  }) {
    if (addProductToSoppingCart != null) {
      return addProductToSoppingCart(this);
    }
    return orElse();
  }
}

abstract class AddProductToSoppingCartSearchEvent implements SearchEvent {
  const factory AddProductToSoppingCartSearchEvent(
          {required final int code,
          required final String titleScreen,
          required final String typeAddProductToShoppingCart,
          required final String identifierAddProductToShoppingCart,
          final SkuProductDataModel? size}) =
      _$AddProductToSoppingCartSearchEventImpl;

  int get code;
  String get titleScreen;
  String get typeAddProductToShoppingCart;
  String get identifierAddProductToShoppingCart;
  SkuProductDataModel? get size;

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddProductToSoppingCartSearchEventImplCopyWith<
          _$AddProductToSoppingCartSearchEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckButtonTopSearchEventImplCopyWith<$Res> {
  factory _$$CheckButtonTopSearchEventImplCopyWith(
          _$CheckButtonTopSearchEventImpl value,
          $Res Function(_$CheckButtonTopSearchEventImpl) then) =
      __$$CheckButtonTopSearchEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isButtonTop});
}

/// @nodoc
class __$$CheckButtonTopSearchEventImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$CheckButtonTopSearchEventImpl>
    implements _$$CheckButtonTopSearchEventImplCopyWith<$Res> {
  __$$CheckButtonTopSearchEventImplCopyWithImpl(
      _$CheckButtonTopSearchEventImpl _value,
      $Res Function(_$CheckButtonTopSearchEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isButtonTop = null,
  }) {
    return _then(_$CheckButtonTopSearchEventImpl(
      isButtonTop: null == isButtonTop
          ? _value.isButtonTop
          : isButtonTop // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CheckButtonTopSearchEventImpl implements CheckButtonTopSearchEvent {
  const _$CheckButtonTopSearchEventImpl({required this.isButtonTop});

  @override
  final bool isButtonTop;

  @override
  String toString() {
    return 'SearchEvent.checkButtonTop(isButtonTop: $isButtonTop)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckButtonTopSearchEventImpl &&
            (identical(other.isButtonTop, isButtonTop) ||
                other.isButtonTop == isButtonTop));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isButtonTop);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckButtonTopSearchEventImplCopyWith<_$CheckButtonTopSearchEventImpl>
      get copyWith => __$$CheckButtonTopSearchEventImplCopyWithImpl<
          _$CheckButtonTopSearchEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String query) searchProfucts,
    required TResult Function(String query) searchProfuctsInfo,
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
    required TResult Function(
            int index, ProductDataModel product, String? typeError)
        addFavouriteProduct,
    required TResult Function(int index, String? typeError)
        deleteFavouriteProduct,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate,
            String? typeError)
        getInfoProduct,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function() goBackProductInfo,
    required TResult Function() paginationProduct,
    required TResult Function(
            int code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size)
        addProductToSoppingCart,
    required TResult Function(bool isButtonTop) checkButtonTop,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(String code, bool isShop, String titleScreen)
        getInfoProductSize,
    required TResult Function(String titleScreen) updateInfoProducts,
  }) {
    return checkButtonTop(isButtonTop);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String query)? searchProfucts,
    TResult? Function(String query)? searchProfuctsInfo,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult? Function(int index)? removeSelectFilterCategory,
    TResult? Function()? removeSelectAllFilters,
    TResult? Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult? Function(int index, ProductDataModel product, String? typeError)?
        addFavouriteProduct,
    TResult? Function(int index, String? typeError)? deleteFavouriteProduct,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate,
            String? typeError)?
        getInfoProduct,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function()? goBackProductInfo,
    TResult? Function()? paginationProduct,
    TResult? Function(
            int code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size)?
        addProductToSoppingCart,
    TResult? Function(bool isButtonTop)? checkButtonTop,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(String code, bool isShop, String titleScreen)?
        getInfoProductSize,
    TResult? Function(String titleScreen)? updateInfoProducts,
  }) {
    return checkButtonTop?.call(isButtonTop);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String query)? searchProfucts,
    TResult Function(String query)? searchProfuctsInfo,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult Function(int index)? removeSelectFilterCategory,
    TResult Function()? removeSelectAllFilters,
    TResult Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult Function(int index, ProductDataModel product, String? typeError)?
        addFavouriteProduct,
    TResult Function(int index, String? typeError)? deleteFavouriteProduct,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate,
            String? typeError)?
        getInfoProduct,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function()? goBackProductInfo,
    TResult Function()? paginationProduct,
    TResult Function(
            int code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size)?
        addProductToSoppingCart,
    TResult Function(bool isButtonTop)? checkButtonTop,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(String code, bool isShop, String titleScreen)?
        getInfoProductSize,
    TResult Function(String titleScreen)? updateInfoProducts,
    required TResult orElse(),
  }) {
    if (checkButtonTop != null) {
      return checkButtonTop(isButtonTop);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitSearchEvent value) init,
    required TResult Function(ProfuctsSearchEvent value) searchProfucts,
    required TResult Function(ProfuctsInfoSearchEvent value) searchProfuctsInfo,
    required TResult Function(SelectFilterSearchEvent value) selectFilter,
    required TResult Function(DeleteFilterSearchEvent value) deleteFilter,
    required TResult Function(RemoveSelectFilterCategotySearchEvent value)
        removeSelectFilterCategory,
    required TResult Function(RemoveSelectAllFiltersCategotySearchEvent value)
        removeSelectAllFilters,
    required TResult Function(DeleteCatalogSearchEvent value)
        deleteCatalogFilter,
    required TResult Function(AddFavouriteProductSearchEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductSearchEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductSearchEvent value) getInfoProduct,
    required TResult Function(ChangeSizeProductSearchEvent value)
        changeSizeProduct,
    required TResult Function(GoBackProductInfoCategotySearchEvent value)
        goBackProductInfo,
    required TResult Function(PaginationProductSearchEvent value)
        paginationProduct,
    required TResult Function(AddProductToSoppingCartSearchEvent value)
        addProductToSoppingCart,
    required TResult Function(CheckButtonTopSearchEvent value) checkButtonTop,
    required TResult Function(CheckProductToSoppingCartSearchEvent value)
        checkProductToSoppingCart,
    required TResult Function(GetInfoProductSizeSearchEvent value)
        getInfoProductSize,
    required TResult Function(UpdateInfoProductsSearchEvent value)
        updateInfoProducts,
  }) {
    return checkButtonTop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitSearchEvent value)? init,
    TResult? Function(ProfuctsSearchEvent value)? searchProfucts,
    TResult? Function(ProfuctsInfoSearchEvent value)? searchProfuctsInfo,
    TResult? Function(SelectFilterSearchEvent value)? selectFilter,
    TResult? Function(DeleteFilterSearchEvent value)? deleteFilter,
    TResult? Function(RemoveSelectFilterCategotySearchEvent value)?
        removeSelectFilterCategory,
    TResult? Function(RemoveSelectAllFiltersCategotySearchEvent value)?
        removeSelectAllFilters,
    TResult? Function(DeleteCatalogSearchEvent value)? deleteCatalogFilter,
    TResult? Function(AddFavouriteProductSearchEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductSearchEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductSearchEvent value)? getInfoProduct,
    TResult? Function(ChangeSizeProductSearchEvent value)? changeSizeProduct,
    TResult? Function(GoBackProductInfoCategotySearchEvent value)?
        goBackProductInfo,
    TResult? Function(PaginationProductSearchEvent value)? paginationProduct,
    TResult? Function(AddProductToSoppingCartSearchEvent value)?
        addProductToSoppingCart,
    TResult? Function(CheckButtonTopSearchEvent value)? checkButtonTop,
    TResult? Function(CheckProductToSoppingCartSearchEvent value)?
        checkProductToSoppingCart,
    TResult? Function(GetInfoProductSizeSearchEvent value)? getInfoProductSize,
    TResult? Function(UpdateInfoProductsSearchEvent value)? updateInfoProducts,
  }) {
    return checkButtonTop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitSearchEvent value)? init,
    TResult Function(ProfuctsSearchEvent value)? searchProfucts,
    TResult Function(ProfuctsInfoSearchEvent value)? searchProfuctsInfo,
    TResult Function(SelectFilterSearchEvent value)? selectFilter,
    TResult Function(DeleteFilterSearchEvent value)? deleteFilter,
    TResult Function(RemoveSelectFilterCategotySearchEvent value)?
        removeSelectFilterCategory,
    TResult Function(RemoveSelectAllFiltersCategotySearchEvent value)?
        removeSelectAllFilters,
    TResult Function(DeleteCatalogSearchEvent value)? deleteCatalogFilter,
    TResult Function(AddFavouriteProductSearchEvent value)? addFavouriteProduct,
    TResult Function(DeleteFavouriteProductSearchEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductSearchEvent value)? getInfoProduct,
    TResult Function(ChangeSizeProductSearchEvent value)? changeSizeProduct,
    TResult Function(GoBackProductInfoCategotySearchEvent value)?
        goBackProductInfo,
    TResult Function(PaginationProductSearchEvent value)? paginationProduct,
    TResult Function(AddProductToSoppingCartSearchEvent value)?
        addProductToSoppingCart,
    TResult Function(CheckButtonTopSearchEvent value)? checkButtonTop,
    TResult Function(CheckProductToSoppingCartSearchEvent value)?
        checkProductToSoppingCart,
    TResult Function(GetInfoProductSizeSearchEvent value)? getInfoProductSize,
    TResult Function(UpdateInfoProductsSearchEvent value)? updateInfoProducts,
    required TResult orElse(),
  }) {
    if (checkButtonTop != null) {
      return checkButtonTop(this);
    }
    return orElse();
  }
}

abstract class CheckButtonTopSearchEvent implements SearchEvent {
  const factory CheckButtonTopSearchEvent({required final bool isButtonTop}) =
      _$CheckButtonTopSearchEventImpl;

  bool get isButtonTop;

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckButtonTopSearchEventImplCopyWith<_$CheckButtonTopSearchEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckProductToSoppingCartSearchEventImplCopyWith<$Res> {
  factory _$$CheckProductToSoppingCartSearchEventImplCopyWith(
          _$CheckProductToSoppingCartSearchEventImpl value,
          $Res Function(_$CheckProductToSoppingCartSearchEventImpl) then) =
      __$$CheckProductToSoppingCartSearchEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SkuProductDataModel size});

  $SkuProductDataModelCopyWith<$Res> get size;
}

/// @nodoc
class __$$CheckProductToSoppingCartSearchEventImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res,
        _$CheckProductToSoppingCartSearchEventImpl>
    implements _$$CheckProductToSoppingCartSearchEventImplCopyWith<$Res> {
  __$$CheckProductToSoppingCartSearchEventImplCopyWithImpl(
      _$CheckProductToSoppingCartSearchEventImpl _value,
      $Res Function(_$CheckProductToSoppingCartSearchEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = null,
  }) {
    return _then(_$CheckProductToSoppingCartSearchEventImpl(
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as SkuProductDataModel,
    ));
  }

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SkuProductDataModelCopyWith<$Res> get size {
    return $SkuProductDataModelCopyWith<$Res>(_value.size, (value) {
      return _then(_value.copyWith(size: value));
    });
  }
}

/// @nodoc

class _$CheckProductToSoppingCartSearchEventImpl
    implements CheckProductToSoppingCartSearchEvent {
  const _$CheckProductToSoppingCartSearchEventImpl({required this.size});

  @override
  final SkuProductDataModel size;

  @override
  String toString() {
    return 'SearchEvent.checkProductToSoppingCart(size: $size)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckProductToSoppingCartSearchEventImpl &&
            (identical(other.size, size) || other.size == size));
  }

  @override
  int get hashCode => Object.hash(runtimeType, size);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckProductToSoppingCartSearchEventImplCopyWith<
          _$CheckProductToSoppingCartSearchEventImpl>
      get copyWith => __$$CheckProductToSoppingCartSearchEventImplCopyWithImpl<
          _$CheckProductToSoppingCartSearchEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String query) searchProfucts,
    required TResult Function(String query) searchProfuctsInfo,
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
    required TResult Function(
            int index, ProductDataModel product, String? typeError)
        addFavouriteProduct,
    required TResult Function(int index, String? typeError)
        deleteFavouriteProduct,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate,
            String? typeError)
        getInfoProduct,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function() goBackProductInfo,
    required TResult Function() paginationProduct,
    required TResult Function(
            int code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size)
        addProductToSoppingCart,
    required TResult Function(bool isButtonTop) checkButtonTop,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(String code, bool isShop, String titleScreen)
        getInfoProductSize,
    required TResult Function(String titleScreen) updateInfoProducts,
  }) {
    return checkProductToSoppingCart(size);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String query)? searchProfucts,
    TResult? Function(String query)? searchProfuctsInfo,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult? Function(int index)? removeSelectFilterCategory,
    TResult? Function()? removeSelectAllFilters,
    TResult? Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult? Function(int index, ProductDataModel product, String? typeError)?
        addFavouriteProduct,
    TResult? Function(int index, String? typeError)? deleteFavouriteProduct,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate,
            String? typeError)?
        getInfoProduct,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function()? goBackProductInfo,
    TResult? Function()? paginationProduct,
    TResult? Function(
            int code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size)?
        addProductToSoppingCart,
    TResult? Function(bool isButtonTop)? checkButtonTop,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(String code, bool isShop, String titleScreen)?
        getInfoProductSize,
    TResult? Function(String titleScreen)? updateInfoProducts,
  }) {
    return checkProductToSoppingCart?.call(size);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String query)? searchProfucts,
    TResult Function(String query)? searchProfuctsInfo,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult Function(int index)? removeSelectFilterCategory,
    TResult Function()? removeSelectAllFilters,
    TResult Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult Function(int index, ProductDataModel product, String? typeError)?
        addFavouriteProduct,
    TResult Function(int index, String? typeError)? deleteFavouriteProduct,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate,
            String? typeError)?
        getInfoProduct,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function()? goBackProductInfo,
    TResult Function()? paginationProduct,
    TResult Function(
            int code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size)?
        addProductToSoppingCart,
    TResult Function(bool isButtonTop)? checkButtonTop,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(String code, bool isShop, String titleScreen)?
        getInfoProductSize,
    TResult Function(String titleScreen)? updateInfoProducts,
    required TResult orElse(),
  }) {
    if (checkProductToSoppingCart != null) {
      return checkProductToSoppingCart(size);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitSearchEvent value) init,
    required TResult Function(ProfuctsSearchEvent value) searchProfucts,
    required TResult Function(ProfuctsInfoSearchEvent value) searchProfuctsInfo,
    required TResult Function(SelectFilterSearchEvent value) selectFilter,
    required TResult Function(DeleteFilterSearchEvent value) deleteFilter,
    required TResult Function(RemoveSelectFilterCategotySearchEvent value)
        removeSelectFilterCategory,
    required TResult Function(RemoveSelectAllFiltersCategotySearchEvent value)
        removeSelectAllFilters,
    required TResult Function(DeleteCatalogSearchEvent value)
        deleteCatalogFilter,
    required TResult Function(AddFavouriteProductSearchEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductSearchEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductSearchEvent value) getInfoProduct,
    required TResult Function(ChangeSizeProductSearchEvent value)
        changeSizeProduct,
    required TResult Function(GoBackProductInfoCategotySearchEvent value)
        goBackProductInfo,
    required TResult Function(PaginationProductSearchEvent value)
        paginationProduct,
    required TResult Function(AddProductToSoppingCartSearchEvent value)
        addProductToSoppingCart,
    required TResult Function(CheckButtonTopSearchEvent value) checkButtonTop,
    required TResult Function(CheckProductToSoppingCartSearchEvent value)
        checkProductToSoppingCart,
    required TResult Function(GetInfoProductSizeSearchEvent value)
        getInfoProductSize,
    required TResult Function(UpdateInfoProductsSearchEvent value)
        updateInfoProducts,
  }) {
    return checkProductToSoppingCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitSearchEvent value)? init,
    TResult? Function(ProfuctsSearchEvent value)? searchProfucts,
    TResult? Function(ProfuctsInfoSearchEvent value)? searchProfuctsInfo,
    TResult? Function(SelectFilterSearchEvent value)? selectFilter,
    TResult? Function(DeleteFilterSearchEvent value)? deleteFilter,
    TResult? Function(RemoveSelectFilterCategotySearchEvent value)?
        removeSelectFilterCategory,
    TResult? Function(RemoveSelectAllFiltersCategotySearchEvent value)?
        removeSelectAllFilters,
    TResult? Function(DeleteCatalogSearchEvent value)? deleteCatalogFilter,
    TResult? Function(AddFavouriteProductSearchEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductSearchEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductSearchEvent value)? getInfoProduct,
    TResult? Function(ChangeSizeProductSearchEvent value)? changeSizeProduct,
    TResult? Function(GoBackProductInfoCategotySearchEvent value)?
        goBackProductInfo,
    TResult? Function(PaginationProductSearchEvent value)? paginationProduct,
    TResult? Function(AddProductToSoppingCartSearchEvent value)?
        addProductToSoppingCart,
    TResult? Function(CheckButtonTopSearchEvent value)? checkButtonTop,
    TResult? Function(CheckProductToSoppingCartSearchEvent value)?
        checkProductToSoppingCart,
    TResult? Function(GetInfoProductSizeSearchEvent value)? getInfoProductSize,
    TResult? Function(UpdateInfoProductsSearchEvent value)? updateInfoProducts,
  }) {
    return checkProductToSoppingCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitSearchEvent value)? init,
    TResult Function(ProfuctsSearchEvent value)? searchProfucts,
    TResult Function(ProfuctsInfoSearchEvent value)? searchProfuctsInfo,
    TResult Function(SelectFilterSearchEvent value)? selectFilter,
    TResult Function(DeleteFilterSearchEvent value)? deleteFilter,
    TResult Function(RemoveSelectFilterCategotySearchEvent value)?
        removeSelectFilterCategory,
    TResult Function(RemoveSelectAllFiltersCategotySearchEvent value)?
        removeSelectAllFilters,
    TResult Function(DeleteCatalogSearchEvent value)? deleteCatalogFilter,
    TResult Function(AddFavouriteProductSearchEvent value)? addFavouriteProduct,
    TResult Function(DeleteFavouriteProductSearchEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductSearchEvent value)? getInfoProduct,
    TResult Function(ChangeSizeProductSearchEvent value)? changeSizeProduct,
    TResult Function(GoBackProductInfoCategotySearchEvent value)?
        goBackProductInfo,
    TResult Function(PaginationProductSearchEvent value)? paginationProduct,
    TResult Function(AddProductToSoppingCartSearchEvent value)?
        addProductToSoppingCart,
    TResult Function(CheckButtonTopSearchEvent value)? checkButtonTop,
    TResult Function(CheckProductToSoppingCartSearchEvent value)?
        checkProductToSoppingCart,
    TResult Function(GetInfoProductSizeSearchEvent value)? getInfoProductSize,
    TResult Function(UpdateInfoProductsSearchEvent value)? updateInfoProducts,
    required TResult orElse(),
  }) {
    if (checkProductToSoppingCart != null) {
      return checkProductToSoppingCart(this);
    }
    return orElse();
  }
}

abstract class CheckProductToSoppingCartSearchEvent implements SearchEvent {
  const factory CheckProductToSoppingCartSearchEvent(
          {required final SkuProductDataModel size}) =
      _$CheckProductToSoppingCartSearchEventImpl;

  SkuProductDataModel get size;

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckProductToSoppingCartSearchEventImplCopyWith<
          _$CheckProductToSoppingCartSearchEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetInfoProductSizeSearchEventImplCopyWith<$Res> {
  factory _$$GetInfoProductSizeSearchEventImplCopyWith(
          _$GetInfoProductSizeSearchEventImpl value,
          $Res Function(_$GetInfoProductSizeSearchEventImpl) then) =
      __$$GetInfoProductSizeSearchEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String code, bool isShop, String titleScreen});
}

/// @nodoc
class __$$GetInfoProductSizeSearchEventImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$GetInfoProductSizeSearchEventImpl>
    implements _$$GetInfoProductSizeSearchEventImplCopyWith<$Res> {
  __$$GetInfoProductSizeSearchEventImplCopyWithImpl(
      _$GetInfoProductSizeSearchEventImpl _value,
      $Res Function(_$GetInfoProductSizeSearchEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? isShop = null,
    Object? titleScreen = null,
  }) {
    return _then(_$GetInfoProductSizeSearchEventImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      isShop: null == isShop
          ? _value.isShop
          : isShop // ignore: cast_nullable_to_non_nullable
              as bool,
      titleScreen: null == titleScreen
          ? _value.titleScreen
          : titleScreen // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetInfoProductSizeSearchEventImpl
    implements GetInfoProductSizeSearchEvent {
  const _$GetInfoProductSizeSearchEventImpl(
      {required this.code, required this.isShop, required this.titleScreen});

  @override
  final String code;
  @override
  final bool isShop;
  @override
  final String titleScreen;

  @override
  String toString() {
    return 'SearchEvent.getInfoProductSize(code: $code, isShop: $isShop, titleScreen: $titleScreen)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetInfoProductSizeSearchEventImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.isShop, isShop) || other.isShop == isShop) &&
            (identical(other.titleScreen, titleScreen) ||
                other.titleScreen == titleScreen));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, isShop, titleScreen);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetInfoProductSizeSearchEventImplCopyWith<
          _$GetInfoProductSizeSearchEventImpl>
      get copyWith => __$$GetInfoProductSizeSearchEventImplCopyWithImpl<
          _$GetInfoProductSizeSearchEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String query) searchProfucts,
    required TResult Function(String query) searchProfuctsInfo,
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
    required TResult Function(
            int index, ProductDataModel product, String? typeError)
        addFavouriteProduct,
    required TResult Function(int index, String? typeError)
        deleteFavouriteProduct,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate,
            String? typeError)
        getInfoProduct,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function() goBackProductInfo,
    required TResult Function() paginationProduct,
    required TResult Function(
            int code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size)
        addProductToSoppingCart,
    required TResult Function(bool isButtonTop) checkButtonTop,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(String code, bool isShop, String titleScreen)
        getInfoProductSize,
    required TResult Function(String titleScreen) updateInfoProducts,
  }) {
    return getInfoProductSize(code, isShop, titleScreen);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String query)? searchProfucts,
    TResult? Function(String query)? searchProfuctsInfo,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult? Function(int index)? removeSelectFilterCategory,
    TResult? Function()? removeSelectAllFilters,
    TResult? Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult? Function(int index, ProductDataModel product, String? typeError)?
        addFavouriteProduct,
    TResult? Function(int index, String? typeError)? deleteFavouriteProduct,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate,
            String? typeError)?
        getInfoProduct,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function()? goBackProductInfo,
    TResult? Function()? paginationProduct,
    TResult? Function(
            int code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size)?
        addProductToSoppingCart,
    TResult? Function(bool isButtonTop)? checkButtonTop,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(String code, bool isShop, String titleScreen)?
        getInfoProductSize,
    TResult? Function(String titleScreen)? updateInfoProducts,
  }) {
    return getInfoProductSize?.call(code, isShop, titleScreen);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String query)? searchProfucts,
    TResult Function(String query)? searchProfuctsInfo,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult Function(int index)? removeSelectFilterCategory,
    TResult Function()? removeSelectAllFilters,
    TResult Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult Function(int index, ProductDataModel product, String? typeError)?
        addFavouriteProduct,
    TResult Function(int index, String? typeError)? deleteFavouriteProduct,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate,
            String? typeError)?
        getInfoProduct,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function()? goBackProductInfo,
    TResult Function()? paginationProduct,
    TResult Function(
            int code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size)?
        addProductToSoppingCart,
    TResult Function(bool isButtonTop)? checkButtonTop,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(String code, bool isShop, String titleScreen)?
        getInfoProductSize,
    TResult Function(String titleScreen)? updateInfoProducts,
    required TResult orElse(),
  }) {
    if (getInfoProductSize != null) {
      return getInfoProductSize(code, isShop, titleScreen);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitSearchEvent value) init,
    required TResult Function(ProfuctsSearchEvent value) searchProfucts,
    required TResult Function(ProfuctsInfoSearchEvent value) searchProfuctsInfo,
    required TResult Function(SelectFilterSearchEvent value) selectFilter,
    required TResult Function(DeleteFilterSearchEvent value) deleteFilter,
    required TResult Function(RemoveSelectFilterCategotySearchEvent value)
        removeSelectFilterCategory,
    required TResult Function(RemoveSelectAllFiltersCategotySearchEvent value)
        removeSelectAllFilters,
    required TResult Function(DeleteCatalogSearchEvent value)
        deleteCatalogFilter,
    required TResult Function(AddFavouriteProductSearchEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductSearchEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductSearchEvent value) getInfoProduct,
    required TResult Function(ChangeSizeProductSearchEvent value)
        changeSizeProduct,
    required TResult Function(GoBackProductInfoCategotySearchEvent value)
        goBackProductInfo,
    required TResult Function(PaginationProductSearchEvent value)
        paginationProduct,
    required TResult Function(AddProductToSoppingCartSearchEvent value)
        addProductToSoppingCart,
    required TResult Function(CheckButtonTopSearchEvent value) checkButtonTop,
    required TResult Function(CheckProductToSoppingCartSearchEvent value)
        checkProductToSoppingCart,
    required TResult Function(GetInfoProductSizeSearchEvent value)
        getInfoProductSize,
    required TResult Function(UpdateInfoProductsSearchEvent value)
        updateInfoProducts,
  }) {
    return getInfoProductSize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitSearchEvent value)? init,
    TResult? Function(ProfuctsSearchEvent value)? searchProfucts,
    TResult? Function(ProfuctsInfoSearchEvent value)? searchProfuctsInfo,
    TResult? Function(SelectFilterSearchEvent value)? selectFilter,
    TResult? Function(DeleteFilterSearchEvent value)? deleteFilter,
    TResult? Function(RemoveSelectFilterCategotySearchEvent value)?
        removeSelectFilterCategory,
    TResult? Function(RemoveSelectAllFiltersCategotySearchEvent value)?
        removeSelectAllFilters,
    TResult? Function(DeleteCatalogSearchEvent value)? deleteCatalogFilter,
    TResult? Function(AddFavouriteProductSearchEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductSearchEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductSearchEvent value)? getInfoProduct,
    TResult? Function(ChangeSizeProductSearchEvent value)? changeSizeProduct,
    TResult? Function(GoBackProductInfoCategotySearchEvent value)?
        goBackProductInfo,
    TResult? Function(PaginationProductSearchEvent value)? paginationProduct,
    TResult? Function(AddProductToSoppingCartSearchEvent value)?
        addProductToSoppingCart,
    TResult? Function(CheckButtonTopSearchEvent value)? checkButtonTop,
    TResult? Function(CheckProductToSoppingCartSearchEvent value)?
        checkProductToSoppingCart,
    TResult? Function(GetInfoProductSizeSearchEvent value)? getInfoProductSize,
    TResult? Function(UpdateInfoProductsSearchEvent value)? updateInfoProducts,
  }) {
    return getInfoProductSize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitSearchEvent value)? init,
    TResult Function(ProfuctsSearchEvent value)? searchProfucts,
    TResult Function(ProfuctsInfoSearchEvent value)? searchProfuctsInfo,
    TResult Function(SelectFilterSearchEvent value)? selectFilter,
    TResult Function(DeleteFilterSearchEvent value)? deleteFilter,
    TResult Function(RemoveSelectFilterCategotySearchEvent value)?
        removeSelectFilterCategory,
    TResult Function(RemoveSelectAllFiltersCategotySearchEvent value)?
        removeSelectAllFilters,
    TResult Function(DeleteCatalogSearchEvent value)? deleteCatalogFilter,
    TResult Function(AddFavouriteProductSearchEvent value)? addFavouriteProduct,
    TResult Function(DeleteFavouriteProductSearchEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductSearchEvent value)? getInfoProduct,
    TResult Function(ChangeSizeProductSearchEvent value)? changeSizeProduct,
    TResult Function(GoBackProductInfoCategotySearchEvent value)?
        goBackProductInfo,
    TResult Function(PaginationProductSearchEvent value)? paginationProduct,
    TResult Function(AddProductToSoppingCartSearchEvent value)?
        addProductToSoppingCart,
    TResult Function(CheckButtonTopSearchEvent value)? checkButtonTop,
    TResult Function(CheckProductToSoppingCartSearchEvent value)?
        checkProductToSoppingCart,
    TResult Function(GetInfoProductSizeSearchEvent value)? getInfoProductSize,
    TResult Function(UpdateInfoProductsSearchEvent value)? updateInfoProducts,
    required TResult orElse(),
  }) {
    if (getInfoProductSize != null) {
      return getInfoProductSize(this);
    }
    return orElse();
  }
}

abstract class GetInfoProductSizeSearchEvent implements SearchEvent {
  const factory GetInfoProductSizeSearchEvent(
      {required final String code,
      required final bool isShop,
      required final String titleScreen}) = _$GetInfoProductSizeSearchEventImpl;

  String get code;
  bool get isShop;
  String get titleScreen;

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetInfoProductSizeSearchEventImplCopyWith<
          _$GetInfoProductSizeSearchEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateInfoProductsSearchEventImplCopyWith<$Res> {
  factory _$$UpdateInfoProductsSearchEventImplCopyWith(
          _$UpdateInfoProductsSearchEventImpl value,
          $Res Function(_$UpdateInfoProductsSearchEventImpl) then) =
      __$$UpdateInfoProductsSearchEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String titleScreen});
}

/// @nodoc
class __$$UpdateInfoProductsSearchEventImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$UpdateInfoProductsSearchEventImpl>
    implements _$$UpdateInfoProductsSearchEventImplCopyWith<$Res> {
  __$$UpdateInfoProductsSearchEventImplCopyWithImpl(
      _$UpdateInfoProductsSearchEventImpl _value,
      $Res Function(_$UpdateInfoProductsSearchEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? titleScreen = null,
  }) {
    return _then(_$UpdateInfoProductsSearchEventImpl(
      titleScreen: null == titleScreen
          ? _value.titleScreen
          : titleScreen // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateInfoProductsSearchEventImpl
    implements UpdateInfoProductsSearchEvent {
  const _$UpdateInfoProductsSearchEventImpl({required this.titleScreen});

  @override
  final String titleScreen;

  @override
  String toString() {
    return 'SearchEvent.updateInfoProducts(titleScreen: $titleScreen)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateInfoProductsSearchEventImpl &&
            (identical(other.titleScreen, titleScreen) ||
                other.titleScreen == titleScreen));
  }

  @override
  int get hashCode => Object.hash(runtimeType, titleScreen);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateInfoProductsSearchEventImplCopyWith<
          _$UpdateInfoProductsSearchEventImpl>
      get copyWith => __$$UpdateInfoProductsSearchEventImplCopyWithImpl<
          _$UpdateInfoProductsSearchEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String query) searchProfucts,
    required TResult Function(String query) searchProfuctsInfo,
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
    required TResult Function(
            int index, ProductDataModel product, String? typeError)
        addFavouriteProduct,
    required TResult Function(int index, String? typeError)
        deleteFavouriteProduct,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate,
            String? typeError)
        getInfoProduct,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function() goBackProductInfo,
    required TResult Function() paginationProduct,
    required TResult Function(
            int code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size)
        addProductToSoppingCart,
    required TResult Function(bool isButtonTop) checkButtonTop,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(String code, bool isShop, String titleScreen)
        getInfoProductSize,
    required TResult Function(String titleScreen) updateInfoProducts,
  }) {
    return updateInfoProducts(titleScreen);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String query)? searchProfucts,
    TResult? Function(String query)? searchProfuctsInfo,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult? Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult? Function(int index)? removeSelectFilterCategory,
    TResult? Function()? removeSelectAllFilters,
    TResult? Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult? Function(int index, ProductDataModel product, String? typeError)?
        addFavouriteProduct,
    TResult? Function(int index, String? typeError)? deleteFavouriteProduct,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate,
            String? typeError)?
        getInfoProduct,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function()? goBackProductInfo,
    TResult? Function()? paginationProduct,
    TResult? Function(
            int code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size)?
        addProductToSoppingCart,
    TResult? Function(bool isButtonTop)? checkButtonTop,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(String code, bool isShop, String titleScreen)?
        getInfoProductSize,
    TResult? Function(String titleScreen)? updateInfoProducts,
  }) {
    return updateInfoProducts?.call(titleScreen);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String query)? searchProfucts,
    TResult Function(String query)? searchProfuctsInfo,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        selectFilter,
    TResult Function(int index, int indexItem, FilterItemDataModel item)?
        deleteFilter,
    TResult Function(int index)? removeSelectFilterCategory,
    TResult Function()? removeSelectAllFilters,
    TResult Function(int key, int index, FilterItemDataModel item)?
        deleteCatalogFilter,
    TResult Function(int index, ProductDataModel product, String? typeError)?
        addFavouriteProduct,
    TResult Function(int index, String? typeError)? deleteFavouriteProduct,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate,
            String? typeError)?
        getInfoProduct,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function()? goBackProductInfo,
    TResult Function()? paginationProduct,
    TResult Function(
            int code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size)?
        addProductToSoppingCart,
    TResult Function(bool isButtonTop)? checkButtonTop,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(String code, bool isShop, String titleScreen)?
        getInfoProductSize,
    TResult Function(String titleScreen)? updateInfoProducts,
    required TResult orElse(),
  }) {
    if (updateInfoProducts != null) {
      return updateInfoProducts(titleScreen);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitSearchEvent value) init,
    required TResult Function(ProfuctsSearchEvent value) searchProfucts,
    required TResult Function(ProfuctsInfoSearchEvent value) searchProfuctsInfo,
    required TResult Function(SelectFilterSearchEvent value) selectFilter,
    required TResult Function(DeleteFilterSearchEvent value) deleteFilter,
    required TResult Function(RemoveSelectFilterCategotySearchEvent value)
        removeSelectFilterCategory,
    required TResult Function(RemoveSelectAllFiltersCategotySearchEvent value)
        removeSelectAllFilters,
    required TResult Function(DeleteCatalogSearchEvent value)
        deleteCatalogFilter,
    required TResult Function(AddFavouriteProductSearchEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductSearchEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductSearchEvent value) getInfoProduct,
    required TResult Function(ChangeSizeProductSearchEvent value)
        changeSizeProduct,
    required TResult Function(GoBackProductInfoCategotySearchEvent value)
        goBackProductInfo,
    required TResult Function(PaginationProductSearchEvent value)
        paginationProduct,
    required TResult Function(AddProductToSoppingCartSearchEvent value)
        addProductToSoppingCart,
    required TResult Function(CheckButtonTopSearchEvent value) checkButtonTop,
    required TResult Function(CheckProductToSoppingCartSearchEvent value)
        checkProductToSoppingCart,
    required TResult Function(GetInfoProductSizeSearchEvent value)
        getInfoProductSize,
    required TResult Function(UpdateInfoProductsSearchEvent value)
        updateInfoProducts,
  }) {
    return updateInfoProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitSearchEvent value)? init,
    TResult? Function(ProfuctsSearchEvent value)? searchProfucts,
    TResult? Function(ProfuctsInfoSearchEvent value)? searchProfuctsInfo,
    TResult? Function(SelectFilterSearchEvent value)? selectFilter,
    TResult? Function(DeleteFilterSearchEvent value)? deleteFilter,
    TResult? Function(RemoveSelectFilterCategotySearchEvent value)?
        removeSelectFilterCategory,
    TResult? Function(RemoveSelectAllFiltersCategotySearchEvent value)?
        removeSelectAllFilters,
    TResult? Function(DeleteCatalogSearchEvent value)? deleteCatalogFilter,
    TResult? Function(AddFavouriteProductSearchEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductSearchEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductSearchEvent value)? getInfoProduct,
    TResult? Function(ChangeSizeProductSearchEvent value)? changeSizeProduct,
    TResult? Function(GoBackProductInfoCategotySearchEvent value)?
        goBackProductInfo,
    TResult? Function(PaginationProductSearchEvent value)? paginationProduct,
    TResult? Function(AddProductToSoppingCartSearchEvent value)?
        addProductToSoppingCart,
    TResult? Function(CheckButtonTopSearchEvent value)? checkButtonTop,
    TResult? Function(CheckProductToSoppingCartSearchEvent value)?
        checkProductToSoppingCart,
    TResult? Function(GetInfoProductSizeSearchEvent value)? getInfoProductSize,
    TResult? Function(UpdateInfoProductsSearchEvent value)? updateInfoProducts,
  }) {
    return updateInfoProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitSearchEvent value)? init,
    TResult Function(ProfuctsSearchEvent value)? searchProfucts,
    TResult Function(ProfuctsInfoSearchEvent value)? searchProfuctsInfo,
    TResult Function(SelectFilterSearchEvent value)? selectFilter,
    TResult Function(DeleteFilterSearchEvent value)? deleteFilter,
    TResult Function(RemoveSelectFilterCategotySearchEvent value)?
        removeSelectFilterCategory,
    TResult Function(RemoveSelectAllFiltersCategotySearchEvent value)?
        removeSelectAllFilters,
    TResult Function(DeleteCatalogSearchEvent value)? deleteCatalogFilter,
    TResult Function(AddFavouriteProductSearchEvent value)? addFavouriteProduct,
    TResult Function(DeleteFavouriteProductSearchEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductSearchEvent value)? getInfoProduct,
    TResult Function(ChangeSizeProductSearchEvent value)? changeSizeProduct,
    TResult Function(GoBackProductInfoCategotySearchEvent value)?
        goBackProductInfo,
    TResult Function(PaginationProductSearchEvent value)? paginationProduct,
    TResult Function(AddProductToSoppingCartSearchEvent value)?
        addProductToSoppingCart,
    TResult Function(CheckButtonTopSearchEvent value)? checkButtonTop,
    TResult Function(CheckProductToSoppingCartSearchEvent value)?
        checkProductToSoppingCart,
    TResult Function(GetInfoProductSizeSearchEvent value)? getInfoProductSize,
    TResult Function(UpdateInfoProductsSearchEvent value)? updateInfoProducts,
    required TResult orElse(),
  }) {
    if (updateInfoProducts != null) {
      return updateInfoProducts(this);
    }
    return orElse();
  }
}

abstract class UpdateInfoProductsSearchEvent implements SearchEvent {
  const factory UpdateInfoProductsSearchEvent(
          {required final String titleScreen}) =
      _$UpdateInfoProductsSearchEventImpl;

  String get titleScreen;

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateInfoProductsSearchEventImplCopyWith<
          _$UpdateInfoProductsSearchEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function() openSoppingCart,
    required TResult Function(
            String code,
            List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart,
            String titleScreen,
            String query)
        getSizeProduct,
    required TResult Function(String errorMessage) error,
    required TResult Function(String code, String titleScreen, String query)
        addProductToSoppingCart,
    required TResult Function(
            List<ProductDataModel> searchDefaultProducts,
            List<ProductDataModel> searchProducts,
            List<ProductDataModel> products,
            List<CatalogSectionDataModel> searchSections,
            List<FilterInfoDataModel> filter,
            Map<int, List<FilterItemDataModel>> selectFilter,
            List<Map<int, FilterItemDataModel>> allSelectFilter,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            List<int> favouritesProductsId,
            String query,
            bool isLoading,
            CatalogSearchProductsRequest request,
            List<String> listProductsCode,
            bool isAuth,
            int offset,
            bool isButtonTop,
            List<SkuProductDataModel> listSize,
            bool isLoadGetSizeProduct,
            int userDiscount,
            int productsCount,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isShoppingCartDetailsProduct,
            DetailProductDataModel? detailsProduct,
            List<ProductDataModel>? favouritesProducts,
            bool? isLoadErrorButton,
            CatalogSearchInfoDataModel? searchResultInfo,
            int? indexProduct,
            ProductDataModel? favouriteProduct,
            bool? isShopGetSizeProduct,
            String? errorMessage,
            String? typeError,
            bool? isError,
            int? keyFilterCatalog,
            int? indexFileter,
            int? indexItemFileter,
            int? indexFilterCategory,
            FilterItemDataModel? itemFileter)
        searchProductsResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function()? openSoppingCart,
    TResult? Function(
            String code,
            List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart,
            String titleScreen,
            String query)?
        getSizeProduct,
    TResult? Function(String errorMessage)? error,
    TResult? Function(String code, String titleScreen, String query)?
        addProductToSoppingCart,
    TResult? Function(
            List<ProductDataModel> searchDefaultProducts,
            List<ProductDataModel> searchProducts,
            List<ProductDataModel> products,
            List<CatalogSectionDataModel> searchSections,
            List<FilterInfoDataModel> filter,
            Map<int, List<FilterItemDataModel>> selectFilter,
            List<Map<int, FilterItemDataModel>> allSelectFilter,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            List<int> favouritesProductsId,
            String query,
            bool isLoading,
            CatalogSearchProductsRequest request,
            List<String> listProductsCode,
            bool isAuth,
            int offset,
            bool isButtonTop,
            List<SkuProductDataModel> listSize,
            bool isLoadGetSizeProduct,
            int userDiscount,
            int productsCount,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isShoppingCartDetailsProduct,
            DetailProductDataModel? detailsProduct,
            List<ProductDataModel>? favouritesProducts,
            bool? isLoadErrorButton,
            CatalogSearchInfoDataModel? searchResultInfo,
            int? indexProduct,
            ProductDataModel? favouriteProduct,
            bool? isShopGetSizeProduct,
            String? errorMessage,
            String? typeError,
            bool? isError,
            int? keyFilterCatalog,
            int? indexFileter,
            int? indexItemFileter,
            int? indexFilterCategory,
            FilterItemDataModel? itemFileter)?
        searchProductsResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function()? openSoppingCart,
    TResult Function(
            String code,
            List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart,
            String titleScreen,
            String query)?
        getSizeProduct,
    TResult Function(String errorMessage)? error,
    TResult Function(String code, String titleScreen, String query)?
        addProductToSoppingCart,
    TResult Function(
            List<ProductDataModel> searchDefaultProducts,
            List<ProductDataModel> searchProducts,
            List<ProductDataModel> products,
            List<CatalogSectionDataModel> searchSections,
            List<FilterInfoDataModel> filter,
            Map<int, List<FilterItemDataModel>> selectFilter,
            List<Map<int, FilterItemDataModel>> allSelectFilter,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            List<int> favouritesProductsId,
            String query,
            bool isLoading,
            CatalogSearchProductsRequest request,
            List<String> listProductsCode,
            bool isAuth,
            int offset,
            bool isButtonTop,
            List<SkuProductDataModel> listSize,
            bool isLoadGetSizeProduct,
            int userDiscount,
            int productsCount,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isShoppingCartDetailsProduct,
            DetailProductDataModel? detailsProduct,
            List<ProductDataModel>? favouritesProducts,
            bool? isLoadErrorButton,
            CatalogSearchInfoDataModel? searchResultInfo,
            int? indexProduct,
            ProductDataModel? favouriteProduct,
            bool? isShopGetSizeProduct,
            String? errorMessage,
            String? typeError,
            bool? isError,
            int? keyFilterCatalog,
            int? indexFileter,
            int? indexItemFileter,
            int? indexFilterCategory,
            FilterItemDataModel? itemFileter)?
        searchProductsResult,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitSearchState value) init,
    required TResult Function(LoadingSearchState value) load,
    required TResult Function(OpenSoppingCartSearchState value) openSoppingCart,
    required TResult Function(GetSizeProductSearchState value) getSizeProduct,
    required TResult Function(ErrorSearchState value) error,
    required TResult Function(AddProductSearchState value)
        addProductToSoppingCart,
    required TResult Function(SearchProductsResultSearchState value)
        searchProductsResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitSearchState value)? init,
    TResult? Function(LoadingSearchState value)? load,
    TResult? Function(OpenSoppingCartSearchState value)? openSoppingCart,
    TResult? Function(GetSizeProductSearchState value)? getSizeProduct,
    TResult? Function(ErrorSearchState value)? error,
    TResult? Function(AddProductSearchState value)? addProductToSoppingCart,
    TResult? Function(SearchProductsResultSearchState value)?
        searchProductsResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitSearchState value)? init,
    TResult Function(LoadingSearchState value)? load,
    TResult Function(OpenSoppingCartSearchState value)? openSoppingCart,
    TResult Function(GetSizeProductSearchState value)? getSizeProduct,
    TResult Function(ErrorSearchState value)? error,
    TResult Function(AddProductSearchState value)? addProductToSoppingCart,
    TResult Function(SearchProductsResultSearchState value)?
        searchProductsResult,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitSearchStateImplCopyWith<$Res> {
  factory _$$InitSearchStateImplCopyWith(_$InitSearchStateImpl value,
          $Res Function(_$InitSearchStateImpl) then) =
      __$$InitSearchStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitSearchStateImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$InitSearchStateImpl>
    implements _$$InitSearchStateImplCopyWith<$Res> {
  __$$InitSearchStateImplCopyWithImpl(
      _$InitSearchStateImpl _value, $Res Function(_$InitSearchStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitSearchStateImpl implements InitSearchState {
  const _$InitSearchStateImpl();

  @override
  String toString() {
    return 'SearchState.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitSearchStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function() openSoppingCart,
    required TResult Function(
            String code,
            List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart,
            String titleScreen,
            String query)
        getSizeProduct,
    required TResult Function(String errorMessage) error,
    required TResult Function(String code, String titleScreen, String query)
        addProductToSoppingCart,
    required TResult Function(
            List<ProductDataModel> searchDefaultProducts,
            List<ProductDataModel> searchProducts,
            List<ProductDataModel> products,
            List<CatalogSectionDataModel> searchSections,
            List<FilterInfoDataModel> filter,
            Map<int, List<FilterItemDataModel>> selectFilter,
            List<Map<int, FilterItemDataModel>> allSelectFilter,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            List<int> favouritesProductsId,
            String query,
            bool isLoading,
            CatalogSearchProductsRequest request,
            List<String> listProductsCode,
            bool isAuth,
            int offset,
            bool isButtonTop,
            List<SkuProductDataModel> listSize,
            bool isLoadGetSizeProduct,
            int userDiscount,
            int productsCount,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isShoppingCartDetailsProduct,
            DetailProductDataModel? detailsProduct,
            List<ProductDataModel>? favouritesProducts,
            bool? isLoadErrorButton,
            CatalogSearchInfoDataModel? searchResultInfo,
            int? indexProduct,
            ProductDataModel? favouriteProduct,
            bool? isShopGetSizeProduct,
            String? errorMessage,
            String? typeError,
            bool? isError,
            int? keyFilterCatalog,
            int? indexFileter,
            int? indexItemFileter,
            int? indexFilterCategory,
            FilterItemDataModel? itemFileter)
        searchProductsResult,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function()? openSoppingCart,
    TResult? Function(
            String code,
            List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart,
            String titleScreen,
            String query)?
        getSizeProduct,
    TResult? Function(String errorMessage)? error,
    TResult? Function(String code, String titleScreen, String query)?
        addProductToSoppingCart,
    TResult? Function(
            List<ProductDataModel> searchDefaultProducts,
            List<ProductDataModel> searchProducts,
            List<ProductDataModel> products,
            List<CatalogSectionDataModel> searchSections,
            List<FilterInfoDataModel> filter,
            Map<int, List<FilterItemDataModel>> selectFilter,
            List<Map<int, FilterItemDataModel>> allSelectFilter,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            List<int> favouritesProductsId,
            String query,
            bool isLoading,
            CatalogSearchProductsRequest request,
            List<String> listProductsCode,
            bool isAuth,
            int offset,
            bool isButtonTop,
            List<SkuProductDataModel> listSize,
            bool isLoadGetSizeProduct,
            int userDiscount,
            int productsCount,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isShoppingCartDetailsProduct,
            DetailProductDataModel? detailsProduct,
            List<ProductDataModel>? favouritesProducts,
            bool? isLoadErrorButton,
            CatalogSearchInfoDataModel? searchResultInfo,
            int? indexProduct,
            ProductDataModel? favouriteProduct,
            bool? isShopGetSizeProduct,
            String? errorMessage,
            String? typeError,
            bool? isError,
            int? keyFilterCatalog,
            int? indexFileter,
            int? indexItemFileter,
            int? indexFilterCategory,
            FilterItemDataModel? itemFileter)?
        searchProductsResult,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function()? openSoppingCart,
    TResult Function(
            String code,
            List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart,
            String titleScreen,
            String query)?
        getSizeProduct,
    TResult Function(String errorMessage)? error,
    TResult Function(String code, String titleScreen, String query)?
        addProductToSoppingCart,
    TResult Function(
            List<ProductDataModel> searchDefaultProducts,
            List<ProductDataModel> searchProducts,
            List<ProductDataModel> products,
            List<CatalogSectionDataModel> searchSections,
            List<FilterInfoDataModel> filter,
            Map<int, List<FilterItemDataModel>> selectFilter,
            List<Map<int, FilterItemDataModel>> allSelectFilter,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            List<int> favouritesProductsId,
            String query,
            bool isLoading,
            CatalogSearchProductsRequest request,
            List<String> listProductsCode,
            bool isAuth,
            int offset,
            bool isButtonTop,
            List<SkuProductDataModel> listSize,
            bool isLoadGetSizeProduct,
            int userDiscount,
            int productsCount,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isShoppingCartDetailsProduct,
            DetailProductDataModel? detailsProduct,
            List<ProductDataModel>? favouritesProducts,
            bool? isLoadErrorButton,
            CatalogSearchInfoDataModel? searchResultInfo,
            int? indexProduct,
            ProductDataModel? favouriteProduct,
            bool? isShopGetSizeProduct,
            String? errorMessage,
            String? typeError,
            bool? isError,
            int? keyFilterCatalog,
            int? indexFileter,
            int? indexItemFileter,
            int? indexFilterCategory,
            FilterItemDataModel? itemFileter)?
        searchProductsResult,
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
    required TResult Function(InitSearchState value) init,
    required TResult Function(LoadingSearchState value) load,
    required TResult Function(OpenSoppingCartSearchState value) openSoppingCart,
    required TResult Function(GetSizeProductSearchState value) getSizeProduct,
    required TResult Function(ErrorSearchState value) error,
    required TResult Function(AddProductSearchState value)
        addProductToSoppingCart,
    required TResult Function(SearchProductsResultSearchState value)
        searchProductsResult,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitSearchState value)? init,
    TResult? Function(LoadingSearchState value)? load,
    TResult? Function(OpenSoppingCartSearchState value)? openSoppingCart,
    TResult? Function(GetSizeProductSearchState value)? getSizeProduct,
    TResult? Function(ErrorSearchState value)? error,
    TResult? Function(AddProductSearchState value)? addProductToSoppingCart,
    TResult? Function(SearchProductsResultSearchState value)?
        searchProductsResult,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitSearchState value)? init,
    TResult Function(LoadingSearchState value)? load,
    TResult Function(OpenSoppingCartSearchState value)? openSoppingCart,
    TResult Function(GetSizeProductSearchState value)? getSizeProduct,
    TResult Function(ErrorSearchState value)? error,
    TResult Function(AddProductSearchState value)? addProductToSoppingCart,
    TResult Function(SearchProductsResultSearchState value)?
        searchProductsResult,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitSearchState implements SearchState {
  const factory InitSearchState() = _$InitSearchStateImpl;
}

/// @nodoc
abstract class _$$LoadingSearchStateImplCopyWith<$Res> {
  factory _$$LoadingSearchStateImplCopyWith(_$LoadingSearchStateImpl value,
          $Res Function(_$LoadingSearchStateImpl) then) =
      __$$LoadingSearchStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingSearchStateImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$LoadingSearchStateImpl>
    implements _$$LoadingSearchStateImplCopyWith<$Res> {
  __$$LoadingSearchStateImplCopyWithImpl(_$LoadingSearchStateImpl _value,
      $Res Function(_$LoadingSearchStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingSearchStateImpl implements LoadingSearchState {
  const _$LoadingSearchStateImpl();

  @override
  String toString() {
    return 'SearchState.load()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingSearchStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function() openSoppingCart,
    required TResult Function(
            String code,
            List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart,
            String titleScreen,
            String query)
        getSizeProduct,
    required TResult Function(String errorMessage) error,
    required TResult Function(String code, String titleScreen, String query)
        addProductToSoppingCart,
    required TResult Function(
            List<ProductDataModel> searchDefaultProducts,
            List<ProductDataModel> searchProducts,
            List<ProductDataModel> products,
            List<CatalogSectionDataModel> searchSections,
            List<FilterInfoDataModel> filter,
            Map<int, List<FilterItemDataModel>> selectFilter,
            List<Map<int, FilterItemDataModel>> allSelectFilter,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            List<int> favouritesProductsId,
            String query,
            bool isLoading,
            CatalogSearchProductsRequest request,
            List<String> listProductsCode,
            bool isAuth,
            int offset,
            bool isButtonTop,
            List<SkuProductDataModel> listSize,
            bool isLoadGetSizeProduct,
            int userDiscount,
            int productsCount,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isShoppingCartDetailsProduct,
            DetailProductDataModel? detailsProduct,
            List<ProductDataModel>? favouritesProducts,
            bool? isLoadErrorButton,
            CatalogSearchInfoDataModel? searchResultInfo,
            int? indexProduct,
            ProductDataModel? favouriteProduct,
            bool? isShopGetSizeProduct,
            String? errorMessage,
            String? typeError,
            bool? isError,
            int? keyFilterCatalog,
            int? indexFileter,
            int? indexItemFileter,
            int? indexFilterCategory,
            FilterItemDataModel? itemFileter)
        searchProductsResult,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function()? openSoppingCart,
    TResult? Function(
            String code,
            List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart,
            String titleScreen,
            String query)?
        getSizeProduct,
    TResult? Function(String errorMessage)? error,
    TResult? Function(String code, String titleScreen, String query)?
        addProductToSoppingCart,
    TResult? Function(
            List<ProductDataModel> searchDefaultProducts,
            List<ProductDataModel> searchProducts,
            List<ProductDataModel> products,
            List<CatalogSectionDataModel> searchSections,
            List<FilterInfoDataModel> filter,
            Map<int, List<FilterItemDataModel>> selectFilter,
            List<Map<int, FilterItemDataModel>> allSelectFilter,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            List<int> favouritesProductsId,
            String query,
            bool isLoading,
            CatalogSearchProductsRequest request,
            List<String> listProductsCode,
            bool isAuth,
            int offset,
            bool isButtonTop,
            List<SkuProductDataModel> listSize,
            bool isLoadGetSizeProduct,
            int userDiscount,
            int productsCount,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isShoppingCartDetailsProduct,
            DetailProductDataModel? detailsProduct,
            List<ProductDataModel>? favouritesProducts,
            bool? isLoadErrorButton,
            CatalogSearchInfoDataModel? searchResultInfo,
            int? indexProduct,
            ProductDataModel? favouriteProduct,
            bool? isShopGetSizeProduct,
            String? errorMessage,
            String? typeError,
            bool? isError,
            int? keyFilterCatalog,
            int? indexFileter,
            int? indexItemFileter,
            int? indexFilterCategory,
            FilterItemDataModel? itemFileter)?
        searchProductsResult,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function()? openSoppingCart,
    TResult Function(
            String code,
            List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart,
            String titleScreen,
            String query)?
        getSizeProduct,
    TResult Function(String errorMessage)? error,
    TResult Function(String code, String titleScreen, String query)?
        addProductToSoppingCart,
    TResult Function(
            List<ProductDataModel> searchDefaultProducts,
            List<ProductDataModel> searchProducts,
            List<ProductDataModel> products,
            List<CatalogSectionDataModel> searchSections,
            List<FilterInfoDataModel> filter,
            Map<int, List<FilterItemDataModel>> selectFilter,
            List<Map<int, FilterItemDataModel>> allSelectFilter,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            List<int> favouritesProductsId,
            String query,
            bool isLoading,
            CatalogSearchProductsRequest request,
            List<String> listProductsCode,
            bool isAuth,
            int offset,
            bool isButtonTop,
            List<SkuProductDataModel> listSize,
            bool isLoadGetSizeProduct,
            int userDiscount,
            int productsCount,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isShoppingCartDetailsProduct,
            DetailProductDataModel? detailsProduct,
            List<ProductDataModel>? favouritesProducts,
            bool? isLoadErrorButton,
            CatalogSearchInfoDataModel? searchResultInfo,
            int? indexProduct,
            ProductDataModel? favouriteProduct,
            bool? isShopGetSizeProduct,
            String? errorMessage,
            String? typeError,
            bool? isError,
            int? keyFilterCatalog,
            int? indexFileter,
            int? indexItemFileter,
            int? indexFilterCategory,
            FilterItemDataModel? itemFileter)?
        searchProductsResult,
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
    required TResult Function(InitSearchState value) init,
    required TResult Function(LoadingSearchState value) load,
    required TResult Function(OpenSoppingCartSearchState value) openSoppingCart,
    required TResult Function(GetSizeProductSearchState value) getSizeProduct,
    required TResult Function(ErrorSearchState value) error,
    required TResult Function(AddProductSearchState value)
        addProductToSoppingCart,
    required TResult Function(SearchProductsResultSearchState value)
        searchProductsResult,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitSearchState value)? init,
    TResult? Function(LoadingSearchState value)? load,
    TResult? Function(OpenSoppingCartSearchState value)? openSoppingCart,
    TResult? Function(GetSizeProductSearchState value)? getSizeProduct,
    TResult? Function(ErrorSearchState value)? error,
    TResult? Function(AddProductSearchState value)? addProductToSoppingCart,
    TResult? Function(SearchProductsResultSearchState value)?
        searchProductsResult,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitSearchState value)? init,
    TResult Function(LoadingSearchState value)? load,
    TResult Function(OpenSoppingCartSearchState value)? openSoppingCart,
    TResult Function(GetSizeProductSearchState value)? getSizeProduct,
    TResult Function(ErrorSearchState value)? error,
    TResult Function(AddProductSearchState value)? addProductToSoppingCart,
    TResult Function(SearchProductsResultSearchState value)?
        searchProductsResult,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LoadingSearchState implements SearchState {
  const factory LoadingSearchState() = _$LoadingSearchStateImpl;
}

/// @nodoc
abstract class _$$OpenSoppingCartSearchStateImplCopyWith<$Res> {
  factory _$$OpenSoppingCartSearchStateImplCopyWith(
          _$OpenSoppingCartSearchStateImpl value,
          $Res Function(_$OpenSoppingCartSearchStateImpl) then) =
      __$$OpenSoppingCartSearchStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OpenSoppingCartSearchStateImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$OpenSoppingCartSearchStateImpl>
    implements _$$OpenSoppingCartSearchStateImplCopyWith<$Res> {
  __$$OpenSoppingCartSearchStateImplCopyWithImpl(
      _$OpenSoppingCartSearchStateImpl _value,
      $Res Function(_$OpenSoppingCartSearchStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OpenSoppingCartSearchStateImpl implements OpenSoppingCartSearchState {
  const _$OpenSoppingCartSearchStateImpl();

  @override
  String toString() {
    return 'SearchState.openSoppingCart()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenSoppingCartSearchStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function() openSoppingCart,
    required TResult Function(
            String code,
            List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart,
            String titleScreen,
            String query)
        getSizeProduct,
    required TResult Function(String errorMessage) error,
    required TResult Function(String code, String titleScreen, String query)
        addProductToSoppingCart,
    required TResult Function(
            List<ProductDataModel> searchDefaultProducts,
            List<ProductDataModel> searchProducts,
            List<ProductDataModel> products,
            List<CatalogSectionDataModel> searchSections,
            List<FilterInfoDataModel> filter,
            Map<int, List<FilterItemDataModel>> selectFilter,
            List<Map<int, FilterItemDataModel>> allSelectFilter,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            List<int> favouritesProductsId,
            String query,
            bool isLoading,
            CatalogSearchProductsRequest request,
            List<String> listProductsCode,
            bool isAuth,
            int offset,
            bool isButtonTop,
            List<SkuProductDataModel> listSize,
            bool isLoadGetSizeProduct,
            int userDiscount,
            int productsCount,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isShoppingCartDetailsProduct,
            DetailProductDataModel? detailsProduct,
            List<ProductDataModel>? favouritesProducts,
            bool? isLoadErrorButton,
            CatalogSearchInfoDataModel? searchResultInfo,
            int? indexProduct,
            ProductDataModel? favouriteProduct,
            bool? isShopGetSizeProduct,
            String? errorMessage,
            String? typeError,
            bool? isError,
            int? keyFilterCatalog,
            int? indexFileter,
            int? indexItemFileter,
            int? indexFilterCategory,
            FilterItemDataModel? itemFileter)
        searchProductsResult,
  }) {
    return openSoppingCart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function()? openSoppingCart,
    TResult? Function(
            String code,
            List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart,
            String titleScreen,
            String query)?
        getSizeProduct,
    TResult? Function(String errorMessage)? error,
    TResult? Function(String code, String titleScreen, String query)?
        addProductToSoppingCart,
    TResult? Function(
            List<ProductDataModel> searchDefaultProducts,
            List<ProductDataModel> searchProducts,
            List<ProductDataModel> products,
            List<CatalogSectionDataModel> searchSections,
            List<FilterInfoDataModel> filter,
            Map<int, List<FilterItemDataModel>> selectFilter,
            List<Map<int, FilterItemDataModel>> allSelectFilter,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            List<int> favouritesProductsId,
            String query,
            bool isLoading,
            CatalogSearchProductsRequest request,
            List<String> listProductsCode,
            bool isAuth,
            int offset,
            bool isButtonTop,
            List<SkuProductDataModel> listSize,
            bool isLoadGetSizeProduct,
            int userDiscount,
            int productsCount,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isShoppingCartDetailsProduct,
            DetailProductDataModel? detailsProduct,
            List<ProductDataModel>? favouritesProducts,
            bool? isLoadErrorButton,
            CatalogSearchInfoDataModel? searchResultInfo,
            int? indexProduct,
            ProductDataModel? favouriteProduct,
            bool? isShopGetSizeProduct,
            String? errorMessage,
            String? typeError,
            bool? isError,
            int? keyFilterCatalog,
            int? indexFileter,
            int? indexItemFileter,
            int? indexFilterCategory,
            FilterItemDataModel? itemFileter)?
        searchProductsResult,
  }) {
    return openSoppingCart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function()? openSoppingCart,
    TResult Function(
            String code,
            List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart,
            String titleScreen,
            String query)?
        getSizeProduct,
    TResult Function(String errorMessage)? error,
    TResult Function(String code, String titleScreen, String query)?
        addProductToSoppingCart,
    TResult Function(
            List<ProductDataModel> searchDefaultProducts,
            List<ProductDataModel> searchProducts,
            List<ProductDataModel> products,
            List<CatalogSectionDataModel> searchSections,
            List<FilterInfoDataModel> filter,
            Map<int, List<FilterItemDataModel>> selectFilter,
            List<Map<int, FilterItemDataModel>> allSelectFilter,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            List<int> favouritesProductsId,
            String query,
            bool isLoading,
            CatalogSearchProductsRequest request,
            List<String> listProductsCode,
            bool isAuth,
            int offset,
            bool isButtonTop,
            List<SkuProductDataModel> listSize,
            bool isLoadGetSizeProduct,
            int userDiscount,
            int productsCount,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isShoppingCartDetailsProduct,
            DetailProductDataModel? detailsProduct,
            List<ProductDataModel>? favouritesProducts,
            bool? isLoadErrorButton,
            CatalogSearchInfoDataModel? searchResultInfo,
            int? indexProduct,
            ProductDataModel? favouriteProduct,
            bool? isShopGetSizeProduct,
            String? errorMessage,
            String? typeError,
            bool? isError,
            int? keyFilterCatalog,
            int? indexFileter,
            int? indexItemFileter,
            int? indexFilterCategory,
            FilterItemDataModel? itemFileter)?
        searchProductsResult,
    required TResult orElse(),
  }) {
    if (openSoppingCart != null) {
      return openSoppingCart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitSearchState value) init,
    required TResult Function(LoadingSearchState value) load,
    required TResult Function(OpenSoppingCartSearchState value) openSoppingCart,
    required TResult Function(GetSizeProductSearchState value) getSizeProduct,
    required TResult Function(ErrorSearchState value) error,
    required TResult Function(AddProductSearchState value)
        addProductToSoppingCart,
    required TResult Function(SearchProductsResultSearchState value)
        searchProductsResult,
  }) {
    return openSoppingCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitSearchState value)? init,
    TResult? Function(LoadingSearchState value)? load,
    TResult? Function(OpenSoppingCartSearchState value)? openSoppingCart,
    TResult? Function(GetSizeProductSearchState value)? getSizeProduct,
    TResult? Function(ErrorSearchState value)? error,
    TResult? Function(AddProductSearchState value)? addProductToSoppingCart,
    TResult? Function(SearchProductsResultSearchState value)?
        searchProductsResult,
  }) {
    return openSoppingCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitSearchState value)? init,
    TResult Function(LoadingSearchState value)? load,
    TResult Function(OpenSoppingCartSearchState value)? openSoppingCart,
    TResult Function(GetSizeProductSearchState value)? getSizeProduct,
    TResult Function(ErrorSearchState value)? error,
    TResult Function(AddProductSearchState value)? addProductToSoppingCart,
    TResult Function(SearchProductsResultSearchState value)?
        searchProductsResult,
    required TResult orElse(),
  }) {
    if (openSoppingCart != null) {
      return openSoppingCart(this);
    }
    return orElse();
  }
}

abstract class OpenSoppingCartSearchState implements SearchState {
  const factory OpenSoppingCartSearchState() = _$OpenSoppingCartSearchStateImpl;
}

/// @nodoc
abstract class _$$GetSizeProductSearchStateImplCopyWith<$Res> {
  factory _$$GetSizeProductSearchStateImplCopyWith(
          _$GetSizeProductSearchStateImpl value,
          $Res Function(_$GetSizeProductSearchStateImpl) then) =
      __$$GetSizeProductSearchStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String code,
      List<SkuProductDataModel> listSize,
      List<SkuProductDataModel> listSizeToSoppingCart,
      String titleScreen,
      String query});
}

/// @nodoc
class __$$GetSizeProductSearchStateImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$GetSizeProductSearchStateImpl>
    implements _$$GetSizeProductSearchStateImplCopyWith<$Res> {
  __$$GetSizeProductSearchStateImplCopyWithImpl(
      _$GetSizeProductSearchStateImpl _value,
      $Res Function(_$GetSizeProductSearchStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? listSize = null,
    Object? listSizeToSoppingCart = null,
    Object? titleScreen = null,
    Object? query = null,
  }) {
    return _then(_$GetSizeProductSearchStateImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      listSize: null == listSize
          ? _value._listSize
          : listSize // ignore: cast_nullable_to_non_nullable
              as List<SkuProductDataModel>,
      listSizeToSoppingCart: null == listSizeToSoppingCart
          ? _value._listSizeToSoppingCart
          : listSizeToSoppingCart // ignore: cast_nullable_to_non_nullable
              as List<SkuProductDataModel>,
      titleScreen: null == titleScreen
          ? _value.titleScreen
          : titleScreen // ignore: cast_nullable_to_non_nullable
              as String,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetSizeProductSearchStateImpl implements GetSizeProductSearchState {
  const _$GetSizeProductSearchStateImpl(
      {required this.code,
      required final List<SkuProductDataModel> listSize,
      required final List<SkuProductDataModel> listSizeToSoppingCart,
      required this.titleScreen,
      required this.query})
      : _listSize = listSize,
        _listSizeToSoppingCart = listSizeToSoppingCart;

  @override
  final String code;
  final List<SkuProductDataModel> _listSize;
  @override
  List<SkuProductDataModel> get listSize {
    if (_listSize is EqualUnmodifiableListView) return _listSize;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listSize);
  }

  final List<SkuProductDataModel> _listSizeToSoppingCart;
  @override
  List<SkuProductDataModel> get listSizeToSoppingCart {
    if (_listSizeToSoppingCart is EqualUnmodifiableListView)
      return _listSizeToSoppingCart;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listSizeToSoppingCart);
  }

  @override
  final String titleScreen;
  @override
  final String query;

  @override
  String toString() {
    return 'SearchState.getSizeProduct(code: $code, listSize: $listSize, listSizeToSoppingCart: $listSizeToSoppingCart, titleScreen: $titleScreen, query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSizeProductSearchStateImpl &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality().equals(other._listSize, _listSize) &&
            const DeepCollectionEquality()
                .equals(other._listSizeToSoppingCart, _listSizeToSoppingCart) &&
            (identical(other.titleScreen, titleScreen) ||
                other.titleScreen == titleScreen) &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      code,
      const DeepCollectionEquality().hash(_listSize),
      const DeepCollectionEquality().hash(_listSizeToSoppingCart),
      titleScreen,
      query);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSizeProductSearchStateImplCopyWith<_$GetSizeProductSearchStateImpl>
      get copyWith => __$$GetSizeProductSearchStateImplCopyWithImpl<
          _$GetSizeProductSearchStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function() openSoppingCart,
    required TResult Function(
            String code,
            List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart,
            String titleScreen,
            String query)
        getSizeProduct,
    required TResult Function(String errorMessage) error,
    required TResult Function(String code, String titleScreen, String query)
        addProductToSoppingCart,
    required TResult Function(
            List<ProductDataModel> searchDefaultProducts,
            List<ProductDataModel> searchProducts,
            List<ProductDataModel> products,
            List<CatalogSectionDataModel> searchSections,
            List<FilterInfoDataModel> filter,
            Map<int, List<FilterItemDataModel>> selectFilter,
            List<Map<int, FilterItemDataModel>> allSelectFilter,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            List<int> favouritesProductsId,
            String query,
            bool isLoading,
            CatalogSearchProductsRequest request,
            List<String> listProductsCode,
            bool isAuth,
            int offset,
            bool isButtonTop,
            List<SkuProductDataModel> listSize,
            bool isLoadGetSizeProduct,
            int userDiscount,
            int productsCount,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isShoppingCartDetailsProduct,
            DetailProductDataModel? detailsProduct,
            List<ProductDataModel>? favouritesProducts,
            bool? isLoadErrorButton,
            CatalogSearchInfoDataModel? searchResultInfo,
            int? indexProduct,
            ProductDataModel? favouriteProduct,
            bool? isShopGetSizeProduct,
            String? errorMessage,
            String? typeError,
            bool? isError,
            int? keyFilterCatalog,
            int? indexFileter,
            int? indexItemFileter,
            int? indexFilterCategory,
            FilterItemDataModel? itemFileter)
        searchProductsResult,
  }) {
    return getSizeProduct(
        code, listSize, listSizeToSoppingCart, titleScreen, query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function()? openSoppingCart,
    TResult? Function(
            String code,
            List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart,
            String titleScreen,
            String query)?
        getSizeProduct,
    TResult? Function(String errorMessage)? error,
    TResult? Function(String code, String titleScreen, String query)?
        addProductToSoppingCart,
    TResult? Function(
            List<ProductDataModel> searchDefaultProducts,
            List<ProductDataModel> searchProducts,
            List<ProductDataModel> products,
            List<CatalogSectionDataModel> searchSections,
            List<FilterInfoDataModel> filter,
            Map<int, List<FilterItemDataModel>> selectFilter,
            List<Map<int, FilterItemDataModel>> allSelectFilter,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            List<int> favouritesProductsId,
            String query,
            bool isLoading,
            CatalogSearchProductsRequest request,
            List<String> listProductsCode,
            bool isAuth,
            int offset,
            bool isButtonTop,
            List<SkuProductDataModel> listSize,
            bool isLoadGetSizeProduct,
            int userDiscount,
            int productsCount,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isShoppingCartDetailsProduct,
            DetailProductDataModel? detailsProduct,
            List<ProductDataModel>? favouritesProducts,
            bool? isLoadErrorButton,
            CatalogSearchInfoDataModel? searchResultInfo,
            int? indexProduct,
            ProductDataModel? favouriteProduct,
            bool? isShopGetSizeProduct,
            String? errorMessage,
            String? typeError,
            bool? isError,
            int? keyFilterCatalog,
            int? indexFileter,
            int? indexItemFileter,
            int? indexFilterCategory,
            FilterItemDataModel? itemFileter)?
        searchProductsResult,
  }) {
    return getSizeProduct?.call(
        code, listSize, listSizeToSoppingCart, titleScreen, query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function()? openSoppingCart,
    TResult Function(
            String code,
            List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart,
            String titleScreen,
            String query)?
        getSizeProduct,
    TResult Function(String errorMessage)? error,
    TResult Function(String code, String titleScreen, String query)?
        addProductToSoppingCart,
    TResult Function(
            List<ProductDataModel> searchDefaultProducts,
            List<ProductDataModel> searchProducts,
            List<ProductDataModel> products,
            List<CatalogSectionDataModel> searchSections,
            List<FilterInfoDataModel> filter,
            Map<int, List<FilterItemDataModel>> selectFilter,
            List<Map<int, FilterItemDataModel>> allSelectFilter,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            List<int> favouritesProductsId,
            String query,
            bool isLoading,
            CatalogSearchProductsRequest request,
            List<String> listProductsCode,
            bool isAuth,
            int offset,
            bool isButtonTop,
            List<SkuProductDataModel> listSize,
            bool isLoadGetSizeProduct,
            int userDiscount,
            int productsCount,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isShoppingCartDetailsProduct,
            DetailProductDataModel? detailsProduct,
            List<ProductDataModel>? favouritesProducts,
            bool? isLoadErrorButton,
            CatalogSearchInfoDataModel? searchResultInfo,
            int? indexProduct,
            ProductDataModel? favouriteProduct,
            bool? isShopGetSizeProduct,
            String? errorMessage,
            String? typeError,
            bool? isError,
            int? keyFilterCatalog,
            int? indexFileter,
            int? indexItemFileter,
            int? indexFilterCategory,
            FilterItemDataModel? itemFileter)?
        searchProductsResult,
    required TResult orElse(),
  }) {
    if (getSizeProduct != null) {
      return getSizeProduct(
          code, listSize, listSizeToSoppingCart, titleScreen, query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitSearchState value) init,
    required TResult Function(LoadingSearchState value) load,
    required TResult Function(OpenSoppingCartSearchState value) openSoppingCart,
    required TResult Function(GetSizeProductSearchState value) getSizeProduct,
    required TResult Function(ErrorSearchState value) error,
    required TResult Function(AddProductSearchState value)
        addProductToSoppingCart,
    required TResult Function(SearchProductsResultSearchState value)
        searchProductsResult,
  }) {
    return getSizeProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitSearchState value)? init,
    TResult? Function(LoadingSearchState value)? load,
    TResult? Function(OpenSoppingCartSearchState value)? openSoppingCart,
    TResult? Function(GetSizeProductSearchState value)? getSizeProduct,
    TResult? Function(ErrorSearchState value)? error,
    TResult? Function(AddProductSearchState value)? addProductToSoppingCart,
    TResult? Function(SearchProductsResultSearchState value)?
        searchProductsResult,
  }) {
    return getSizeProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitSearchState value)? init,
    TResult Function(LoadingSearchState value)? load,
    TResult Function(OpenSoppingCartSearchState value)? openSoppingCart,
    TResult Function(GetSizeProductSearchState value)? getSizeProduct,
    TResult Function(ErrorSearchState value)? error,
    TResult Function(AddProductSearchState value)? addProductToSoppingCart,
    TResult Function(SearchProductsResultSearchState value)?
        searchProductsResult,
    required TResult orElse(),
  }) {
    if (getSizeProduct != null) {
      return getSizeProduct(this);
    }
    return orElse();
  }
}

abstract class GetSizeProductSearchState implements SearchState {
  const factory GetSizeProductSearchState(
      {required final String code,
      required final List<SkuProductDataModel> listSize,
      required final List<SkuProductDataModel> listSizeToSoppingCart,
      required final String titleScreen,
      required final String query}) = _$GetSizeProductSearchStateImpl;

  String get code;
  List<SkuProductDataModel> get listSize;
  List<SkuProductDataModel> get listSizeToSoppingCart;
  String get titleScreen;
  String get query;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetSizeProductSearchStateImplCopyWith<_$GetSizeProductSearchStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorSearchStateImplCopyWith<$Res> {
  factory _$$ErrorSearchStateImplCopyWith(_$ErrorSearchStateImpl value,
          $Res Function(_$ErrorSearchStateImpl) then) =
      __$$ErrorSearchStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$ErrorSearchStateImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$ErrorSearchStateImpl>
    implements _$$ErrorSearchStateImplCopyWith<$Res> {
  __$$ErrorSearchStateImplCopyWithImpl(_$ErrorSearchStateImpl _value,
      $Res Function(_$ErrorSearchStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$ErrorSearchStateImpl(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorSearchStateImpl implements ErrorSearchState {
  const _$ErrorSearchStateImpl({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'SearchState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorSearchStateImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorSearchStateImplCopyWith<_$ErrorSearchStateImpl> get copyWith =>
      __$$ErrorSearchStateImplCopyWithImpl<_$ErrorSearchStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function() openSoppingCart,
    required TResult Function(
            String code,
            List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart,
            String titleScreen,
            String query)
        getSizeProduct,
    required TResult Function(String errorMessage) error,
    required TResult Function(String code, String titleScreen, String query)
        addProductToSoppingCart,
    required TResult Function(
            List<ProductDataModel> searchDefaultProducts,
            List<ProductDataModel> searchProducts,
            List<ProductDataModel> products,
            List<CatalogSectionDataModel> searchSections,
            List<FilterInfoDataModel> filter,
            Map<int, List<FilterItemDataModel>> selectFilter,
            List<Map<int, FilterItemDataModel>> allSelectFilter,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            List<int> favouritesProductsId,
            String query,
            bool isLoading,
            CatalogSearchProductsRequest request,
            List<String> listProductsCode,
            bool isAuth,
            int offset,
            bool isButtonTop,
            List<SkuProductDataModel> listSize,
            bool isLoadGetSizeProduct,
            int userDiscount,
            int productsCount,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isShoppingCartDetailsProduct,
            DetailProductDataModel? detailsProduct,
            List<ProductDataModel>? favouritesProducts,
            bool? isLoadErrorButton,
            CatalogSearchInfoDataModel? searchResultInfo,
            int? indexProduct,
            ProductDataModel? favouriteProduct,
            bool? isShopGetSizeProduct,
            String? errorMessage,
            String? typeError,
            bool? isError,
            int? keyFilterCatalog,
            int? indexFileter,
            int? indexItemFileter,
            int? indexFilterCategory,
            FilterItemDataModel? itemFileter)
        searchProductsResult,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function()? openSoppingCart,
    TResult? Function(
            String code,
            List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart,
            String titleScreen,
            String query)?
        getSizeProduct,
    TResult? Function(String errorMessage)? error,
    TResult? Function(String code, String titleScreen, String query)?
        addProductToSoppingCart,
    TResult? Function(
            List<ProductDataModel> searchDefaultProducts,
            List<ProductDataModel> searchProducts,
            List<ProductDataModel> products,
            List<CatalogSectionDataModel> searchSections,
            List<FilterInfoDataModel> filter,
            Map<int, List<FilterItemDataModel>> selectFilter,
            List<Map<int, FilterItemDataModel>> allSelectFilter,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            List<int> favouritesProductsId,
            String query,
            bool isLoading,
            CatalogSearchProductsRequest request,
            List<String> listProductsCode,
            bool isAuth,
            int offset,
            bool isButtonTop,
            List<SkuProductDataModel> listSize,
            bool isLoadGetSizeProduct,
            int userDiscount,
            int productsCount,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isShoppingCartDetailsProduct,
            DetailProductDataModel? detailsProduct,
            List<ProductDataModel>? favouritesProducts,
            bool? isLoadErrorButton,
            CatalogSearchInfoDataModel? searchResultInfo,
            int? indexProduct,
            ProductDataModel? favouriteProduct,
            bool? isShopGetSizeProduct,
            String? errorMessage,
            String? typeError,
            bool? isError,
            int? keyFilterCatalog,
            int? indexFileter,
            int? indexItemFileter,
            int? indexFilterCategory,
            FilterItemDataModel? itemFileter)?
        searchProductsResult,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function()? openSoppingCart,
    TResult Function(
            String code,
            List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart,
            String titleScreen,
            String query)?
        getSizeProduct,
    TResult Function(String errorMessage)? error,
    TResult Function(String code, String titleScreen, String query)?
        addProductToSoppingCart,
    TResult Function(
            List<ProductDataModel> searchDefaultProducts,
            List<ProductDataModel> searchProducts,
            List<ProductDataModel> products,
            List<CatalogSectionDataModel> searchSections,
            List<FilterInfoDataModel> filter,
            Map<int, List<FilterItemDataModel>> selectFilter,
            List<Map<int, FilterItemDataModel>> allSelectFilter,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            List<int> favouritesProductsId,
            String query,
            bool isLoading,
            CatalogSearchProductsRequest request,
            List<String> listProductsCode,
            bool isAuth,
            int offset,
            bool isButtonTop,
            List<SkuProductDataModel> listSize,
            bool isLoadGetSizeProduct,
            int userDiscount,
            int productsCount,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isShoppingCartDetailsProduct,
            DetailProductDataModel? detailsProduct,
            List<ProductDataModel>? favouritesProducts,
            bool? isLoadErrorButton,
            CatalogSearchInfoDataModel? searchResultInfo,
            int? indexProduct,
            ProductDataModel? favouriteProduct,
            bool? isShopGetSizeProduct,
            String? errorMessage,
            String? typeError,
            bool? isError,
            int? keyFilterCatalog,
            int? indexFileter,
            int? indexItemFileter,
            int? indexFilterCategory,
            FilterItemDataModel? itemFileter)?
        searchProductsResult,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitSearchState value) init,
    required TResult Function(LoadingSearchState value) load,
    required TResult Function(OpenSoppingCartSearchState value) openSoppingCart,
    required TResult Function(GetSizeProductSearchState value) getSizeProduct,
    required TResult Function(ErrorSearchState value) error,
    required TResult Function(AddProductSearchState value)
        addProductToSoppingCart,
    required TResult Function(SearchProductsResultSearchState value)
        searchProductsResult,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitSearchState value)? init,
    TResult? Function(LoadingSearchState value)? load,
    TResult? Function(OpenSoppingCartSearchState value)? openSoppingCart,
    TResult? Function(GetSizeProductSearchState value)? getSizeProduct,
    TResult? Function(ErrorSearchState value)? error,
    TResult? Function(AddProductSearchState value)? addProductToSoppingCart,
    TResult? Function(SearchProductsResultSearchState value)?
        searchProductsResult,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitSearchState value)? init,
    TResult Function(LoadingSearchState value)? load,
    TResult Function(OpenSoppingCartSearchState value)? openSoppingCart,
    TResult Function(GetSizeProductSearchState value)? getSizeProduct,
    TResult Function(ErrorSearchState value)? error,
    TResult Function(AddProductSearchState value)? addProductToSoppingCart,
    TResult Function(SearchProductsResultSearchState value)?
        searchProductsResult,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorSearchState implements SearchState {
  const factory ErrorSearchState({required final String errorMessage}) =
      _$ErrorSearchStateImpl;

  String get errorMessage;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorSearchStateImplCopyWith<_$ErrorSearchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddProductSearchStateImplCopyWith<$Res> {
  factory _$$AddProductSearchStateImplCopyWith(
          _$AddProductSearchStateImpl value,
          $Res Function(_$AddProductSearchStateImpl) then) =
      __$$AddProductSearchStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String code, String titleScreen, String query});
}

/// @nodoc
class __$$AddProductSearchStateImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$AddProductSearchStateImpl>
    implements _$$AddProductSearchStateImplCopyWith<$Res> {
  __$$AddProductSearchStateImplCopyWithImpl(_$AddProductSearchStateImpl _value,
      $Res Function(_$AddProductSearchStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? titleScreen = null,
    Object? query = null,
  }) {
    return _then(_$AddProductSearchStateImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      titleScreen: null == titleScreen
          ? _value.titleScreen
          : titleScreen // ignore: cast_nullable_to_non_nullable
              as String,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddProductSearchStateImpl implements AddProductSearchState {
  const _$AddProductSearchStateImpl(
      {required this.code, required this.titleScreen, required this.query});

  @override
  final String code;
  @override
  final String titleScreen;
  @override
  final String query;

  @override
  String toString() {
    return 'SearchState.addProductToSoppingCart(code: $code, titleScreen: $titleScreen, query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddProductSearchStateImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.titleScreen, titleScreen) ||
                other.titleScreen == titleScreen) &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, titleScreen, query);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddProductSearchStateImplCopyWith<_$AddProductSearchStateImpl>
      get copyWith => __$$AddProductSearchStateImplCopyWithImpl<
          _$AddProductSearchStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function() openSoppingCart,
    required TResult Function(
            String code,
            List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart,
            String titleScreen,
            String query)
        getSizeProduct,
    required TResult Function(String errorMessage) error,
    required TResult Function(String code, String titleScreen, String query)
        addProductToSoppingCart,
    required TResult Function(
            List<ProductDataModel> searchDefaultProducts,
            List<ProductDataModel> searchProducts,
            List<ProductDataModel> products,
            List<CatalogSectionDataModel> searchSections,
            List<FilterInfoDataModel> filter,
            Map<int, List<FilterItemDataModel>> selectFilter,
            List<Map<int, FilterItemDataModel>> allSelectFilter,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            List<int> favouritesProductsId,
            String query,
            bool isLoading,
            CatalogSearchProductsRequest request,
            List<String> listProductsCode,
            bool isAuth,
            int offset,
            bool isButtonTop,
            List<SkuProductDataModel> listSize,
            bool isLoadGetSizeProduct,
            int userDiscount,
            int productsCount,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isShoppingCartDetailsProduct,
            DetailProductDataModel? detailsProduct,
            List<ProductDataModel>? favouritesProducts,
            bool? isLoadErrorButton,
            CatalogSearchInfoDataModel? searchResultInfo,
            int? indexProduct,
            ProductDataModel? favouriteProduct,
            bool? isShopGetSizeProduct,
            String? errorMessage,
            String? typeError,
            bool? isError,
            int? keyFilterCatalog,
            int? indexFileter,
            int? indexItemFileter,
            int? indexFilterCategory,
            FilterItemDataModel? itemFileter)
        searchProductsResult,
  }) {
    return addProductToSoppingCart(code, titleScreen, query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function()? openSoppingCart,
    TResult? Function(
            String code,
            List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart,
            String titleScreen,
            String query)?
        getSizeProduct,
    TResult? Function(String errorMessage)? error,
    TResult? Function(String code, String titleScreen, String query)?
        addProductToSoppingCart,
    TResult? Function(
            List<ProductDataModel> searchDefaultProducts,
            List<ProductDataModel> searchProducts,
            List<ProductDataModel> products,
            List<CatalogSectionDataModel> searchSections,
            List<FilterInfoDataModel> filter,
            Map<int, List<FilterItemDataModel>> selectFilter,
            List<Map<int, FilterItemDataModel>> allSelectFilter,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            List<int> favouritesProductsId,
            String query,
            bool isLoading,
            CatalogSearchProductsRequest request,
            List<String> listProductsCode,
            bool isAuth,
            int offset,
            bool isButtonTop,
            List<SkuProductDataModel> listSize,
            bool isLoadGetSizeProduct,
            int userDiscount,
            int productsCount,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isShoppingCartDetailsProduct,
            DetailProductDataModel? detailsProduct,
            List<ProductDataModel>? favouritesProducts,
            bool? isLoadErrorButton,
            CatalogSearchInfoDataModel? searchResultInfo,
            int? indexProduct,
            ProductDataModel? favouriteProduct,
            bool? isShopGetSizeProduct,
            String? errorMessage,
            String? typeError,
            bool? isError,
            int? keyFilterCatalog,
            int? indexFileter,
            int? indexItemFileter,
            int? indexFilterCategory,
            FilterItemDataModel? itemFileter)?
        searchProductsResult,
  }) {
    return addProductToSoppingCart?.call(code, titleScreen, query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function()? openSoppingCart,
    TResult Function(
            String code,
            List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart,
            String titleScreen,
            String query)?
        getSizeProduct,
    TResult Function(String errorMessage)? error,
    TResult Function(String code, String titleScreen, String query)?
        addProductToSoppingCart,
    TResult Function(
            List<ProductDataModel> searchDefaultProducts,
            List<ProductDataModel> searchProducts,
            List<ProductDataModel> products,
            List<CatalogSectionDataModel> searchSections,
            List<FilterInfoDataModel> filter,
            Map<int, List<FilterItemDataModel>> selectFilter,
            List<Map<int, FilterItemDataModel>> allSelectFilter,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            List<int> favouritesProductsId,
            String query,
            bool isLoading,
            CatalogSearchProductsRequest request,
            List<String> listProductsCode,
            bool isAuth,
            int offset,
            bool isButtonTop,
            List<SkuProductDataModel> listSize,
            bool isLoadGetSizeProduct,
            int userDiscount,
            int productsCount,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isShoppingCartDetailsProduct,
            DetailProductDataModel? detailsProduct,
            List<ProductDataModel>? favouritesProducts,
            bool? isLoadErrorButton,
            CatalogSearchInfoDataModel? searchResultInfo,
            int? indexProduct,
            ProductDataModel? favouriteProduct,
            bool? isShopGetSizeProduct,
            String? errorMessage,
            String? typeError,
            bool? isError,
            int? keyFilterCatalog,
            int? indexFileter,
            int? indexItemFileter,
            int? indexFilterCategory,
            FilterItemDataModel? itemFileter)?
        searchProductsResult,
    required TResult orElse(),
  }) {
    if (addProductToSoppingCart != null) {
      return addProductToSoppingCart(code, titleScreen, query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitSearchState value) init,
    required TResult Function(LoadingSearchState value) load,
    required TResult Function(OpenSoppingCartSearchState value) openSoppingCart,
    required TResult Function(GetSizeProductSearchState value) getSizeProduct,
    required TResult Function(ErrorSearchState value) error,
    required TResult Function(AddProductSearchState value)
        addProductToSoppingCart,
    required TResult Function(SearchProductsResultSearchState value)
        searchProductsResult,
  }) {
    return addProductToSoppingCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitSearchState value)? init,
    TResult? Function(LoadingSearchState value)? load,
    TResult? Function(OpenSoppingCartSearchState value)? openSoppingCart,
    TResult? Function(GetSizeProductSearchState value)? getSizeProduct,
    TResult? Function(ErrorSearchState value)? error,
    TResult? Function(AddProductSearchState value)? addProductToSoppingCart,
    TResult? Function(SearchProductsResultSearchState value)?
        searchProductsResult,
  }) {
    return addProductToSoppingCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitSearchState value)? init,
    TResult Function(LoadingSearchState value)? load,
    TResult Function(OpenSoppingCartSearchState value)? openSoppingCart,
    TResult Function(GetSizeProductSearchState value)? getSizeProduct,
    TResult Function(ErrorSearchState value)? error,
    TResult Function(AddProductSearchState value)? addProductToSoppingCart,
    TResult Function(SearchProductsResultSearchState value)?
        searchProductsResult,
    required TResult orElse(),
  }) {
    if (addProductToSoppingCart != null) {
      return addProductToSoppingCart(this);
    }
    return orElse();
  }
}

abstract class AddProductSearchState implements SearchState {
  const factory AddProductSearchState(
      {required final String code,
      required final String titleScreen,
      required final String query}) = _$AddProductSearchStateImpl;

  String get code;
  String get titleScreen;
  String get query;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddProductSearchStateImplCopyWith<_$AddProductSearchStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchProductsResultSearchStateImplCopyWith<$Res> {
  factory _$$SearchProductsResultSearchStateImplCopyWith(
          _$SearchProductsResultSearchStateImpl value,
          $Res Function(_$SearchProductsResultSearchStateImpl) then) =
      __$$SearchProductsResultSearchStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<ProductDataModel> searchDefaultProducts,
      List<ProductDataModel> searchProducts,
      List<ProductDataModel> products,
      List<CatalogSectionDataModel> searchSections,
      List<FilterInfoDataModel> filter,
      Map<int, List<FilterItemDataModel>> selectFilter,
      List<Map<int, FilterItemDataModel>> allSelectFilter,
      List<ProductDataModel> listProdcutsStyle,
      List<ProductDataModel> listProdcutsAlso,
      List<ProductDataModel> listProdcutsBrand,
      List<ProductDataModel> listProdcutsComplect,
      List<int> favouritesProductsId,
      String query,
      bool isLoading,
      CatalogSearchProductsRequest request,
      List<String> listProductsCode,
      bool isAuth,
      int offset,
      bool isButtonTop,
      List<SkuProductDataModel> listSize,
      bool isLoadGetSizeProduct,
      int userDiscount,
      int productsCount,
      String? codeProduct,
      SkuProductDataModel? selectSizeProduct,
      bool? isShoppingCart,
      bool? isShoppingCartDetailsProduct,
      DetailProductDataModel? detailsProduct,
      List<ProductDataModel>? favouritesProducts,
      bool? isLoadErrorButton,
      CatalogSearchInfoDataModel? searchResultInfo,
      int? indexProduct,
      ProductDataModel? favouriteProduct,
      bool? isShopGetSizeProduct,
      String? errorMessage,
      String? typeError,
      bool? isError,
      int? keyFilterCatalog,
      int? indexFileter,
      int? indexItemFileter,
      int? indexFilterCategory,
      FilterItemDataModel? itemFileter});

  $CatalogSearchProductsRequestCopyWith<$Res> get request;
  $SkuProductDataModelCopyWith<$Res>? get selectSizeProduct;
  $DetailProductDataModelCopyWith<$Res>? get detailsProduct;
  $CatalogSearchInfoDataModelCopyWith<$Res>? get searchResultInfo;
  $ProductDataModelCopyWith<$Res>? get favouriteProduct;
  $FilterItemDataModelCopyWith<$Res>? get itemFileter;
}

/// @nodoc
class __$$SearchProductsResultSearchStateImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res,
        _$SearchProductsResultSearchStateImpl>
    implements _$$SearchProductsResultSearchStateImplCopyWith<$Res> {
  __$$SearchProductsResultSearchStateImplCopyWithImpl(
      _$SearchProductsResultSearchStateImpl _value,
      $Res Function(_$SearchProductsResultSearchStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchDefaultProducts = null,
    Object? searchProducts = null,
    Object? products = null,
    Object? searchSections = null,
    Object? filter = null,
    Object? selectFilter = null,
    Object? allSelectFilter = null,
    Object? listProdcutsStyle = null,
    Object? listProdcutsAlso = null,
    Object? listProdcutsBrand = null,
    Object? listProdcutsComplect = null,
    Object? favouritesProductsId = null,
    Object? query = null,
    Object? isLoading = null,
    Object? request = null,
    Object? listProductsCode = null,
    Object? isAuth = null,
    Object? offset = null,
    Object? isButtonTop = null,
    Object? listSize = null,
    Object? isLoadGetSizeProduct = null,
    Object? userDiscount = null,
    Object? productsCount = null,
    Object? codeProduct = freezed,
    Object? selectSizeProduct = freezed,
    Object? isShoppingCart = freezed,
    Object? isShoppingCartDetailsProduct = freezed,
    Object? detailsProduct = freezed,
    Object? favouritesProducts = freezed,
    Object? isLoadErrorButton = freezed,
    Object? searchResultInfo = freezed,
    Object? indexProduct = freezed,
    Object? favouriteProduct = freezed,
    Object? isShopGetSizeProduct = freezed,
    Object? errorMessage = freezed,
    Object? typeError = freezed,
    Object? isError = freezed,
    Object? keyFilterCatalog = freezed,
    Object? indexFileter = freezed,
    Object? indexItemFileter = freezed,
    Object? indexFilterCategory = freezed,
    Object? itemFileter = freezed,
  }) {
    return _then(_$SearchProductsResultSearchStateImpl(
      searchDefaultProducts: null == searchDefaultProducts
          ? _value._searchDefaultProducts
          : searchDefaultProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductDataModel>,
      searchProducts: null == searchProducts
          ? _value._searchProducts
          : searchProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductDataModel>,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductDataModel>,
      searchSections: null == searchSections
          ? _value._searchSections
          : searchSections // ignore: cast_nullable_to_non_nullable
              as List<CatalogSectionDataModel>,
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
      listProdcutsComplect: null == listProdcutsComplect
          ? _value._listProdcutsComplect
          : listProdcutsComplect // ignore: cast_nullable_to_non_nullable
              as List<ProductDataModel>,
      favouritesProductsId: null == favouritesProductsId
          ? _value._favouritesProductsId
          : favouritesProductsId // ignore: cast_nullable_to_non_nullable
              as List<int>,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as CatalogSearchProductsRequest,
      listProductsCode: null == listProductsCode
          ? _value._listProductsCode
          : listProductsCode // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isAuth: null == isAuth
          ? _value.isAuth
          : isAuth // ignore: cast_nullable_to_non_nullable
              as bool,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      isButtonTop: null == isButtonTop
          ? _value.isButtonTop
          : isButtonTop // ignore: cast_nullable_to_non_nullable
              as bool,
      listSize: null == listSize
          ? _value._listSize
          : listSize // ignore: cast_nullable_to_non_nullable
              as List<SkuProductDataModel>,
      isLoadGetSizeProduct: null == isLoadGetSizeProduct
          ? _value.isLoadGetSizeProduct
          : isLoadGetSizeProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      userDiscount: null == userDiscount
          ? _value.userDiscount
          : userDiscount // ignore: cast_nullable_to_non_nullable
              as int,
      productsCount: null == productsCount
          ? _value.productsCount
          : productsCount // ignore: cast_nullable_to_non_nullable
              as int,
      codeProduct: freezed == codeProduct
          ? _value.codeProduct
          : codeProduct // ignore: cast_nullable_to_non_nullable
              as String?,
      selectSizeProduct: freezed == selectSizeProduct
          ? _value.selectSizeProduct
          : selectSizeProduct // ignore: cast_nullable_to_non_nullable
              as SkuProductDataModel?,
      isShoppingCart: freezed == isShoppingCart
          ? _value.isShoppingCart
          : isShoppingCart // ignore: cast_nullable_to_non_nullable
              as bool?,
      isShoppingCartDetailsProduct: freezed == isShoppingCartDetailsProduct
          ? _value.isShoppingCartDetailsProduct
          : isShoppingCartDetailsProduct // ignore: cast_nullable_to_non_nullable
              as bool?,
      detailsProduct: freezed == detailsProduct
          ? _value.detailsProduct
          : detailsProduct // ignore: cast_nullable_to_non_nullable
              as DetailProductDataModel?,
      favouritesProducts: freezed == favouritesProducts
          ? _value._favouritesProducts
          : favouritesProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductDataModel>?,
      isLoadErrorButton: freezed == isLoadErrorButton
          ? _value.isLoadErrorButton
          : isLoadErrorButton // ignore: cast_nullable_to_non_nullable
              as bool?,
      searchResultInfo: freezed == searchResultInfo
          ? _value.searchResultInfo
          : searchResultInfo // ignore: cast_nullable_to_non_nullable
              as CatalogSearchInfoDataModel?,
      indexProduct: freezed == indexProduct
          ? _value.indexProduct
          : indexProduct // ignore: cast_nullable_to_non_nullable
              as int?,
      favouriteProduct: freezed == favouriteProduct
          ? _value.favouriteProduct
          : favouriteProduct // ignore: cast_nullable_to_non_nullable
              as ProductDataModel?,
      isShopGetSizeProduct: freezed == isShopGetSizeProduct
          ? _value.isShopGetSizeProduct
          : isShopGetSizeProduct // ignore: cast_nullable_to_non_nullable
              as bool?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      typeError: freezed == typeError
          ? _value.typeError
          : typeError // ignore: cast_nullable_to_non_nullable
              as String?,
      isError: freezed == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool?,
      keyFilterCatalog: freezed == keyFilterCatalog
          ? _value.keyFilterCatalog
          : keyFilterCatalog // ignore: cast_nullable_to_non_nullable
              as int?,
      indexFileter: freezed == indexFileter
          ? _value.indexFileter
          : indexFileter // ignore: cast_nullable_to_non_nullable
              as int?,
      indexItemFileter: freezed == indexItemFileter
          ? _value.indexItemFileter
          : indexItemFileter // ignore: cast_nullable_to_non_nullable
              as int?,
      indexFilterCategory: freezed == indexFilterCategory
          ? _value.indexFilterCategory
          : indexFilterCategory // ignore: cast_nullable_to_non_nullable
              as int?,
      itemFileter: freezed == itemFileter
          ? _value.itemFileter
          : itemFileter // ignore: cast_nullable_to_non_nullable
              as FilterItemDataModel?,
    ));
  }

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CatalogSearchProductsRequestCopyWith<$Res> get request {
    return $CatalogSearchProductsRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SkuProductDataModelCopyWith<$Res>? get selectSizeProduct {
    if (_value.selectSizeProduct == null) {
      return null;
    }

    return $SkuProductDataModelCopyWith<$Res>(_value.selectSizeProduct!,
        (value) {
      return _then(_value.copyWith(selectSizeProduct: value));
    });
  }

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CatalogSearchInfoDataModelCopyWith<$Res>? get searchResultInfo {
    if (_value.searchResultInfo == null) {
      return null;
    }

    return $CatalogSearchInfoDataModelCopyWith<$Res>(_value.searchResultInfo!,
        (value) {
      return _then(_value.copyWith(searchResultInfo: value));
    });
  }

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductDataModelCopyWith<$Res>? get favouriteProduct {
    if (_value.favouriteProduct == null) {
      return null;
    }

    return $ProductDataModelCopyWith<$Res>(_value.favouriteProduct!, (value) {
      return _then(_value.copyWith(favouriteProduct: value));
    });
  }

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FilterItemDataModelCopyWith<$Res>? get itemFileter {
    if (_value.itemFileter == null) {
      return null;
    }

    return $FilterItemDataModelCopyWith<$Res>(_value.itemFileter!, (value) {
      return _then(_value.copyWith(itemFileter: value));
    });
  }
}

/// @nodoc

class _$SearchProductsResultSearchStateImpl
    implements SearchProductsResultSearchState {
  const _$SearchProductsResultSearchStateImpl(
      {required final List<ProductDataModel> searchDefaultProducts,
      required final List<ProductDataModel> searchProducts,
      required final List<ProductDataModel> products,
      required final List<CatalogSectionDataModel> searchSections,
      required final List<FilterInfoDataModel> filter,
      required final Map<int, List<FilterItemDataModel>> selectFilter,
      required final List<Map<int, FilterItemDataModel>> allSelectFilter,
      required final List<ProductDataModel> listProdcutsStyle,
      required final List<ProductDataModel> listProdcutsAlso,
      required final List<ProductDataModel> listProdcutsBrand,
      required final List<ProductDataModel> listProdcutsComplect,
      required final List<int> favouritesProductsId,
      required this.query,
      required this.isLoading,
      required this.request,
      required final List<String> listProductsCode,
      required this.isAuth,
      required this.offset,
      required this.isButtonTop,
      required final List<SkuProductDataModel> listSize,
      required this.isLoadGetSizeProduct,
      required this.userDiscount,
      required this.productsCount,
      this.codeProduct,
      this.selectSizeProduct,
      this.isShoppingCart,
      this.isShoppingCartDetailsProduct,
      this.detailsProduct,
      final List<ProductDataModel>? favouritesProducts,
      this.isLoadErrorButton,
      this.searchResultInfo,
      this.indexProduct,
      this.favouriteProduct,
      this.isShopGetSizeProduct,
      this.errorMessage,
      this.typeError,
      this.isError,
      this.keyFilterCatalog,
      this.indexFileter,
      this.indexItemFileter,
      this.indexFilterCategory,
      this.itemFileter})
      : _searchDefaultProducts = searchDefaultProducts,
        _searchProducts = searchProducts,
        _products = products,
        _searchSections = searchSections,
        _filter = filter,
        _selectFilter = selectFilter,
        _allSelectFilter = allSelectFilter,
        _listProdcutsStyle = listProdcutsStyle,
        _listProdcutsAlso = listProdcutsAlso,
        _listProdcutsBrand = listProdcutsBrand,
        _listProdcutsComplect = listProdcutsComplect,
        _favouritesProductsId = favouritesProductsId,
        _listProductsCode = listProductsCode,
        _listSize = listSize,
        _favouritesProducts = favouritesProducts;

  final List<ProductDataModel> _searchDefaultProducts;
  @override
  List<ProductDataModel> get searchDefaultProducts {
    if (_searchDefaultProducts is EqualUnmodifiableListView)
      return _searchDefaultProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchDefaultProducts);
  }

  final List<ProductDataModel> _searchProducts;
  @override
  List<ProductDataModel> get searchProducts {
    if (_searchProducts is EqualUnmodifiableListView) return _searchProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchProducts);
  }

  final List<ProductDataModel> _products;
  @override
  List<ProductDataModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  final List<CatalogSectionDataModel> _searchSections;
  @override
  List<CatalogSectionDataModel> get searchSections {
    if (_searchSections is EqualUnmodifiableListView) return _searchSections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchSections);
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

  final List<ProductDataModel> _listProdcutsComplect;
  @override
  List<ProductDataModel> get listProdcutsComplect {
    if (_listProdcutsComplect is EqualUnmodifiableListView)
      return _listProdcutsComplect;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listProdcutsComplect);
  }

  final List<int> _favouritesProductsId;
  @override
  List<int> get favouritesProductsId {
    if (_favouritesProductsId is EqualUnmodifiableListView)
      return _favouritesProductsId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favouritesProductsId);
  }

  @override
  final String query;
  @override
  final bool isLoading;
  @override
  final CatalogSearchProductsRequest request;
  final List<String> _listProductsCode;
  @override
  List<String> get listProductsCode {
    if (_listProductsCode is EqualUnmodifiableListView)
      return _listProductsCode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listProductsCode);
  }

  @override
  final bool isAuth;
  @override
  final int offset;
  @override
  final bool isButtonTop;
  final List<SkuProductDataModel> _listSize;
  @override
  List<SkuProductDataModel> get listSize {
    if (_listSize is EqualUnmodifiableListView) return _listSize;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listSize);
  }

  @override
  final bool isLoadGetSizeProduct;
  @override
  final int userDiscount;
  @override
  final int productsCount;
  @override
  final String? codeProduct;
  @override
  final SkuProductDataModel? selectSizeProduct;
  @override
  final bool? isShoppingCart;
  @override
  final bool? isShoppingCartDetailsProduct;
  @override
  final DetailProductDataModel? detailsProduct;
  final List<ProductDataModel>? _favouritesProducts;
  @override
  List<ProductDataModel>? get favouritesProducts {
    final value = _favouritesProducts;
    if (value == null) return null;
    if (_favouritesProducts is EqualUnmodifiableListView)
      return _favouritesProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? isLoadErrorButton;
  @override
  final CatalogSearchInfoDataModel? searchResultInfo;
  @override
  final int? indexProduct;
  @override
  final ProductDataModel? favouriteProduct;
  @override
  final bool? isShopGetSizeProduct;
  @override
  final String? errorMessage;
  @override
  final String? typeError;
  @override
  final bool? isError;
  @override
  final int? keyFilterCatalog;
  @override
  final int? indexFileter;
  @override
  final int? indexItemFileter;
  @override
  final int? indexFilterCategory;
  @override
  final FilterItemDataModel? itemFileter;

  @override
  String toString() {
    return 'SearchState.searchProductsResult(searchDefaultProducts: $searchDefaultProducts, searchProducts: $searchProducts, products: $products, searchSections: $searchSections, filter: $filter, selectFilter: $selectFilter, allSelectFilter: $allSelectFilter, listProdcutsStyle: $listProdcutsStyle, listProdcutsAlso: $listProdcutsAlso, listProdcutsBrand: $listProdcutsBrand, listProdcutsComplect: $listProdcutsComplect, favouritesProductsId: $favouritesProductsId, query: $query, isLoading: $isLoading, request: $request, listProductsCode: $listProductsCode, isAuth: $isAuth, offset: $offset, isButtonTop: $isButtonTop, listSize: $listSize, isLoadGetSizeProduct: $isLoadGetSizeProduct, userDiscount: $userDiscount, productsCount: $productsCount, codeProduct: $codeProduct, selectSizeProduct: $selectSizeProduct, isShoppingCart: $isShoppingCart, isShoppingCartDetailsProduct: $isShoppingCartDetailsProduct, detailsProduct: $detailsProduct, favouritesProducts: $favouritesProducts, isLoadErrorButton: $isLoadErrorButton, searchResultInfo: $searchResultInfo, indexProduct: $indexProduct, favouriteProduct: $favouriteProduct, isShopGetSizeProduct: $isShopGetSizeProduct, errorMessage: $errorMessage, typeError: $typeError, isError: $isError, keyFilterCatalog: $keyFilterCatalog, indexFileter: $indexFileter, indexItemFileter: $indexItemFileter, indexFilterCategory: $indexFilterCategory, itemFileter: $itemFileter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchProductsResultSearchStateImpl &&
            const DeepCollectionEquality()
                .equals(other._searchDefaultProducts, _searchDefaultProducts) &&
            const DeepCollectionEquality()
                .equals(other._searchProducts, _searchProducts) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality()
                .equals(other._searchSections, _searchSections) &&
            const DeepCollectionEquality().equals(other._filter, _filter) &&
            const DeepCollectionEquality()
                .equals(other._selectFilter, _selectFilter) &&
            const DeepCollectionEquality()
                .equals(other._allSelectFilter, _allSelectFilter) &&
            const DeepCollectionEquality()
                .equals(other._listProdcutsStyle, _listProdcutsStyle) &&
            const DeepCollectionEquality()
                .equals(other._listProdcutsAlso, _listProdcutsAlso) &&
            const DeepCollectionEquality()
                .equals(other._listProdcutsBrand, _listProdcutsBrand) &&
            const DeepCollectionEquality()
                .equals(other._listProdcutsComplect, _listProdcutsComplect) &&
            const DeepCollectionEquality()
                .equals(other._favouritesProductsId, _favouritesProductsId) &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.request, request) || other.request == request) &&
            const DeepCollectionEquality()
                .equals(other._listProductsCode, _listProductsCode) &&
            (identical(other.isAuth, isAuth) || other.isAuth == isAuth) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.isButtonTop, isButtonTop) ||
                other.isButtonTop == isButtonTop) &&
            const DeepCollectionEquality().equals(other._listSize, _listSize) &&
            (identical(other.isLoadGetSizeProduct, isLoadGetSizeProduct) ||
                other.isLoadGetSizeProduct == isLoadGetSizeProduct) &&
            (identical(other.userDiscount, userDiscount) ||
                other.userDiscount == userDiscount) &&
            (identical(other.productsCount, productsCount) ||
                other.productsCount == productsCount) &&
            (identical(other.codeProduct, codeProduct) ||
                other.codeProduct == codeProduct) &&
            (identical(other.selectSizeProduct, selectSizeProduct) ||
                other.selectSizeProduct == selectSizeProduct) &&
            (identical(other.isShoppingCart, isShoppingCart) ||
                other.isShoppingCart == isShoppingCart) &&
            (identical(other.isShoppingCartDetailsProduct,
                    isShoppingCartDetailsProduct) ||
                other.isShoppingCartDetailsProduct ==
                    isShoppingCartDetailsProduct) &&
            (identical(other.detailsProduct, detailsProduct) ||
                other.detailsProduct == detailsProduct) &&
            const DeepCollectionEquality()
                .equals(other._favouritesProducts, _favouritesProducts) &&
            (identical(other.isLoadErrorButton, isLoadErrorButton) ||
                other.isLoadErrorButton == isLoadErrorButton) &&
            (identical(other.searchResultInfo, searchResultInfo) ||
                other.searchResultInfo == searchResultInfo) &&
            (identical(other.indexProduct, indexProduct) ||
                other.indexProduct == indexProduct) &&
            (identical(other.favouriteProduct, favouriteProduct) ||
                other.favouriteProduct == favouriteProduct) &&
            (identical(other.isShopGetSizeProduct, isShopGetSizeProduct) ||
                other.isShopGetSizeProduct == isShopGetSizeProduct) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.typeError, typeError) ||
                other.typeError == typeError) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.keyFilterCatalog, keyFilterCatalog) ||
                other.keyFilterCatalog == keyFilterCatalog) &&
            (identical(other.indexFileter, indexFileter) ||
                other.indexFileter == indexFileter) &&
            (identical(other.indexItemFileter, indexItemFileter) ||
                other.indexItemFileter == indexItemFileter) &&
            (identical(other.indexFilterCategory, indexFilterCategory) ||
                other.indexFilterCategory == indexFilterCategory) &&
            (identical(other.itemFileter, itemFileter) ||
                other.itemFileter == itemFileter));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(_searchDefaultProducts),
        const DeepCollectionEquality().hash(_searchProducts),
        const DeepCollectionEquality().hash(_products),
        const DeepCollectionEquality().hash(_searchSections),
        const DeepCollectionEquality().hash(_filter),
        const DeepCollectionEquality().hash(_selectFilter),
        const DeepCollectionEquality().hash(_allSelectFilter),
        const DeepCollectionEquality().hash(_listProdcutsStyle),
        const DeepCollectionEquality().hash(_listProdcutsAlso),
        const DeepCollectionEquality().hash(_listProdcutsBrand),
        const DeepCollectionEquality().hash(_listProdcutsComplect),
        const DeepCollectionEquality().hash(_favouritesProductsId),
        query,
        isLoading,
        request,
        const DeepCollectionEquality().hash(_listProductsCode),
        isAuth,
        offset,
        isButtonTop,
        const DeepCollectionEquality().hash(_listSize),
        isLoadGetSizeProduct,
        userDiscount,
        productsCount,
        codeProduct,
        selectSizeProduct,
        isShoppingCart,
        isShoppingCartDetailsProduct,
        detailsProduct,
        const DeepCollectionEquality().hash(_favouritesProducts),
        isLoadErrorButton,
        searchResultInfo,
        indexProduct,
        favouriteProduct,
        isShopGetSizeProduct,
        errorMessage,
        typeError,
        isError,
        keyFilterCatalog,
        indexFileter,
        indexItemFileter,
        indexFilterCategory,
        itemFileter
      ]);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchProductsResultSearchStateImplCopyWith<
          _$SearchProductsResultSearchStateImpl>
      get copyWith => __$$SearchProductsResultSearchStateImplCopyWithImpl<
          _$SearchProductsResultSearchStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function() openSoppingCart,
    required TResult Function(
            String code,
            List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart,
            String titleScreen,
            String query)
        getSizeProduct,
    required TResult Function(String errorMessage) error,
    required TResult Function(String code, String titleScreen, String query)
        addProductToSoppingCart,
    required TResult Function(
            List<ProductDataModel> searchDefaultProducts,
            List<ProductDataModel> searchProducts,
            List<ProductDataModel> products,
            List<CatalogSectionDataModel> searchSections,
            List<FilterInfoDataModel> filter,
            Map<int, List<FilterItemDataModel>> selectFilter,
            List<Map<int, FilterItemDataModel>> allSelectFilter,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            List<int> favouritesProductsId,
            String query,
            bool isLoading,
            CatalogSearchProductsRequest request,
            List<String> listProductsCode,
            bool isAuth,
            int offset,
            bool isButtonTop,
            List<SkuProductDataModel> listSize,
            bool isLoadGetSizeProduct,
            int userDiscount,
            int productsCount,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isShoppingCartDetailsProduct,
            DetailProductDataModel? detailsProduct,
            List<ProductDataModel>? favouritesProducts,
            bool? isLoadErrorButton,
            CatalogSearchInfoDataModel? searchResultInfo,
            int? indexProduct,
            ProductDataModel? favouriteProduct,
            bool? isShopGetSizeProduct,
            String? errorMessage,
            String? typeError,
            bool? isError,
            int? keyFilterCatalog,
            int? indexFileter,
            int? indexItemFileter,
            int? indexFilterCategory,
            FilterItemDataModel? itemFileter)
        searchProductsResult,
  }) {
    return searchProductsResult(
        searchDefaultProducts,
        searchProducts,
        products,
        searchSections,
        filter,
        selectFilter,
        allSelectFilter,
        listProdcutsStyle,
        listProdcutsAlso,
        listProdcutsBrand,
        listProdcutsComplect,
        favouritesProductsId,
        query,
        isLoading,
        request,
        listProductsCode,
        isAuth,
        offset,
        isButtonTop,
        listSize,
        isLoadGetSizeProduct,
        userDiscount,
        productsCount,
        codeProduct,
        selectSizeProduct,
        isShoppingCart,
        isShoppingCartDetailsProduct,
        detailsProduct,
        favouritesProducts,
        isLoadErrorButton,
        searchResultInfo,
        indexProduct,
        favouriteProduct,
        isShopGetSizeProduct,
        errorMessage,
        typeError,
        isError,
        keyFilterCatalog,
        indexFileter,
        indexItemFileter,
        indexFilterCategory,
        itemFileter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function()? openSoppingCart,
    TResult? Function(
            String code,
            List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart,
            String titleScreen,
            String query)?
        getSizeProduct,
    TResult? Function(String errorMessage)? error,
    TResult? Function(String code, String titleScreen, String query)?
        addProductToSoppingCart,
    TResult? Function(
            List<ProductDataModel> searchDefaultProducts,
            List<ProductDataModel> searchProducts,
            List<ProductDataModel> products,
            List<CatalogSectionDataModel> searchSections,
            List<FilterInfoDataModel> filter,
            Map<int, List<FilterItemDataModel>> selectFilter,
            List<Map<int, FilterItemDataModel>> allSelectFilter,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            List<int> favouritesProductsId,
            String query,
            bool isLoading,
            CatalogSearchProductsRequest request,
            List<String> listProductsCode,
            bool isAuth,
            int offset,
            bool isButtonTop,
            List<SkuProductDataModel> listSize,
            bool isLoadGetSizeProduct,
            int userDiscount,
            int productsCount,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isShoppingCartDetailsProduct,
            DetailProductDataModel? detailsProduct,
            List<ProductDataModel>? favouritesProducts,
            bool? isLoadErrorButton,
            CatalogSearchInfoDataModel? searchResultInfo,
            int? indexProduct,
            ProductDataModel? favouriteProduct,
            bool? isShopGetSizeProduct,
            String? errorMessage,
            String? typeError,
            bool? isError,
            int? keyFilterCatalog,
            int? indexFileter,
            int? indexItemFileter,
            int? indexFilterCategory,
            FilterItemDataModel? itemFileter)?
        searchProductsResult,
  }) {
    return searchProductsResult?.call(
        searchDefaultProducts,
        searchProducts,
        products,
        searchSections,
        filter,
        selectFilter,
        allSelectFilter,
        listProdcutsStyle,
        listProdcutsAlso,
        listProdcutsBrand,
        listProdcutsComplect,
        favouritesProductsId,
        query,
        isLoading,
        request,
        listProductsCode,
        isAuth,
        offset,
        isButtonTop,
        listSize,
        isLoadGetSizeProduct,
        userDiscount,
        productsCount,
        codeProduct,
        selectSizeProduct,
        isShoppingCart,
        isShoppingCartDetailsProduct,
        detailsProduct,
        favouritesProducts,
        isLoadErrorButton,
        searchResultInfo,
        indexProduct,
        favouriteProduct,
        isShopGetSizeProduct,
        errorMessage,
        typeError,
        isError,
        keyFilterCatalog,
        indexFileter,
        indexItemFileter,
        indexFilterCategory,
        itemFileter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function()? openSoppingCart,
    TResult Function(
            String code,
            List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart,
            String titleScreen,
            String query)?
        getSizeProduct,
    TResult Function(String errorMessage)? error,
    TResult Function(String code, String titleScreen, String query)?
        addProductToSoppingCart,
    TResult Function(
            List<ProductDataModel> searchDefaultProducts,
            List<ProductDataModel> searchProducts,
            List<ProductDataModel> products,
            List<CatalogSectionDataModel> searchSections,
            List<FilterInfoDataModel> filter,
            Map<int, List<FilterItemDataModel>> selectFilter,
            List<Map<int, FilterItemDataModel>> allSelectFilter,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            List<int> favouritesProductsId,
            String query,
            bool isLoading,
            CatalogSearchProductsRequest request,
            List<String> listProductsCode,
            bool isAuth,
            int offset,
            bool isButtonTop,
            List<SkuProductDataModel> listSize,
            bool isLoadGetSizeProduct,
            int userDiscount,
            int productsCount,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isShoppingCartDetailsProduct,
            DetailProductDataModel? detailsProduct,
            List<ProductDataModel>? favouritesProducts,
            bool? isLoadErrorButton,
            CatalogSearchInfoDataModel? searchResultInfo,
            int? indexProduct,
            ProductDataModel? favouriteProduct,
            bool? isShopGetSizeProduct,
            String? errorMessage,
            String? typeError,
            bool? isError,
            int? keyFilterCatalog,
            int? indexFileter,
            int? indexItemFileter,
            int? indexFilterCategory,
            FilterItemDataModel? itemFileter)?
        searchProductsResult,
    required TResult orElse(),
  }) {
    if (searchProductsResult != null) {
      return searchProductsResult(
          searchDefaultProducts,
          searchProducts,
          products,
          searchSections,
          filter,
          selectFilter,
          allSelectFilter,
          listProdcutsStyle,
          listProdcutsAlso,
          listProdcutsBrand,
          listProdcutsComplect,
          favouritesProductsId,
          query,
          isLoading,
          request,
          listProductsCode,
          isAuth,
          offset,
          isButtonTop,
          listSize,
          isLoadGetSizeProduct,
          userDiscount,
          productsCount,
          codeProduct,
          selectSizeProduct,
          isShoppingCart,
          isShoppingCartDetailsProduct,
          detailsProduct,
          favouritesProducts,
          isLoadErrorButton,
          searchResultInfo,
          indexProduct,
          favouriteProduct,
          isShopGetSizeProduct,
          errorMessage,
          typeError,
          isError,
          keyFilterCatalog,
          indexFileter,
          indexItemFileter,
          indexFilterCategory,
          itemFileter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitSearchState value) init,
    required TResult Function(LoadingSearchState value) load,
    required TResult Function(OpenSoppingCartSearchState value) openSoppingCart,
    required TResult Function(GetSizeProductSearchState value) getSizeProduct,
    required TResult Function(ErrorSearchState value) error,
    required TResult Function(AddProductSearchState value)
        addProductToSoppingCart,
    required TResult Function(SearchProductsResultSearchState value)
        searchProductsResult,
  }) {
    return searchProductsResult(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitSearchState value)? init,
    TResult? Function(LoadingSearchState value)? load,
    TResult? Function(OpenSoppingCartSearchState value)? openSoppingCart,
    TResult? Function(GetSizeProductSearchState value)? getSizeProduct,
    TResult? Function(ErrorSearchState value)? error,
    TResult? Function(AddProductSearchState value)? addProductToSoppingCart,
    TResult? Function(SearchProductsResultSearchState value)?
        searchProductsResult,
  }) {
    return searchProductsResult?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitSearchState value)? init,
    TResult Function(LoadingSearchState value)? load,
    TResult Function(OpenSoppingCartSearchState value)? openSoppingCart,
    TResult Function(GetSizeProductSearchState value)? getSizeProduct,
    TResult Function(ErrorSearchState value)? error,
    TResult Function(AddProductSearchState value)? addProductToSoppingCart,
    TResult Function(SearchProductsResultSearchState value)?
        searchProductsResult,
    required TResult orElse(),
  }) {
    if (searchProductsResult != null) {
      return searchProductsResult(this);
    }
    return orElse();
  }
}

abstract class SearchProductsResultSearchState implements SearchState {
  const factory SearchProductsResultSearchState(
          {required final List<ProductDataModel> searchDefaultProducts,
          required final List<ProductDataModel> searchProducts,
          required final List<ProductDataModel> products,
          required final List<CatalogSectionDataModel> searchSections,
          required final List<FilterInfoDataModel> filter,
          required final Map<int, List<FilterItemDataModel>> selectFilter,
          required final List<Map<int, FilterItemDataModel>> allSelectFilter,
          required final List<ProductDataModel> listProdcutsStyle,
          required final List<ProductDataModel> listProdcutsAlso,
          required final List<ProductDataModel> listProdcutsBrand,
          required final List<ProductDataModel> listProdcutsComplect,
          required final List<int> favouritesProductsId,
          required final String query,
          required final bool isLoading,
          required final CatalogSearchProductsRequest request,
          required final List<String> listProductsCode,
          required final bool isAuth,
          required final int offset,
          required final bool isButtonTop,
          required final List<SkuProductDataModel> listSize,
          required final bool isLoadGetSizeProduct,
          required final int userDiscount,
          required final int productsCount,
          final String? codeProduct,
          final SkuProductDataModel? selectSizeProduct,
          final bool? isShoppingCart,
          final bool? isShoppingCartDetailsProduct,
          final DetailProductDataModel? detailsProduct,
          final List<ProductDataModel>? favouritesProducts,
          final bool? isLoadErrorButton,
          final CatalogSearchInfoDataModel? searchResultInfo,
          final int? indexProduct,
          final ProductDataModel? favouriteProduct,
          final bool? isShopGetSizeProduct,
          final String? errorMessage,
          final String? typeError,
          final bool? isError,
          final int? keyFilterCatalog,
          final int? indexFileter,
          final int? indexItemFileter,
          final int? indexFilterCategory,
          final FilterItemDataModel? itemFileter}) =
      _$SearchProductsResultSearchStateImpl;

  List<ProductDataModel> get searchDefaultProducts;
  List<ProductDataModel> get searchProducts;
  List<ProductDataModel> get products;
  List<CatalogSectionDataModel> get searchSections;
  List<FilterInfoDataModel> get filter;
  Map<int, List<FilterItemDataModel>> get selectFilter;
  List<Map<int, FilterItemDataModel>> get allSelectFilter;
  List<ProductDataModel> get listProdcutsStyle;
  List<ProductDataModel> get listProdcutsAlso;
  List<ProductDataModel> get listProdcutsBrand;
  List<ProductDataModel> get listProdcutsComplect;
  List<int> get favouritesProductsId;
  String get query;
  bool get isLoading;
  CatalogSearchProductsRequest get request;
  List<String> get listProductsCode;
  bool get isAuth;
  int get offset;
  bool get isButtonTop;
  List<SkuProductDataModel> get listSize;
  bool get isLoadGetSizeProduct;
  int get userDiscount;
  int get productsCount;
  String? get codeProduct;
  SkuProductDataModel? get selectSizeProduct;
  bool? get isShoppingCart;
  bool? get isShoppingCartDetailsProduct;
  DetailProductDataModel? get detailsProduct;
  List<ProductDataModel>? get favouritesProducts;
  bool? get isLoadErrorButton;
  CatalogSearchInfoDataModel? get searchResultInfo;
  int? get indexProduct;
  ProductDataModel? get favouriteProduct;
  bool? get isShopGetSizeProduct;
  String? get errorMessage;
  String? get typeError;
  bool? get isError;
  int? get keyFilterCatalog;
  int? get indexFileter;
  int? get indexItemFileter;
  int? get indexFilterCategory;
  FilterItemDataModel? get itemFileter;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchProductsResultSearchStateImplCopyWith<
          _$SearchProductsResultSearchStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
