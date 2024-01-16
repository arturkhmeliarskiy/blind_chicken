// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    OrderRoute.name: (routeData) {
      final args = routeData.argsAs<OrderRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: OrderScreen(
          key: args.key,
          receivingType: args.receivingType,
          typePay: args.typePay,
          adress: args.adress,
          workingHours: args.workingHours,
        ),
      );
    },
    BoutiquesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BoutiquesScreen(),
      );
    },
    BoutiquesDescriptionRoute.name: (routeData) {
      final args = routeData.argsAs<BoutiquesDescriptionRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: BoutiquesDescriptionScreen(
          key: args.key,
          boutique: args.boutique,
        ),
      );
    },
    BoutiquePreviewImagesRoute.name: (routeData) {
      final args = routeData.argsAs<BoutiquePreviewImagesRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: BoutiquePreviewImagesScreen(
          key: args.key,
          listImages: args.listImages,
          goBotton: args.goBotton,
        ),
      );
    },
    BoutiqueYandexMapRoute.name: (routeData) {
      final args = routeData.argsAs<BoutiqueYandexMapRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: BoutiqueYandexMapScreen(
          key: args.key,
          mapPoint: args.mapPoint,
        ),
      );
    },
    SaleRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SaleScreen(),
      );
    },
    FilterSelectValueSearchRoute.name: (routeData) {
      final args = routeData.argsAs<FilterSelectValueSearchRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: FilterSelectValueSearchScreen(
          key: args.key,
          index: args.index,
          title: args.title,
          filterItems: args.filterItems,
          selectFilter: args.selectFilter,
          onDelete: args.onDelete,
          onSelect: args.onSelect,
        ),
      );
    },
    FiltersRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FiltersScreen(),
      );
    },
    FilterSelectValueRoute.name: (routeData) {
      final args = routeData.argsAs<FilterSelectValueRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: FilterSelectValueScreen(
          key: args.key,
          index: args.index,
          title: args.title,
          filterItems: args.filterItems,
          selectFilter: args.selectFilter,
          onDelete: args.onDelete,
          onSelect: args.onSelect,
        ),
      );
    },
    HomeAutoRouterRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeAutoRouterScreen(),
      );
    },
    CategoryRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CategoryScreen(),
      );
    },
    SortRoute.name: (routeData) {
      final args = routeData.argsAs<SortRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SortScreen(
          key: args.key,
          onChange: args.onChange,
          selectItem: args.selectItem,
        ),
      );
    },
    CatalogSearchRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CatalogSearchScreen(),
      );
    },
    CatalogSizeProductRoute.name: (routeData) {
      final args = routeData.argsAs<CatalogSizeProductRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CatalogSizeProductScreen(
          key: args.key,
          onChange: args.onChange,
          listSizeProduct: args.listSizeProduct,
          selectItem: args.selectItem,
        ),
      );
    },
    CatalogCardInfoRoute.name: (routeData) {
      final args = routeData.argsAs<CatalogCardInfoRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CatalogCardInfoScreen(
          key: args.key,
          item: args.item,
          isLike: args.isLike,
          addLike: args.addLike,
          listItems: args.listItems,
          favouritesProducts: args.favouritesProducts,
          deleteLike: args.deleteLike,
        ),
      );
    },
    CatalogFilterSelectValueRoute.name: (routeData) {
      final args = routeData.argsAs<CatalogFilterSelectValueRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CatalogFilterSelectValueScreen(
          key: args.key,
          index: args.index,
          title: args.title,
          filterItems: args.filterItems,
          selectFilter: args.selectFilter,
          onDelete: args.onDelete,
          onSelect: args.onSelect,
        ),
      );
    },
    CatalogPreviewImagesRoute.name: (routeData) {
      final args = routeData.argsAs<CatalogPreviewImagesRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CatalogPreviewImagesScreen(
          key: args.key,
          listImages: args.listImages,
          goBotton: args.goBotton,
        ),
      );
    },
    CatalogSearchAutoRouterRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CatalogSearchAutoRouterScreen(),
      );
    },
    CatalogSearchResultRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CatalogSearchResultScreen(),
      );
    },
    CatalogRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CatalogScreen(),
      );
    },
    CatalogSearchFiltersRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CatalogSearchFiltersScreen(),
      );
    },
    CatalogFilterSelectValueSearchRoute.name: (routeData) {
      final args = routeData.argsAs<CatalogFilterSelectValueSearchRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CatalogFilterSelectValueSearchScreen(
          key: args.key,
          index: args.index,
          title: args.title,
          filterItems: args.filterItems,
          selectFilter: args.selectFilter,
          onDelete: args.onDelete,
          onSelect: args.onSelect,
        ),
      );
    },
    DashboardRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DashboardPage(),
      );
    },
    ChatRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ChatScreen(),
      );
    },
    ChatMessangerRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ChatMessangerScreen(),
      );
    },
    BlindChickenCashbackAndDiscountsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BlindChickenCashbackAndDiscountsScreen(),
      );
    },
    ContactsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ContactsScreen(),
      );
    },
    FavouritesFilterSelectValueRoute.name: (routeData) {
      final args = routeData.argsAs<FavouritesFilterSelectValueRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: FavouritesFilterSelectValueScreen(
          key: args.key,
          index: args.index,
          title: args.title,
          filterItems: args.filterItems,
          selectFilter: args.selectFilter,
          onDelete: args.onDelete,
          onSelect: args.onSelect,
        ),
      );
    },
    FavouritesFilterSelectValueSearchRoute.name: (routeData) {
      final args =
          routeData.argsAs<FavouritesFilterSelectValueSearchRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: FavouritesFilterSelectValueSearchScreen(
          key: args.key,
          index: args.index,
          title: args.title,
          filterItems: args.filterItems,
          selectFilter: args.selectFilter,
          onDelete: args.onDelete,
          onSelect: args.onSelect,
        ),
      );
    },
    FavouritesFiltersRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FavouritesFiltersScreen(),
      );
    },
    FavouritesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FavouritesScreen(),
      );
    },
    InfoRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const InfoScreen(),
      );
    },
    YandexMapRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const YandexMapScreen(),
      );
    },
    AccountRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AccountScreen(),
      );
    },
    BlindChickenPdfViewRoute.name: (routeData) {
      final args = routeData.argsAs<BlindChickenPdfViewRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: BlindChickenPdfViewScreen(
          key: args.key,
          url: args.url,
        ),
      );
    },
    BlindChickenWebViewRoute.name: (routeData) {
      final args = routeData.argsAs<BlindChickenWebViewRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: BlindChickenWebViewScreen(
          key: args.key,
          url: args.url,
        ),
      );
    },
    SberbankPaymentWebViewRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SberbankPaymentWebViewScreen(),
      );
    },
    GiftCardRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const GiftCardScreen(),
      );
    },
    GiftCardDeliveryInfoRoute.name: (routeData) {
      final args = routeData.argsAs<GiftCardDeliveryInfoRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: GiftCardDeliveryInfoScreen(
          key: args.key,
          title: args.title,
          selectItem: args.selectItem,
        ),
      );
    },
    GiftVirualCardColorsRoute.name: (routeData) {
      final args = routeData.argsAs<GiftVirualCardColorsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: GiftVirualCardColorsScreen(
          key: args.key,
          selectedColor: args.selectedColor,
          onChange: args.onChange,
        ),
      );
    },
    GiftYandexMapRoute.name: (routeData) {
      final args = routeData.argsAs<GiftYandexMapRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: GiftYandexMapScreen(
          key: args.key,
          onMapPoint: args.onMapPoint,
          point: args.point,
        ),
      );
    },
    ShoppingCartRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ShoppingCartScreen(),
      );
    },
    ShoppingCartAutoRouterRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ShoppingCartAutoRouterScreen(),
      );
    },
    ShoppingCartDeliveryInfoRoute.name: (routeData) {
      final args = routeData.argsAs<ShoppingCartDeliveryInfoRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ShoppingCartDeliveryInfoScreen(
          key: args.key,
          title: args.title,
          selectItem: args.selectItem,
        ),
      );
    },
    ShoppingYandexMapRoute.name: (routeData) {
      final args = routeData.argsAs<ShoppingYandexMapRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ShoppingYandexMapScreen(
          key: args.key,
          onMapPoint: args.onMapPoint,
          point: args.point,
        ),
      );
    },
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginScreen(),
      );
    },
  };
}

/// generated route for
/// [OrderScreen]
class OrderRoute extends PageRouteInfo<OrderRouteArgs> {
  OrderRoute({
    Key? key,
    required String receivingType,
    required String typePay,
    required String adress,
    required String workingHours,
    List<PageRouteInfo>? children,
  }) : super(
          OrderRoute.name,
          args: OrderRouteArgs(
            key: key,
            receivingType: receivingType,
            typePay: typePay,
            adress: adress,
            workingHours: workingHours,
          ),
          initialChildren: children,
        );

  static const String name = 'OrderRoute';

  static const PageInfo<OrderRouteArgs> page = PageInfo<OrderRouteArgs>(name);
}

class OrderRouteArgs {
  const OrderRouteArgs({
    this.key,
    required this.receivingType,
    required this.typePay,
    required this.adress,
    required this.workingHours,
  });

  final Key? key;

  final String receivingType;

  final String typePay;

  final String adress;

  final String workingHours;

  @override
  String toString() {
    return 'OrderRouteArgs{key: $key, receivingType: $receivingType, typePay: $typePay, adress: $adress, workingHours: $workingHours}';
  }
}

/// generated route for
/// [BoutiquesScreen]
class BoutiquesRoute extends PageRouteInfo<void> {
  const BoutiquesRoute({List<PageRouteInfo>? children})
      : super(
          BoutiquesRoute.name,
          initialChildren: children,
        );

  static const String name = 'BoutiquesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [BoutiquesDescriptionScreen]
class BoutiquesDescriptionRoute
    extends PageRouteInfo<BoutiquesDescriptionRouteArgs> {
  BoutiquesDescriptionRoute({
    Key? key,
    required BoutiquesDataModel boutique,
    List<PageRouteInfo>? children,
  }) : super(
          BoutiquesDescriptionRoute.name,
          args: BoutiquesDescriptionRouteArgs(
            key: key,
            boutique: boutique,
          ),
          initialChildren: children,
        );

  static const String name = 'BoutiquesDescriptionRoute';

  static const PageInfo<BoutiquesDescriptionRouteArgs> page =
      PageInfo<BoutiquesDescriptionRouteArgs>(name);
}

class BoutiquesDescriptionRouteArgs {
  const BoutiquesDescriptionRouteArgs({
    this.key,
    required this.boutique,
  });

  final Key? key;

  final BoutiquesDataModel boutique;

  @override
  String toString() {
    return 'BoutiquesDescriptionRouteArgs{key: $key, boutique: $boutique}';
  }
}

/// generated route for
/// [BoutiquePreviewImagesScreen]
class BoutiquePreviewImagesRoute
    extends PageRouteInfo<BoutiquePreviewImagesRouteArgs> {
  BoutiquePreviewImagesRoute({
    Key? key,
    required List<String> listImages,
    required void Function() goBotton,
    List<PageRouteInfo>? children,
  }) : super(
          BoutiquePreviewImagesRoute.name,
          args: BoutiquePreviewImagesRouteArgs(
            key: key,
            listImages: listImages,
            goBotton: goBotton,
          ),
          initialChildren: children,
        );

  static const String name = 'BoutiquePreviewImagesRoute';

  static const PageInfo<BoutiquePreviewImagesRouteArgs> page =
      PageInfo<BoutiquePreviewImagesRouteArgs>(name);
}

class BoutiquePreviewImagesRouteArgs {
  const BoutiquePreviewImagesRouteArgs({
    this.key,
    required this.listImages,
    required this.goBotton,
  });

  final Key? key;

  final List<String> listImages;

  final void Function() goBotton;

  @override
  String toString() {
    return 'BoutiquePreviewImagesRouteArgs{key: $key, listImages: $listImages, goBotton: $goBotton}';
  }
}

/// generated route for
/// [BoutiqueYandexMapScreen]
class BoutiqueYandexMapRoute extends PageRouteInfo<BoutiqueYandexMapRouteArgs> {
  BoutiqueYandexMapRoute({
    Key? key,
    required MapPointDataModel mapPoint,
    List<PageRouteInfo>? children,
  }) : super(
          BoutiqueYandexMapRoute.name,
          args: BoutiqueYandexMapRouteArgs(
            key: key,
            mapPoint: mapPoint,
          ),
          initialChildren: children,
        );

  static const String name = 'BoutiqueYandexMapRoute';

  static const PageInfo<BoutiqueYandexMapRouteArgs> page =
      PageInfo<BoutiqueYandexMapRouteArgs>(name);
}

class BoutiqueYandexMapRouteArgs {
  const BoutiqueYandexMapRouteArgs({
    this.key,
    required this.mapPoint,
  });

  final Key? key;

  final MapPointDataModel mapPoint;

  @override
  String toString() {
    return 'BoutiqueYandexMapRouteArgs{key: $key, mapPoint: $mapPoint}';
  }
}

/// generated route for
/// [SaleScreen]
class SaleRoute extends PageRouteInfo<void> {
  const SaleRoute({List<PageRouteInfo>? children})
      : super(
          SaleRoute.name,
          initialChildren: children,
        );

  static const String name = 'SaleRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FilterSelectValueSearchScreen]
class FilterSelectValueSearchRoute
    extends PageRouteInfo<FilterSelectValueSearchRouteArgs> {
  FilterSelectValueSearchRoute({
    Key? key,
    required int index,
    required String title,
    required List<FilterItemDataModel> filterItems,
    required List<FilterItemDataModel> selectFilter,
    required dynamic Function(int) onDelete,
    required dynamic Function(
      FilterItemDataModel,
      int,
    ) onSelect,
    List<PageRouteInfo>? children,
  }) : super(
          FilterSelectValueSearchRoute.name,
          args: FilterSelectValueSearchRouteArgs(
            key: key,
            index: index,
            title: title,
            filterItems: filterItems,
            selectFilter: selectFilter,
            onDelete: onDelete,
            onSelect: onSelect,
          ),
          initialChildren: children,
        );

  static const String name = 'FilterSelectValueSearchRoute';

  static const PageInfo<FilterSelectValueSearchRouteArgs> page =
      PageInfo<FilterSelectValueSearchRouteArgs>(name);
}

class FilterSelectValueSearchRouteArgs {
  const FilterSelectValueSearchRouteArgs({
    this.key,
    required this.index,
    required this.title,
    required this.filterItems,
    required this.selectFilter,
    required this.onDelete,
    required this.onSelect,
  });

  final Key? key;

  final int index;

  final String title;

  final List<FilterItemDataModel> filterItems;

  final List<FilterItemDataModel> selectFilter;

  final dynamic Function(int) onDelete;

  final dynamic Function(
    FilterItemDataModel,
    int,
  ) onSelect;

  @override
  String toString() {
    return 'FilterSelectValueSearchRouteArgs{key: $key, index: $index, title: $title, filterItems: $filterItems, selectFilter: $selectFilter, onDelete: $onDelete, onSelect: $onSelect}';
  }
}

/// generated route for
/// [FiltersScreen]
class FiltersRoute extends PageRouteInfo<void> {
  const FiltersRoute({List<PageRouteInfo>? children})
      : super(
          FiltersRoute.name,
          initialChildren: children,
        );

  static const String name = 'FiltersRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FilterSelectValueScreen]
class FilterSelectValueRoute extends PageRouteInfo<FilterSelectValueRouteArgs> {
  FilterSelectValueRoute({
    Key? key,
    required int index,
    required String title,
    required List<FilterItemDataModel> filterItems,
    required List<FilterItemDataModel> selectFilter,
    required dynamic Function(int) onDelete,
    required dynamic Function(
      FilterItemDataModel,
      int,
    ) onSelect,
    List<PageRouteInfo>? children,
  }) : super(
          FilterSelectValueRoute.name,
          args: FilterSelectValueRouteArgs(
            key: key,
            index: index,
            title: title,
            filterItems: filterItems,
            selectFilter: selectFilter,
            onDelete: onDelete,
            onSelect: onSelect,
          ),
          initialChildren: children,
        );

  static const String name = 'FilterSelectValueRoute';

  static const PageInfo<FilterSelectValueRouteArgs> page =
      PageInfo<FilterSelectValueRouteArgs>(name);
}

class FilterSelectValueRouteArgs {
  const FilterSelectValueRouteArgs({
    this.key,
    required this.index,
    required this.title,
    required this.filterItems,
    required this.selectFilter,
    required this.onDelete,
    required this.onSelect,
  });

  final Key? key;

  final int index;

  final String title;

  final List<FilterItemDataModel> filterItems;

  final List<FilterItemDataModel> selectFilter;

  final dynamic Function(int) onDelete;

  final dynamic Function(
    FilterItemDataModel,
    int,
  ) onSelect;

  @override
  String toString() {
    return 'FilterSelectValueRouteArgs{key: $key, index: $index, title: $title, filterItems: $filterItems, selectFilter: $selectFilter, onDelete: $onDelete, onSelect: $onSelect}';
  }
}

/// generated route for
/// [HomeAutoRouterScreen]
class HomeAutoRouterRoute extends PageRouteInfo<void> {
  const HomeAutoRouterRoute({List<PageRouteInfo>? children})
      : super(
          HomeAutoRouterRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeAutoRouterRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CategoryScreen]
class CategoryRoute extends PageRouteInfo<void> {
  const CategoryRoute({List<PageRouteInfo>? children})
      : super(
          CategoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoryRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SortScreen]
class SortRoute extends PageRouteInfo<SortRouteArgs> {
  SortRoute({
    Key? key,
    required void Function(String) onChange,
    required String selectItem,
    List<PageRouteInfo>? children,
  }) : super(
          SortRoute.name,
          args: SortRouteArgs(
            key: key,
            onChange: onChange,
            selectItem: selectItem,
          ),
          initialChildren: children,
        );

  static const String name = 'SortRoute';

  static const PageInfo<SortRouteArgs> page = PageInfo<SortRouteArgs>(name);
}

class SortRouteArgs {
  const SortRouteArgs({
    this.key,
    required this.onChange,
    required this.selectItem,
  });

  final Key? key;

  final void Function(String) onChange;

  final String selectItem;

  @override
  String toString() {
    return 'SortRouteArgs{key: $key, onChange: $onChange, selectItem: $selectItem}';
  }
}

/// generated route for
/// [CatalogSearchScreen]
class CatalogSearchRoute extends PageRouteInfo<void> {
  const CatalogSearchRoute({List<PageRouteInfo>? children})
      : super(
          CatalogSearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'CatalogSearchRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CatalogSizeProductScreen]
class CatalogSizeProductRoute
    extends PageRouteInfo<CatalogSizeProductRouteArgs> {
  CatalogSizeProductRoute({
    Key? key,
    required void Function(String) onChange,
    required List<String> listSizeProduct,
    required String selectItem,
    List<PageRouteInfo>? children,
  }) : super(
          CatalogSizeProductRoute.name,
          args: CatalogSizeProductRouteArgs(
            key: key,
            onChange: onChange,
            listSizeProduct: listSizeProduct,
            selectItem: selectItem,
          ),
          initialChildren: children,
        );

  static const String name = 'CatalogSizeProductRoute';

  static const PageInfo<CatalogSizeProductRouteArgs> page =
      PageInfo<CatalogSizeProductRouteArgs>(name);
}

class CatalogSizeProductRouteArgs {
  const CatalogSizeProductRouteArgs({
    this.key,
    required this.onChange,
    required this.listSizeProduct,
    required this.selectItem,
  });

  final Key? key;

  final void Function(String) onChange;

  final List<String> listSizeProduct;

  final String selectItem;

  @override
  String toString() {
    return 'CatalogSizeProductRouteArgs{key: $key, onChange: $onChange, listSizeProduct: $listSizeProduct, selectItem: $selectItem}';
  }
}

/// generated route for
/// [CatalogCardInfoScreen]
class CatalogCardInfoRoute extends PageRouteInfo<CatalogCardInfoRouteArgs> {
  CatalogCardInfoRoute({
    Key? key,
    required ProductDataModel item,
    required bool isLike,
    required void Function() addLike,
    required List<ProductDataModel> listItems,
    required List<ProductDataModel> favouritesProducts,
    required void Function() deleteLike,
    List<PageRouteInfo>? children,
  }) : super(
          CatalogCardInfoRoute.name,
          args: CatalogCardInfoRouteArgs(
            key: key,
            item: item,
            isLike: isLike,
            addLike: addLike,
            listItems: listItems,
            favouritesProducts: favouritesProducts,
            deleteLike: deleteLike,
          ),
          initialChildren: children,
        );

  static const String name = 'CatalogCardInfoRoute';

  static const PageInfo<CatalogCardInfoRouteArgs> page =
      PageInfo<CatalogCardInfoRouteArgs>(name);
}

class CatalogCardInfoRouteArgs {
  const CatalogCardInfoRouteArgs({
    this.key,
    required this.item,
    required this.isLike,
    required this.addLike,
    required this.listItems,
    required this.favouritesProducts,
    required this.deleteLike,
  });

  final Key? key;

  final ProductDataModel item;

  final bool isLike;

  final void Function() addLike;

  final List<ProductDataModel> listItems;

  final List<ProductDataModel> favouritesProducts;

  final void Function() deleteLike;

  @override
  String toString() {
    return 'CatalogCardInfoRouteArgs{key: $key, item: $item, isLike: $isLike, addLike: $addLike, listItems: $listItems, favouritesProducts: $favouritesProducts, deleteLike: $deleteLike}';
  }
}

/// generated route for
/// [CatalogFilterSelectValueScreen]
class CatalogFilterSelectValueRoute
    extends PageRouteInfo<CatalogFilterSelectValueRouteArgs> {
  CatalogFilterSelectValueRoute({
    Key? key,
    required int index,
    required String title,
    required List<FilterItemDataModel> filterItems,
    required List<FilterItemDataModel> selectFilter,
    required dynamic Function(int) onDelete,
    required dynamic Function(
      FilterItemDataModel,
      int,
    ) onSelect,
    List<PageRouteInfo>? children,
  }) : super(
          CatalogFilterSelectValueRoute.name,
          args: CatalogFilterSelectValueRouteArgs(
            key: key,
            index: index,
            title: title,
            filterItems: filterItems,
            selectFilter: selectFilter,
            onDelete: onDelete,
            onSelect: onSelect,
          ),
          initialChildren: children,
        );

  static const String name = 'CatalogFilterSelectValueRoute';

  static const PageInfo<CatalogFilterSelectValueRouteArgs> page =
      PageInfo<CatalogFilterSelectValueRouteArgs>(name);
}

class CatalogFilterSelectValueRouteArgs {
  const CatalogFilterSelectValueRouteArgs({
    this.key,
    required this.index,
    required this.title,
    required this.filterItems,
    required this.selectFilter,
    required this.onDelete,
    required this.onSelect,
  });

  final Key? key;

  final int index;

  final String title;

  final List<FilterItemDataModel> filterItems;

  final List<FilterItemDataModel> selectFilter;

  final dynamic Function(int) onDelete;

  final dynamic Function(
    FilterItemDataModel,
    int,
  ) onSelect;

  @override
  String toString() {
    return 'CatalogFilterSelectValueRouteArgs{key: $key, index: $index, title: $title, filterItems: $filterItems, selectFilter: $selectFilter, onDelete: $onDelete, onSelect: $onSelect}';
  }
}

/// generated route for
/// [CatalogPreviewImagesScreen]
class CatalogPreviewImagesRoute
    extends PageRouteInfo<CatalogPreviewImagesRouteArgs> {
  CatalogPreviewImagesRoute({
    Key? key,
    required List<String> listImages,
    required void Function() goBotton,
    List<PageRouteInfo>? children,
  }) : super(
          CatalogPreviewImagesRoute.name,
          args: CatalogPreviewImagesRouteArgs(
            key: key,
            listImages: listImages,
            goBotton: goBotton,
          ),
          initialChildren: children,
        );

  static const String name = 'CatalogPreviewImagesRoute';

  static const PageInfo<CatalogPreviewImagesRouteArgs> page =
      PageInfo<CatalogPreviewImagesRouteArgs>(name);
}

class CatalogPreviewImagesRouteArgs {
  const CatalogPreviewImagesRouteArgs({
    this.key,
    required this.listImages,
    required this.goBotton,
  });

  final Key? key;

  final List<String> listImages;

  final void Function() goBotton;

  @override
  String toString() {
    return 'CatalogPreviewImagesRouteArgs{key: $key, listImages: $listImages, goBotton: $goBotton}';
  }
}

/// generated route for
/// [CatalogSearchAutoRouterScreen]
class CatalogSearchAutoRouterRoute extends PageRouteInfo<void> {
  const CatalogSearchAutoRouterRoute({List<PageRouteInfo>? children})
      : super(
          CatalogSearchAutoRouterRoute.name,
          initialChildren: children,
        );

  static const String name = 'CatalogSearchAutoRouterRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CatalogSearchResultScreen]
class CatalogSearchResultRoute extends PageRouteInfo<void> {
  const CatalogSearchResultRoute({List<PageRouteInfo>? children})
      : super(
          CatalogSearchResultRoute.name,
          initialChildren: children,
        );

  static const String name = 'CatalogSearchResultRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CatalogScreen]
class CatalogRoute extends PageRouteInfo<void> {
  const CatalogRoute({List<PageRouteInfo>? children})
      : super(
          CatalogRoute.name,
          initialChildren: children,
        );

  static const String name = 'CatalogRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CatalogSearchFiltersScreen]
class CatalogSearchFiltersRoute extends PageRouteInfo<void> {
  const CatalogSearchFiltersRoute({List<PageRouteInfo>? children})
      : super(
          CatalogSearchFiltersRoute.name,
          initialChildren: children,
        );

  static const String name = 'CatalogSearchFiltersRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CatalogFilterSelectValueSearchScreen]
class CatalogFilterSelectValueSearchRoute
    extends PageRouteInfo<CatalogFilterSelectValueSearchRouteArgs> {
  CatalogFilterSelectValueSearchRoute({
    Key? key,
    required int index,
    required String title,
    required List<FilterItemDataModel> filterItems,
    required List<FilterItemDataModel> selectFilter,
    required dynamic Function(int) onDelete,
    required dynamic Function(
      FilterItemDataModel,
      int,
    ) onSelect,
    List<PageRouteInfo>? children,
  }) : super(
          CatalogFilterSelectValueSearchRoute.name,
          args: CatalogFilterSelectValueSearchRouteArgs(
            key: key,
            index: index,
            title: title,
            filterItems: filterItems,
            selectFilter: selectFilter,
            onDelete: onDelete,
            onSelect: onSelect,
          ),
          initialChildren: children,
        );

  static const String name = 'CatalogFilterSelectValueSearchRoute';

  static const PageInfo<CatalogFilterSelectValueSearchRouteArgs> page =
      PageInfo<CatalogFilterSelectValueSearchRouteArgs>(name);
}

class CatalogFilterSelectValueSearchRouteArgs {
  const CatalogFilterSelectValueSearchRouteArgs({
    this.key,
    required this.index,
    required this.title,
    required this.filterItems,
    required this.selectFilter,
    required this.onDelete,
    required this.onSelect,
  });

  final Key? key;

  final int index;

  final String title;

  final List<FilterItemDataModel> filterItems;

  final List<FilterItemDataModel> selectFilter;

  final dynamic Function(int) onDelete;

  final dynamic Function(
    FilterItemDataModel,
    int,
  ) onSelect;

  @override
  String toString() {
    return 'CatalogFilterSelectValueSearchRouteArgs{key: $key, index: $index, title: $title, filterItems: $filterItems, selectFilter: $selectFilter, onDelete: $onDelete, onSelect: $onSelect}';
  }
}

/// generated route for
/// [DashboardPage]
class DashboardRoute extends PageRouteInfo<void> {
  const DashboardRoute({List<PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ChatScreen]
class ChatRoute extends PageRouteInfo<void> {
  const ChatRoute({List<PageRouteInfo>? children})
      : super(
          ChatRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ChatMessangerScreen]
class ChatMessangerRoute extends PageRouteInfo<void> {
  const ChatMessangerRoute({List<PageRouteInfo>? children})
      : super(
          ChatMessangerRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatMessangerRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [BlindChickenCashbackAndDiscountsScreen]
class BlindChickenCashbackAndDiscountsRoute extends PageRouteInfo<void> {
  const BlindChickenCashbackAndDiscountsRoute({List<PageRouteInfo>? children})
      : super(
          BlindChickenCashbackAndDiscountsRoute.name,
          initialChildren: children,
        );

  static const String name = 'BlindChickenCashbackAndDiscountsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ContactsScreen]
class ContactsRoute extends PageRouteInfo<void> {
  const ContactsRoute({List<PageRouteInfo>? children})
      : super(
          ContactsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ContactsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FavouritesFilterSelectValueScreen]
class FavouritesFilterSelectValueRoute
    extends PageRouteInfo<FavouritesFilterSelectValueRouteArgs> {
  FavouritesFilterSelectValueRoute({
    Key? key,
    required int index,
    required String title,
    required List<FilterItemDataModel> filterItems,
    required List<FilterItemDataModel> selectFilter,
    required dynamic Function(int) onDelete,
    required dynamic Function(
      FilterItemDataModel,
      int,
    ) onSelect,
    List<PageRouteInfo>? children,
  }) : super(
          FavouritesFilterSelectValueRoute.name,
          args: FavouritesFilterSelectValueRouteArgs(
            key: key,
            index: index,
            title: title,
            filterItems: filterItems,
            selectFilter: selectFilter,
            onDelete: onDelete,
            onSelect: onSelect,
          ),
          initialChildren: children,
        );

  static const String name = 'FavouritesFilterSelectValueRoute';

  static const PageInfo<FavouritesFilterSelectValueRouteArgs> page =
      PageInfo<FavouritesFilterSelectValueRouteArgs>(name);
}

class FavouritesFilterSelectValueRouteArgs {
  const FavouritesFilterSelectValueRouteArgs({
    this.key,
    required this.index,
    required this.title,
    required this.filterItems,
    required this.selectFilter,
    required this.onDelete,
    required this.onSelect,
  });

  final Key? key;

  final int index;

  final String title;

  final List<FilterItemDataModel> filterItems;

  final List<FilterItemDataModel> selectFilter;

  final dynamic Function(int) onDelete;

  final dynamic Function(
    FilterItemDataModel,
    int,
  ) onSelect;

  @override
  String toString() {
    return 'FavouritesFilterSelectValueRouteArgs{key: $key, index: $index, title: $title, filterItems: $filterItems, selectFilter: $selectFilter, onDelete: $onDelete, onSelect: $onSelect}';
  }
}

/// generated route for
/// [FavouritesFilterSelectValueSearchScreen]
class FavouritesFilterSelectValueSearchRoute
    extends PageRouteInfo<FavouritesFilterSelectValueSearchRouteArgs> {
  FavouritesFilterSelectValueSearchRoute({
    Key? key,
    required int index,
    required String title,
    required List<FilterItemDataModel> filterItems,
    required List<FilterItemDataModel> selectFilter,
    required dynamic Function(int) onDelete,
    required dynamic Function(
      FilterItemDataModel,
      int,
    ) onSelect,
    List<PageRouteInfo>? children,
  }) : super(
          FavouritesFilterSelectValueSearchRoute.name,
          args: FavouritesFilterSelectValueSearchRouteArgs(
            key: key,
            index: index,
            title: title,
            filterItems: filterItems,
            selectFilter: selectFilter,
            onDelete: onDelete,
            onSelect: onSelect,
          ),
          initialChildren: children,
        );

  static const String name = 'FavouritesFilterSelectValueSearchRoute';

  static const PageInfo<FavouritesFilterSelectValueSearchRouteArgs> page =
      PageInfo<FavouritesFilterSelectValueSearchRouteArgs>(name);
}

class FavouritesFilterSelectValueSearchRouteArgs {
  const FavouritesFilterSelectValueSearchRouteArgs({
    this.key,
    required this.index,
    required this.title,
    required this.filterItems,
    required this.selectFilter,
    required this.onDelete,
    required this.onSelect,
  });

  final Key? key;

  final int index;

  final String title;

  final List<FilterItemDataModel> filterItems;

  final List<FilterItemDataModel> selectFilter;

  final dynamic Function(int) onDelete;

  final dynamic Function(
    FilterItemDataModel,
    int,
  ) onSelect;

  @override
  String toString() {
    return 'FavouritesFilterSelectValueSearchRouteArgs{key: $key, index: $index, title: $title, filterItems: $filterItems, selectFilter: $selectFilter, onDelete: $onDelete, onSelect: $onSelect}';
  }
}

/// generated route for
/// [FavouritesFiltersScreen]
class FavouritesFiltersRoute extends PageRouteInfo<void> {
  const FavouritesFiltersRoute({List<PageRouteInfo>? children})
      : super(
          FavouritesFiltersRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavouritesFiltersRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FavouritesScreen]
class FavouritesRoute extends PageRouteInfo<void> {
  const FavouritesRoute({List<PageRouteInfo>? children})
      : super(
          FavouritesRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavouritesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [InfoScreen]
class InfoRoute extends PageRouteInfo<void> {
  const InfoRoute({List<PageRouteInfo>? children})
      : super(
          InfoRoute.name,
          initialChildren: children,
        );

  static const String name = 'InfoRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [YandexMapScreen]
class YandexMapRoute extends PageRouteInfo<void> {
  const YandexMapRoute({List<PageRouteInfo>? children})
      : super(
          YandexMapRoute.name,
          initialChildren: children,
        );

  static const String name = 'YandexMapRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [AccountScreen]
class AccountRoute extends PageRouteInfo<void> {
  const AccountRoute({List<PageRouteInfo>? children})
      : super(
          AccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'AccountRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [BlindChickenPdfViewScreen]
class BlindChickenPdfViewRoute
    extends PageRouteInfo<BlindChickenPdfViewRouteArgs> {
  BlindChickenPdfViewRoute({
    Key? key,
    required String url,
    List<PageRouteInfo>? children,
  }) : super(
          BlindChickenPdfViewRoute.name,
          args: BlindChickenPdfViewRouteArgs(
            key: key,
            url: url,
          ),
          initialChildren: children,
        );

  static const String name = 'BlindChickenPdfViewRoute';

  static const PageInfo<BlindChickenPdfViewRouteArgs> page =
      PageInfo<BlindChickenPdfViewRouteArgs>(name);
}

class BlindChickenPdfViewRouteArgs {
  const BlindChickenPdfViewRouteArgs({
    this.key,
    required this.url,
  });

  final Key? key;

  final String url;

  @override
  String toString() {
    return 'BlindChickenPdfViewRouteArgs{key: $key, url: $url}';
  }
}

/// generated route for
/// [BlindChickenWebViewScreen]
class BlindChickenWebViewRoute
    extends PageRouteInfo<BlindChickenWebViewRouteArgs> {
  BlindChickenWebViewRoute({
    Key? key,
    required String url,
    List<PageRouteInfo>? children,
  }) : super(
          BlindChickenWebViewRoute.name,
          args: BlindChickenWebViewRouteArgs(
            key: key,
            url: url,
          ),
          initialChildren: children,
        );

  static const String name = 'BlindChickenWebViewRoute';

  static const PageInfo<BlindChickenWebViewRouteArgs> page =
      PageInfo<BlindChickenWebViewRouteArgs>(name);
}

class BlindChickenWebViewRouteArgs {
  const BlindChickenWebViewRouteArgs({
    this.key,
    required this.url,
  });

  final Key? key;

  final String url;

  @override
  String toString() {
    return 'BlindChickenWebViewRouteArgs{key: $key, url: $url}';
  }
}

/// generated route for
/// [SberbankPaymentWebViewScreen]
class SberbankPaymentWebViewRoute extends PageRouteInfo<void> {
  const SberbankPaymentWebViewRoute({List<PageRouteInfo>? children})
      : super(
          SberbankPaymentWebViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'SberbankPaymentWebViewRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [GiftCardScreen]
class GiftCardRoute extends PageRouteInfo<void> {
  const GiftCardRoute({List<PageRouteInfo>? children})
      : super(
          GiftCardRoute.name,
          initialChildren: children,
        );

  static const String name = 'GiftCardRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [GiftCardDeliveryInfoScreen]
class GiftCardDeliveryInfoRoute
    extends PageRouteInfo<GiftCardDeliveryInfoRouteArgs> {
  GiftCardDeliveryInfoRoute({
    Key? key,
    required String title,
    required void Function(String) selectItem,
    List<PageRouteInfo>? children,
  }) : super(
          GiftCardDeliveryInfoRoute.name,
          args: GiftCardDeliveryInfoRouteArgs(
            key: key,
            title: title,
            selectItem: selectItem,
          ),
          initialChildren: children,
        );

  static const String name = 'GiftCardDeliveryInfoRoute';

  static const PageInfo<GiftCardDeliveryInfoRouteArgs> page =
      PageInfo<GiftCardDeliveryInfoRouteArgs>(name);
}

class GiftCardDeliveryInfoRouteArgs {
  const GiftCardDeliveryInfoRouteArgs({
    this.key,
    required this.title,
    required this.selectItem,
  });

  final Key? key;

  final String title;

  final void Function(String) selectItem;

  @override
  String toString() {
    return 'GiftCardDeliveryInfoRouteArgs{key: $key, title: $title, selectItem: $selectItem}';
  }
}

/// generated route for
/// [GiftVirualCardColorsScreen]
class GiftVirualCardColorsRoute
    extends PageRouteInfo<GiftVirualCardColorsRouteArgs> {
  GiftVirualCardColorsRoute({
    Key? key,
    required Map<dynamic, dynamic> selectedColor,
    required void Function(Map<dynamic, dynamic>) onChange,
    List<PageRouteInfo>? children,
  }) : super(
          GiftVirualCardColorsRoute.name,
          args: GiftVirualCardColorsRouteArgs(
            key: key,
            selectedColor: selectedColor,
            onChange: onChange,
          ),
          initialChildren: children,
        );

  static const String name = 'GiftVirualCardColorsRoute';

  static const PageInfo<GiftVirualCardColorsRouteArgs> page =
      PageInfo<GiftVirualCardColorsRouteArgs>(name);
}

class GiftVirualCardColorsRouteArgs {
  const GiftVirualCardColorsRouteArgs({
    this.key,
    required this.selectedColor,
    required this.onChange,
  });

  final Key? key;

  final Map<dynamic, dynamic> selectedColor;

  final void Function(Map<dynamic, dynamic>) onChange;

  @override
  String toString() {
    return 'GiftVirualCardColorsRouteArgs{key: $key, selectedColor: $selectedColor, onChange: $onChange}';
  }
}

/// generated route for
/// [GiftYandexMapScreen]
class GiftYandexMapRoute extends PageRouteInfo<GiftYandexMapRouteArgs> {
  GiftYandexMapRoute({
    Key? key,
    required void Function(MapPointDataModel) onMapPoint,
    required MapPointDataModel point,
    List<PageRouteInfo>? children,
  }) : super(
          GiftYandexMapRoute.name,
          args: GiftYandexMapRouteArgs(
            key: key,
            onMapPoint: onMapPoint,
            point: point,
          ),
          initialChildren: children,
        );

  static const String name = 'GiftYandexMapRoute';

  static const PageInfo<GiftYandexMapRouteArgs> page =
      PageInfo<GiftYandexMapRouteArgs>(name);
}

class GiftYandexMapRouteArgs {
  const GiftYandexMapRouteArgs({
    this.key,
    required this.onMapPoint,
    required this.point,
  });

  final Key? key;

  final void Function(MapPointDataModel) onMapPoint;

  final MapPointDataModel point;

  @override
  String toString() {
    return 'GiftYandexMapRouteArgs{key: $key, onMapPoint: $onMapPoint, point: $point}';
  }
}

/// generated route for
/// [ShoppingCartScreen]
class ShoppingCartRoute extends PageRouteInfo<void> {
  const ShoppingCartRoute({List<PageRouteInfo>? children})
      : super(
          ShoppingCartRoute.name,
          initialChildren: children,
        );

  static const String name = 'ShoppingCartRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ShoppingCartAutoRouterScreen]
class ShoppingCartAutoRouterRoute extends PageRouteInfo<void> {
  const ShoppingCartAutoRouterRoute({List<PageRouteInfo>? children})
      : super(
          ShoppingCartAutoRouterRoute.name,
          initialChildren: children,
        );

  static const String name = 'ShoppingCartAutoRouterRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ShoppingCartDeliveryInfoScreen]
class ShoppingCartDeliveryInfoRoute
    extends PageRouteInfo<ShoppingCartDeliveryInfoRouteArgs> {
  ShoppingCartDeliveryInfoRoute({
    Key? key,
    required String title,
    required void Function(String) selectItem,
    List<PageRouteInfo>? children,
  }) : super(
          ShoppingCartDeliveryInfoRoute.name,
          args: ShoppingCartDeliveryInfoRouteArgs(
            key: key,
            title: title,
            selectItem: selectItem,
          ),
          initialChildren: children,
        );

  static const String name = 'ShoppingCartDeliveryInfoRoute';

  static const PageInfo<ShoppingCartDeliveryInfoRouteArgs> page =
      PageInfo<ShoppingCartDeliveryInfoRouteArgs>(name);
}

class ShoppingCartDeliveryInfoRouteArgs {
  const ShoppingCartDeliveryInfoRouteArgs({
    this.key,
    required this.title,
    required this.selectItem,
  });

  final Key? key;

  final String title;

  final void Function(String) selectItem;

  @override
  String toString() {
    return 'ShoppingCartDeliveryInfoRouteArgs{key: $key, title: $title, selectItem: $selectItem}';
  }
}

/// generated route for
/// [ShoppingYandexMapScreen]
class ShoppingYandexMapRoute extends PageRouteInfo<ShoppingYandexMapRouteArgs> {
  ShoppingYandexMapRoute({
    Key? key,
    required void Function(MapPointDataModel) onMapPoint,
    required MapPointDataModel point,
    List<PageRouteInfo>? children,
  }) : super(
          ShoppingYandexMapRoute.name,
          args: ShoppingYandexMapRouteArgs(
            key: key,
            onMapPoint: onMapPoint,
            point: point,
          ),
          initialChildren: children,
        );

  static const String name = 'ShoppingYandexMapRoute';

  static const PageInfo<ShoppingYandexMapRouteArgs> page =
      PageInfo<ShoppingYandexMapRouteArgs>(name);
}

class ShoppingYandexMapRouteArgs {
  const ShoppingYandexMapRouteArgs({
    this.key,
    required this.onMapPoint,
    required this.point,
  });

  final Key? key;

  final void Function(MapPointDataModel) onMapPoint;

  final MapPointDataModel point;

  @override
  String toString() {
    return 'ShoppingYandexMapRouteArgs{key: $key, onMapPoint: $onMapPoint, point: $point}';
  }
}

/// generated route for
/// [LoginScreen]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
