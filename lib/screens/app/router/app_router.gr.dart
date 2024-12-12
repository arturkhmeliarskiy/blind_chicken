// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [AccountScreen]
class AccountRoute extends PageRouteInfo<void> {
  const AccountRoute({List<PageRouteInfo>? children})
      : super(
          AccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'AccountRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AccountScreen();
    },
  );
}

/// generated route for
/// [BlindChickenCashbackAndDiscountsScreen]
class BlindChickenCashbackAndDiscountsRoute
    extends PageRouteInfo<BlindChickenCashbackAndDiscountsRouteArgs> {
  BlindChickenCashbackAndDiscountsRoute({
    Key? key,
    dynamic Function(BuildContext)? onBack,
    List<PageRouteInfo>? children,
  }) : super(
          BlindChickenCashbackAndDiscountsRoute.name,
          args: BlindChickenCashbackAndDiscountsRouteArgs(
            key: key,
            onBack: onBack,
          ),
          initialChildren: children,
        );

  static const String name = 'BlindChickenCashbackAndDiscountsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<BlindChickenCashbackAndDiscountsRouteArgs>(
          orElse: () => const BlindChickenCashbackAndDiscountsRouteArgs());
      return BlindChickenCashbackAndDiscountsScreen(
        key: args.key,
        onBack: args.onBack,
      );
    },
  );
}

class BlindChickenCashbackAndDiscountsRouteArgs {
  const BlindChickenCashbackAndDiscountsRouteArgs({
    this.key,
    this.onBack,
  });

  final Key? key;

  final dynamic Function(BuildContext)? onBack;

  @override
  String toString() {
    return 'BlindChickenCashbackAndDiscountsRouteArgs{key: $key, onBack: $onBack}';
  }
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<BlindChickenPdfViewRouteArgs>();
      return BlindChickenPdfViewScreen(
        key: args.key,
        url: args.url,
      );
    },
  );
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<BlindChickenWebViewRouteArgs>();
      return BlindChickenWebViewScreen(
        key: args.key,
        url: args.url,
      );
    },
  );
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
/// [BoutiquePreviewMediaScreen]
class BoutiquePreviewMediaRoute
    extends PageRouteInfo<BoutiquePreviewMediaRouteArgs> {
  BoutiquePreviewMediaRoute({
    Key? key,
    required List<String> media,
    required VoidCallback goBotton,
    required int selectIndex,
    required List<BoutiqueFotoDetailDataModel> listImages,
    List<PageRouteInfo>? children,
  }) : super(
          BoutiquePreviewMediaRoute.name,
          args: BoutiquePreviewMediaRouteArgs(
            key: key,
            media: media,
            goBotton: goBotton,
            selectIndex: selectIndex,
            listImages: listImages,
          ),
          initialChildren: children,
        );

  static const String name = 'BoutiquePreviewMediaRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<BoutiquePreviewMediaRouteArgs>();
      return BoutiquePreviewMediaScreen(
        key: args.key,
        media: args.media,
        goBotton: args.goBotton,
        selectIndex: args.selectIndex,
        listImages: args.listImages,
      );
    },
  );
}

class BoutiquePreviewMediaRouteArgs {
  const BoutiquePreviewMediaRouteArgs({
    this.key,
    required this.media,
    required this.goBotton,
    required this.selectIndex,
    required this.listImages,
  });

  final Key? key;

  final List<String> media;

  final VoidCallback goBotton;

  final int selectIndex;

  final List<BoutiqueFotoDetailDataModel> listImages;

  @override
  String toString() {
    return 'BoutiquePreviewMediaRouteArgs{key: $key, media: $media, goBotton: $goBotton, selectIndex: $selectIndex, listImages: $listImages}';
  }
}

/// generated route for
/// [BoutiqueYandexMapScreen]
class BoutiqueYandexMapRoute extends PageRouteInfo<BoutiqueYandexMapRouteArgs> {
  BoutiqueYandexMapRoute({
    Key? key,
    required BoutiqueDataModel mapPoint,
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<BoutiqueYandexMapRouteArgs>();
      return BoutiqueYandexMapScreen(
        key: args.key,
        mapPoint: args.mapPoint,
      );
    },
  );
}

class BoutiqueYandexMapRouteArgs {
  const BoutiqueYandexMapRouteArgs({
    this.key,
    required this.mapPoint,
  });

  final Key? key;

  final BoutiqueDataModel mapPoint;

  @override
  String toString() {
    return 'BoutiqueYandexMapRouteArgs{key: $key, mapPoint: $mapPoint}';
  }
}

/// generated route for
/// [BoutiquesDescriptionScreen]
class BoutiquesDescriptionRoute
    extends PageRouteInfo<BoutiquesDescriptionRouteArgs> {
  BoutiquesDescriptionRoute({
    Key? key,
    String uidStore = '',
    bool isNotification = false,
    String lastPath = '',
    NewsInfoItemDataModel? newsInfo,
    MediaInfoItemDataModel? newsMediaInfo,
    NotificationInfoItemDataModel? newsNotificationInfo,
    String? messageId,
    String? idNews,
    List<PageRouteInfo>? children,
  }) : super(
          BoutiquesDescriptionRoute.name,
          args: BoutiquesDescriptionRouteArgs(
            key: key,
            uidStore: uidStore,
            isNotification: isNotification,
            lastPath: lastPath,
            newsInfo: newsInfo,
            newsMediaInfo: newsMediaInfo,
            newsNotificationInfo: newsNotificationInfo,
            messageId: messageId,
            idNews: idNews,
          ),
          initialChildren: children,
        );

  static const String name = 'BoutiquesDescriptionRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<BoutiquesDescriptionRouteArgs>(
          orElse: () => const BoutiquesDescriptionRouteArgs());
      return BoutiquesDescriptionScreen(
        key: args.key,
        uidStore: args.uidStore,
        isNotification: args.isNotification,
        lastPath: args.lastPath,
        newsInfo: args.newsInfo,
        newsMediaInfo: args.newsMediaInfo,
        newsNotificationInfo: args.newsNotificationInfo,
        messageId: args.messageId,
        idNews: args.idNews,
      );
    },
  );
}

class BoutiquesDescriptionRouteArgs {
  const BoutiquesDescriptionRouteArgs({
    this.key,
    this.uidStore = '',
    this.isNotification = false,
    this.lastPath = '',
    this.newsInfo,
    this.newsMediaInfo,
    this.newsNotificationInfo,
    this.messageId,
    this.idNews,
  });

  final Key? key;

  final String uidStore;

  final bool isNotification;

  final String lastPath;

  final NewsInfoItemDataModel? newsInfo;

  final MediaInfoItemDataModel? newsMediaInfo;

  final NotificationInfoItemDataModel? newsNotificationInfo;

  final String? messageId;

  final String? idNews;

  @override
  String toString() {
    return 'BoutiquesDescriptionRouteArgs{key: $key, uidStore: $uidStore, isNotification: $isNotification, lastPath: $lastPath, newsInfo: $newsInfo, newsMediaInfo: $newsMediaInfo, newsNotificationInfo: $newsNotificationInfo, messageId: $messageId, idNews: $idNews}';
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const BoutiquesScreen();
    },
  );
}

/// generated route for
/// [BrandsScreen]
class BrandsRoute extends PageRouteInfo<BrandsRouteArgs> {
  BrandsRoute({
    Key? key,
    String lastPath = '',
    NewsInfoItemDataModel? newsInfo,
    MediaInfoItemDataModel? newsMediaInfo,
    NotificationInfoItemDataModel? newsNotificationInfo,
    String? messageId,
    String? idNews,
    List<PageRouteInfo>? children,
  }) : super(
          BrandsRoute.name,
          args: BrandsRouteArgs(
            key: key,
            lastPath: lastPath,
            newsInfo: newsInfo,
            newsMediaInfo: newsMediaInfo,
            newsNotificationInfo: newsNotificationInfo,
            messageId: messageId,
            idNews: idNews,
          ),
          initialChildren: children,
        );

  static const String name = 'BrandsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<BrandsRouteArgs>(orElse: () => const BrandsRouteArgs());
      return BrandsScreen(
        key: args.key,
        lastPath: args.lastPath,
        newsInfo: args.newsInfo,
        newsMediaInfo: args.newsMediaInfo,
        newsNotificationInfo: args.newsNotificationInfo,
        messageId: args.messageId,
        idNews: args.idNews,
      );
    },
  );
}

class BrandsRouteArgs {
  const BrandsRouteArgs({
    this.key,
    this.lastPath = '',
    this.newsInfo,
    this.newsMediaInfo,
    this.newsNotificationInfo,
    this.messageId,
    this.idNews,
  });

  final Key? key;

  final String lastPath;

  final NewsInfoItemDataModel? newsInfo;

  final MediaInfoItemDataModel? newsMediaInfo;

  final NotificationInfoItemDataModel? newsNotificationInfo;

  final String? messageId;

  final String? idNews;

  @override
  String toString() {
    return 'BrandsRouteArgs{key: $key, lastPath: $lastPath, newsInfo: $newsInfo, newsMediaInfo: $newsMediaInfo, newsNotificationInfo: $newsNotificationInfo, messageId: $messageId, idNews: $idNews}';
  }
}

/// generated route for
/// [CardInfoScreen]
class CardInfoRoute extends PageRouteInfo<CardInfoRouteArgs> {
  CardInfoRoute({
    Key? key,
    required ProductDataModel product,
    required bool isLike,
    required List<ProductDataModel> listItems,
    required bool isChildRoute,
    required String titleScreen,
    required String codeProduct,
    required List<ProductDataModel> favouritesProducts,
    List<PageRouteInfo>? children,
  }) : super(
          CardInfoRoute.name,
          args: CardInfoRouteArgs(
            key: key,
            product: product,
            isLike: isLike,
            listItems: listItems,
            isChildRoute: isChildRoute,
            titleScreen: titleScreen,
            codeProduct: codeProduct,
            favouritesProducts: favouritesProducts,
          ),
          initialChildren: children,
        );

  static const String name = 'CardInfoRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CardInfoRouteArgs>();
      return CardInfoScreen(
        key: args.key,
        product: args.product,
        isLike: args.isLike,
        listItems: args.listItems,
        isChildRoute: args.isChildRoute,
        titleScreen: args.titleScreen,
        codeProduct: args.codeProduct,
        favouritesProducts: args.favouritesProducts,
      );
    },
  );
}

class CardInfoRouteArgs {
  const CardInfoRouteArgs({
    this.key,
    required this.product,
    required this.isLike,
    required this.listItems,
    required this.isChildRoute,
    required this.titleScreen,
    required this.codeProduct,
    required this.favouritesProducts,
  });

  final Key? key;

  final ProductDataModel product;

  final bool isLike;

  final List<ProductDataModel> listItems;

  final bool isChildRoute;

  final String titleScreen;

  final String codeProduct;

  final List<ProductDataModel> favouritesProducts;

  @override
  String toString() {
    return 'CardInfoRouteArgs{key: $key, product: $product, isLike: $isLike, listItems: $listItems, isChildRoute: $isChildRoute, titleScreen: $titleScreen, codeProduct: $codeProduct, favouritesProducts: $favouritesProducts}';
  }
}

/// generated route for
/// [CatalogCardInfoScreen]
class CatalogCardInfoRoute extends PageRouteInfo<CatalogCardInfoRouteArgs> {
  CatalogCardInfoRoute({
    Key? key,
    ProductDataModel? item,
    String? code = '',
    required bool isLike,
    required List<ProductDataModel> listItems,
    required List<ProductDataModel> favouritesProducts,
    required bool isChildRoute,
    String lastPath = '',
    NewsInfoItemDataModel? newsInfo,
    MediaInfoItemDataModel? newsMediaInfo,
    NotificationInfoItemDataModel? newsNotificationInfo,
    String? messageId,
    String? idNews,
    List<PageRouteInfo>? children,
  }) : super(
          CatalogCardInfoRoute.name,
          args: CatalogCardInfoRouteArgs(
            key: key,
            item: item,
            code: code,
            isLike: isLike,
            listItems: listItems,
            favouritesProducts: favouritesProducts,
            isChildRoute: isChildRoute,
            lastPath: lastPath,
            newsInfo: newsInfo,
            newsMediaInfo: newsMediaInfo,
            newsNotificationInfo: newsNotificationInfo,
            messageId: messageId,
            idNews: idNews,
          ),
          initialChildren: children,
        );

  static const String name = 'CatalogCardInfoRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CatalogCardInfoRouteArgs>();
      return CatalogCardInfoScreen(
        key: args.key,
        item: args.item,
        code: args.code,
        isLike: args.isLike,
        listItems: args.listItems,
        favouritesProducts: args.favouritesProducts,
        isChildRoute: args.isChildRoute,
        lastPath: args.lastPath,
        newsInfo: args.newsInfo,
        newsMediaInfo: args.newsMediaInfo,
        newsNotificationInfo: args.newsNotificationInfo,
        messageId: args.messageId,
        idNews: args.idNews,
      );
    },
  );
}

class CatalogCardInfoRouteArgs {
  const CatalogCardInfoRouteArgs({
    this.key,
    this.item,
    this.code = '',
    required this.isLike,
    required this.listItems,
    required this.favouritesProducts,
    required this.isChildRoute,
    this.lastPath = '',
    this.newsInfo,
    this.newsMediaInfo,
    this.newsNotificationInfo,
    this.messageId,
    this.idNews,
  });

  final Key? key;

  final ProductDataModel? item;

  final String? code;

  final bool isLike;

  final List<ProductDataModel> listItems;

  final List<ProductDataModel> favouritesProducts;

  final bool isChildRoute;

  final String lastPath;

  final NewsInfoItemDataModel? newsInfo;

  final MediaInfoItemDataModel? newsMediaInfo;

  final NotificationInfoItemDataModel? newsNotificationInfo;

  final String? messageId;

  final String? idNews;

  @override
  String toString() {
    return 'CatalogCardInfoRouteArgs{key: $key, item: $item, code: $code, isLike: $isLike, listItems: $listItems, favouritesProducts: $favouritesProducts, isChildRoute: $isChildRoute, lastPath: $lastPath, newsInfo: $newsInfo, newsMediaInfo: $newsMediaInfo, newsNotificationInfo: $newsNotificationInfo, messageId: $messageId, idNews: $idNews}';
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
    required dynamic Function(
      FilterItemDataModel,
      int,
    ) onDelete,
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CatalogFilterSelectValueRouteArgs>();
      return CatalogFilterSelectValueScreen(
        key: args.key,
        index: args.index,
        title: args.title,
        filterItems: args.filterItems,
        selectFilter: args.selectFilter,
        onDelete: args.onDelete,
        onSelect: args.onSelect,
      );
    },
  );
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

  final dynamic Function(
    FilterItemDataModel,
    int,
  ) onDelete;

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
/// [CatalogFilterSelectValueSearchScreen]
class CatalogFilterSelectValueSearchRoute
    extends PageRouteInfo<CatalogFilterSelectValueSearchRouteArgs> {
  CatalogFilterSelectValueSearchRoute({
    Key? key,
    required int index,
    required String title,
    required List<FilterItemDataModel> filterItems,
    required List<FilterItemDataModel> selectFilter,
    required dynamic Function(
      FilterItemDataModel,
      int,
    ) onDelete,
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CatalogFilterSelectValueSearchRouteArgs>();
      return CatalogFilterSelectValueSearchScreen(
        key: args.key,
        index: args.index,
        title: args.title,
        filterItems: args.filterItems,
        selectFilter: args.selectFilter,
        onDelete: args.onDelete,
        onSelect: args.onSelect,
      );
    },
  );
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

  final dynamic Function(
    FilterItemDataModel,
    int,
  ) onDelete;

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
/// [CatalogPreviewImagesScreen]
class CatalogPreviewImagesRoute
    extends PageRouteInfo<CatalogPreviewImagesRouteArgs> {
  CatalogPreviewImagesRoute({
    Key? key,
    required List<String> listImages,
    required VoidCallback goBotton,
    required VoidCallback goBottonInfoProduct,
    required int selectIndex,
    required DetailProductVideoDataModel video,
    List<PageRouteInfo>? children,
  }) : super(
          CatalogPreviewImagesRoute.name,
          args: CatalogPreviewImagesRouteArgs(
            key: key,
            listImages: listImages,
            goBotton: goBotton,
            goBottonInfoProduct: goBottonInfoProduct,
            selectIndex: selectIndex,
            video: video,
          ),
          initialChildren: children,
        );

  static const String name = 'CatalogPreviewImagesRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CatalogPreviewImagesRouteArgs>();
      return CatalogPreviewImagesScreen(
        key: args.key,
        listImages: args.listImages,
        goBotton: args.goBotton,
        goBottonInfoProduct: args.goBottonInfoProduct,
        selectIndex: args.selectIndex,
        video: args.video,
      );
    },
  );
}

class CatalogPreviewImagesRouteArgs {
  const CatalogPreviewImagesRouteArgs({
    this.key,
    required this.listImages,
    required this.goBotton,
    required this.goBottonInfoProduct,
    required this.selectIndex,
    required this.video,
  });

  final Key? key;

  final List<String> listImages;

  final VoidCallback goBotton;

  final VoidCallback goBottonInfoProduct;

  final int selectIndex;

  final DetailProductVideoDataModel video;

  @override
  String toString() {
    return 'CatalogPreviewImagesRouteArgs{key: $key, listImages: $listImages, goBotton: $goBotton, goBottonInfoProduct: $goBottonInfoProduct, selectIndex: $selectIndex, video: $video}';
  }
}

/// generated route for
/// [CatalogScreen]
class CatalogRoute extends PageRouteInfo<CatalogRouteArgs> {
  CatalogRoute({
    Key? key,
    bool isBack = true,
    VoidCallback? onBack,
    required String title,
    required String url,
    bool isNotification = false,
    String sort = '',
    FilterNotifcationDataModel? filterNotifcation,
    String lastPath = '',
    NewsInfoItemDataModel? newsInfo,
    MediaInfoItemDataModel? newsMediaInfo,
    NotificationInfoItemDataModel? newsNotificationInfo,
    String? messageId,
    String? idNews,
    List<PageRouteInfo>? children,
  }) : super(
          CatalogRoute.name,
          args: CatalogRouteArgs(
            key: key,
            isBack: isBack,
            onBack: onBack,
            title: title,
            url: url,
            isNotification: isNotification,
            sort: sort,
            filterNotifcation: filterNotifcation,
            lastPath: lastPath,
            newsInfo: newsInfo,
            newsMediaInfo: newsMediaInfo,
            newsNotificationInfo: newsNotificationInfo,
            messageId: messageId,
            idNews: idNews,
          ),
          initialChildren: children,
        );

  static const String name = 'CatalogRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CatalogRouteArgs>();
      return CatalogScreen(
        key: args.key,
        isBack: args.isBack,
        onBack: args.onBack,
        title: args.title,
        url: args.url,
        isNotification: args.isNotification,
        sort: args.sort,
        filterNotifcation: args.filterNotifcation,
        lastPath: args.lastPath,
        newsInfo: args.newsInfo,
        newsMediaInfo: args.newsMediaInfo,
        newsNotificationInfo: args.newsNotificationInfo,
        messageId: args.messageId,
        idNews: args.idNews,
      );
    },
  );
}

class CatalogRouteArgs {
  const CatalogRouteArgs({
    this.key,
    this.isBack = true,
    this.onBack,
    required this.title,
    required this.url,
    this.isNotification = false,
    this.sort = '',
    this.filterNotifcation,
    this.lastPath = '',
    this.newsInfo,
    this.newsMediaInfo,
    this.newsNotificationInfo,
    this.messageId,
    this.idNews,
  });

  final Key? key;

  final bool isBack;

  final VoidCallback? onBack;

  final String title;

  final String url;

  final bool isNotification;

  final String sort;

  final FilterNotifcationDataModel? filterNotifcation;

  final String lastPath;

  final NewsInfoItemDataModel? newsInfo;

  final MediaInfoItemDataModel? newsMediaInfo;

  final NotificationInfoItemDataModel? newsNotificationInfo;

  final String? messageId;

  final String? idNews;

  @override
  String toString() {
    return 'CatalogRouteArgs{key: $key, isBack: $isBack, onBack: $onBack, title: $title, url: $url, isNotification: $isNotification, sort: $sort, filterNotifcation: $filterNotifcation, lastPath: $lastPath, newsInfo: $newsInfo, newsMediaInfo: $newsMediaInfo, newsNotificationInfo: $newsNotificationInfo, messageId: $messageId, idNews: $idNews}';
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CatalogSearchAutoRouterScreen();
    },
  );
}

/// generated route for
/// [CatalogSearchCardInfoResultScreen]
class CatalogSearchCardInfoResultRoute
    extends PageRouteInfo<CatalogSearchCardInfoResultRouteArgs> {
  CatalogSearchCardInfoResultRoute({
    Key? key,
    required ProductDataModel item,
    required bool isLike,
    required List<ProductDataModel> listItems,
    required List<ProductDataModel> favouritesProducts,
    required bool isChildRoute,
    List<PageRouteInfo>? children,
  }) : super(
          CatalogSearchCardInfoResultRoute.name,
          args: CatalogSearchCardInfoResultRouteArgs(
            key: key,
            item: item,
            isLike: isLike,
            listItems: listItems,
            favouritesProducts: favouritesProducts,
            isChildRoute: isChildRoute,
          ),
          initialChildren: children,
        );

  static const String name = 'CatalogSearchCardInfoResultRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CatalogSearchCardInfoResultRouteArgs>();
      return CatalogSearchCardInfoResultScreen(
        key: args.key,
        item: args.item,
        isLike: args.isLike,
        listItems: args.listItems,
        favouritesProducts: args.favouritesProducts,
        isChildRoute: args.isChildRoute,
      );
    },
  );
}

class CatalogSearchCardInfoResultRouteArgs {
  const CatalogSearchCardInfoResultRouteArgs({
    this.key,
    required this.item,
    required this.isLike,
    required this.listItems,
    required this.favouritesProducts,
    required this.isChildRoute,
  });

  final Key? key;

  final ProductDataModel item;

  final bool isLike;

  final List<ProductDataModel> listItems;

  final List<ProductDataModel> favouritesProducts;

  final bool isChildRoute;

  @override
  String toString() {
    return 'CatalogSearchCardInfoResultRouteArgs{key: $key, item: $item, isLike: $isLike, listItems: $listItems, favouritesProducts: $favouritesProducts, isChildRoute: $isChildRoute}';
  }
}

/// generated route for
/// [CatalogSearchCardInfoScreen]
class CatalogSearchCardInfoRoute
    extends PageRouteInfo<CatalogSearchCardInfoRouteArgs> {
  CatalogSearchCardInfoRoute({
    Key? key,
    required ProductDataModel item,
    required bool isLike,
    required List<ProductDataModel> listItems,
    required List<ProductDataModel> favouritesProducts,
    required bool isChildRoute,
    List<PageRouteInfo>? children,
  }) : super(
          CatalogSearchCardInfoRoute.name,
          args: CatalogSearchCardInfoRouteArgs(
            key: key,
            item: item,
            isLike: isLike,
            listItems: listItems,
            favouritesProducts: favouritesProducts,
            isChildRoute: isChildRoute,
          ),
          initialChildren: children,
        );

  static const String name = 'CatalogSearchCardInfoRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CatalogSearchCardInfoRouteArgs>();
      return CatalogSearchCardInfoScreen(
        key: args.key,
        item: args.item,
        isLike: args.isLike,
        listItems: args.listItems,
        favouritesProducts: args.favouritesProducts,
        isChildRoute: args.isChildRoute,
      );
    },
  );
}

class CatalogSearchCardInfoRouteArgs {
  const CatalogSearchCardInfoRouteArgs({
    this.key,
    required this.item,
    required this.isLike,
    required this.listItems,
    required this.favouritesProducts,
    required this.isChildRoute,
  });

  final Key? key;

  final ProductDataModel item;

  final bool isLike;

  final List<ProductDataModel> listItems;

  final List<ProductDataModel> favouritesProducts;

  final bool isChildRoute;

  @override
  String toString() {
    return 'CatalogSearchCardInfoRouteArgs{key: $key, item: $item, isLike: $isLike, listItems: $listItems, favouritesProducts: $favouritesProducts, isChildRoute: $isChildRoute}';
  }
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CatalogSearchFiltersScreen();
    },
  );
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CatalogSearchResultScreen();
    },
  );
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CatalogSearchScreen();
    },
  );
}

/// generated route for
/// [CatalogSizeProductScreen]
class CatalogSizeProductRoute
    extends PageRouteInfo<CatalogSizeProductRouteArgs> {
  CatalogSizeProductRoute({
    Key? key,
    required ValueChanged<SkuProductDataModel> onChange,
    required List<SkuProductDataModel> listSizeProduct,
    required SkuProductDataModel selectItem,
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CatalogSizeProductRouteArgs>();
      return CatalogSizeProductScreen(
        key: args.key,
        onChange: args.onChange,
        listSizeProduct: args.listSizeProduct,
        selectItem: args.selectItem,
      );
    },
  );
}

class CatalogSizeProductRouteArgs {
  const CatalogSizeProductRouteArgs({
    this.key,
    required this.onChange,
    required this.listSizeProduct,
    required this.selectItem,
  });

  final Key? key;

  final ValueChanged<SkuProductDataModel> onChange;

  final List<SkuProductDataModel> listSizeProduct;

  final SkuProductDataModel selectItem;

  @override
  String toString() {
    return 'CatalogSizeProductRouteArgs{key: $key, onChange: $onChange, listSizeProduct: $listSizeProduct, selectItem: $selectItem}';
  }
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CategoryScreen();
    },
  );
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ChatMessangerScreen();
    },
  );
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ChatScreen();
    },
  );
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ContactsScreen();
    },
  );
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const DashboardPage();
    },
  );
}

/// generated route for
/// [DoctorAppointmentScreen]
class DoctorAppointmentRoute extends PageRouteInfo<void> {
  const DoctorAppointmentRoute({List<PageRouteInfo>? children})
      : super(
          DoctorAppointmentRoute.name,
          initialChildren: children,
        );

  static const String name = 'DoctorAppointmentRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const DoctorAppointmentScreen();
    },
  );
}

/// generated route for
/// [ElectronicOrderFormsScreen]
class ElectronicOrderFormsRoute extends PageRouteInfo<void> {
  const ElectronicOrderFormsRoute({List<PageRouteInfo>? children})
      : super(
          ElectronicOrderFormsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ElectronicOrderFormsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ElectronicOrderFormsScreen();
    },
  );
}

/// generated route for
/// [FavouritesCardInfoScreen]
class FavouritesCardInfoRoute
    extends PageRouteInfo<FavouritesCardInfoRouteArgs> {
  FavouritesCardInfoRoute({
    Key? key,
    required ProductDataModel item,
    required bool isLike,
    required List<ProductDataModel> listItems,
    required List<ProductDataModel> favouritesProducts,
    required bool isChildRoute,
    List<PageRouteInfo>? children,
  }) : super(
          FavouritesCardInfoRoute.name,
          args: FavouritesCardInfoRouteArgs(
            key: key,
            item: item,
            isLike: isLike,
            listItems: listItems,
            favouritesProducts: favouritesProducts,
            isChildRoute: isChildRoute,
          ),
          initialChildren: children,
        );

  static const String name = 'FavouritesCardInfoRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<FavouritesCardInfoRouteArgs>();
      return FavouritesCardInfoScreen(
        key: args.key,
        item: args.item,
        isLike: args.isLike,
        listItems: args.listItems,
        favouritesProducts: args.favouritesProducts,
        isChildRoute: args.isChildRoute,
      );
    },
  );
}

class FavouritesCardInfoRouteArgs {
  const FavouritesCardInfoRouteArgs({
    this.key,
    required this.item,
    required this.isLike,
    required this.listItems,
    required this.favouritesProducts,
    required this.isChildRoute,
  });

  final Key? key;

  final ProductDataModel item;

  final bool isLike;

  final List<ProductDataModel> listItems;

  final List<ProductDataModel> favouritesProducts;

  final bool isChildRoute;

  @override
  String toString() {
    return 'FavouritesCardInfoRouteArgs{key: $key, item: $item, isLike: $isLike, listItems: $listItems, favouritesProducts: $favouritesProducts, isChildRoute: $isChildRoute}';
  }
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
    required dynamic Function(
      FilterItemDataModel,
      int,
    ) onDelete,
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<FavouritesFilterSelectValueRouteArgs>();
      return FavouritesFilterSelectValueScreen(
        key: args.key,
        index: args.index,
        title: args.title,
        filterItems: args.filterItems,
        selectFilter: args.selectFilter,
        onDelete: args.onDelete,
        onSelect: args.onSelect,
      );
    },
  );
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

  final dynamic Function(
    FilterItemDataModel,
    int,
  ) onDelete;

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
    required dynamic Function(
      FilterItemDataModel,
      int,
    ) onDelete,
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<FavouritesFilterSelectValueSearchRouteArgs>();
      return FavouritesFilterSelectValueSearchScreen(
        key: args.key,
        index: args.index,
        title: args.title,
        filterItems: args.filterItems,
        selectFilter: args.selectFilter,
        onDelete: args.onDelete,
        onSelect: args.onSelect,
      );
    },
  );
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

  final dynamic Function(
    FilterItemDataModel,
    int,
  ) onDelete;

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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const FavouritesFiltersScreen();
    },
  );
}

/// generated route for
/// [FavouritesProductsScreen]
class FavouritesProductsRoute extends PageRouteInfo<void> {
  const FavouritesProductsRoute({List<PageRouteInfo>? children})
      : super(
          FavouritesProductsRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavouritesProductsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const FavouritesProductsScreen();
    },
  );
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const FavouritesScreen();
    },
  );
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
    required dynamic Function(
      FilterItemDataModel,
      int,
    ) onDelete,
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<FilterSelectValueRouteArgs>();
      return FilterSelectValueScreen(
        key: args.key,
        index: args.index,
        title: args.title,
        filterItems: args.filterItems,
        selectFilter: args.selectFilter,
        onDelete: args.onDelete,
        onSelect: args.onSelect,
      );
    },
  );
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

  final dynamic Function(
    FilterItemDataModel,
    int,
  ) onDelete;

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
/// [FilterSelectValueSearchScreen]
class FilterSelectValueSearchRoute
    extends PageRouteInfo<FilterSelectValueSearchRouteArgs> {
  FilterSelectValueSearchRoute({
    Key? key,
    required int index,
    required String title,
    required List<FilterItemDataModel> filterItems,
    required List<FilterItemDataModel> selectFilter,
    required dynamic Function(
      FilterItemDataModel,
      int,
    ) onDelete,
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<FilterSelectValueSearchRouteArgs>();
      return FilterSelectValueSearchScreen(
        key: args.key,
        index: args.index,
        title: args.title,
        filterItems: args.filterItems,
        selectFilter: args.selectFilter,
        onDelete: args.onDelete,
        onSelect: args.onSelect,
      );
    },
  );
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

  final dynamic Function(
    FilterItemDataModel,
    int,
  ) onDelete;

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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const FiltersScreen();
    },
  );
}

/// generated route for
/// [GiftCardDeliveryInfoScreen]
class GiftCardDeliveryInfoRoute
    extends PageRouteInfo<GiftCardDeliveryInfoRouteArgs> {
  GiftCardDeliveryInfoRoute({
    Key? key,
    required String title,
    required ValueChanged<String> selectItem,
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<GiftCardDeliveryInfoRouteArgs>();
      return GiftCardDeliveryInfoScreen(
        key: args.key,
        title: args.title,
        selectItem: args.selectItem,
      );
    },
  );
}

class GiftCardDeliveryInfoRouteArgs {
  const GiftCardDeliveryInfoRouteArgs({
    this.key,
    required this.title,
    required this.selectItem,
  });

  final Key? key;

  final String title;

  final ValueChanged<String> selectItem;

  @override
  String toString() {
    return 'GiftCardDeliveryInfoRouteArgs{key: $key, title: $title, selectItem: $selectItem}';
  }
}

/// generated route for
/// [GiftCardScreen]
class GiftCardRoute extends PageRouteInfo<GiftCardRouteArgs> {
  GiftCardRoute({
    Key? key,
    bool isNotification = false,
    String lastPath = '',
    NewsInfoItemDataModel? newsInfo,
    MediaInfoItemDataModel? newsMediaInfo,
    NotificationInfoItemDataModel? newsNotificationInfo,
    String? idNews,
    String? messageId,
    String? searchQuery,
    List<PageRouteInfo>? children,
  }) : super(
          GiftCardRoute.name,
          args: GiftCardRouteArgs(
            key: key,
            isNotification: isNotification,
            lastPath: lastPath,
            newsInfo: newsInfo,
            newsMediaInfo: newsMediaInfo,
            newsNotificationInfo: newsNotificationInfo,
            idNews: idNews,
            messageId: messageId,
            searchQuery: searchQuery,
          ),
          initialChildren: children,
        );

  static const String name = 'GiftCardRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<GiftCardRouteArgs>(
          orElse: () => const GiftCardRouteArgs());
      return GiftCardScreen(
        key: args.key,
        isNotification: args.isNotification,
        lastPath: args.lastPath,
        newsInfo: args.newsInfo,
        newsMediaInfo: args.newsMediaInfo,
        newsNotificationInfo: args.newsNotificationInfo,
        idNews: args.idNews,
        messageId: args.messageId,
        searchQuery: args.searchQuery,
      );
    },
  );
}

class GiftCardRouteArgs {
  const GiftCardRouteArgs({
    this.key,
    this.isNotification = false,
    this.lastPath = '',
    this.newsInfo,
    this.newsMediaInfo,
    this.newsNotificationInfo,
    this.idNews,
    this.messageId,
    this.searchQuery,
  });

  final Key? key;

  final bool isNotification;

  final String lastPath;

  final NewsInfoItemDataModel? newsInfo;

  final MediaInfoItemDataModel? newsMediaInfo;

  final NotificationInfoItemDataModel? newsNotificationInfo;

  final String? idNews;

  final String? messageId;

  final String? searchQuery;

  @override
  String toString() {
    return 'GiftCardRouteArgs{key: $key, isNotification: $isNotification, lastPath: $lastPath, newsInfo: $newsInfo, newsMediaInfo: $newsMediaInfo, newsNotificationInfo: $newsNotificationInfo, idNews: $idNews, messageId: $messageId, searchQuery: $searchQuery}';
  }
}

/// generated route for
/// [GiftVirualCardColorsScreen]
class GiftVirualCardColorsRoute
    extends PageRouteInfo<GiftVirualCardColorsRouteArgs> {
  GiftVirualCardColorsRoute({
    Key? key,
    required GiftCardModel selectedColor,
    required ValueChanged<GiftCardModel> onChange,
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<GiftVirualCardColorsRouteArgs>();
      return GiftVirualCardColorsScreen(
        key: args.key,
        selectedColor: args.selectedColor,
        onChange: args.onChange,
      );
    },
  );
}

class GiftVirualCardColorsRouteArgs {
  const GiftVirualCardColorsRouteArgs({
    this.key,
    required this.selectedColor,
    required this.onChange,
  });

  final Key? key;

  final GiftCardModel selectedColor;

  final ValueChanged<GiftCardModel> onChange;

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
    required ValueChanged<BoutiqueDataModel> onMapPoint,
    required BoutiqueDataModel point,
    required PageRouteInfo<dynamic> route,
    List<PageRouteInfo>? children,
  }) : super(
          GiftYandexMapRoute.name,
          args: GiftYandexMapRouteArgs(
            key: key,
            onMapPoint: onMapPoint,
            point: point,
            route: route,
          ),
          initialChildren: children,
        );

  static const String name = 'GiftYandexMapRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<GiftYandexMapRouteArgs>();
      return GiftYandexMapScreen(
        key: args.key,
        onMapPoint: args.onMapPoint,
        point: args.point,
        route: args.route,
      );
    },
  );
}

class GiftYandexMapRouteArgs {
  const GiftYandexMapRouteArgs({
    this.key,
    required this.onMapPoint,
    required this.point,
    required this.route,
  });

  final Key? key;

  final ValueChanged<BoutiqueDataModel> onMapPoint;

  final BoutiqueDataModel point;

  final PageRouteInfo<dynamic> route;

  @override
  String toString() {
    return 'GiftYandexMapRouteArgs{key: $key, onMapPoint: $onMapPoint, point: $point, route: $route}';
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomeAutoRouterScreen();
    },
  );
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const InfoScreen();
    },
  );
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LoginScreen();
    },
  );
}

/// generated route for
/// [MainCategoryScreen]
class MainCategoryRoute extends PageRouteInfo<MainCategoryRouteArgs> {
  MainCategoryRoute({
    Key? key,
    required String title,
    required int selectIndexType,
    List<PageRouteInfo>? children,
  }) : super(
          MainCategoryRoute.name,
          args: MainCategoryRouteArgs(
            key: key,
            title: title,
            selectIndexType: selectIndexType,
          ),
          initialChildren: children,
        );

  static const String name = 'MainCategoryRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MainCategoryRouteArgs>();
      return MainCategoryScreen(
        key: args.key,
        title: args.title,
        selectIndexType: args.selectIndexType,
      );
    },
  );
}

class MainCategoryRouteArgs {
  const MainCategoryRouteArgs({
    this.key,
    required this.title,
    required this.selectIndexType,
  });

  final Key? key;

  final String title;

  final int selectIndexType;

  @override
  String toString() {
    return 'MainCategoryRouteArgs{key: $key, title: $title, selectIndexType: $selectIndexType}';
  }
}

/// generated route for
/// [MainScreen]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MainScreen();
    },
  );
}

/// generated route for
/// [MediaInfoDescriptionScreen]
class MediaInfoDescriptionRoute
    extends PageRouteInfo<MediaInfoDescriptionRouteArgs> {
  MediaInfoDescriptionRoute({
    Key? key,
    required MediaInfoItemDataModel info,
    List<PageRouteInfo>? children,
  }) : super(
          MediaInfoDescriptionRoute.name,
          args: MediaInfoDescriptionRouteArgs(
            key: key,
            info: info,
          ),
          initialChildren: children,
        );

  static const String name = 'MediaInfoDescriptionRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MediaInfoDescriptionRouteArgs>();
      return MediaInfoDescriptionScreen(
        key: args.key,
        info: args.info,
      );
    },
  );
}

class MediaInfoDescriptionRouteArgs {
  const MediaInfoDescriptionRouteArgs({
    this.key,
    required this.info,
  });

  final Key? key;

  final MediaInfoItemDataModel info;

  @override
  String toString() {
    return 'MediaInfoDescriptionRouteArgs{key: $key, info: $info}';
  }
}

/// generated route for
/// [MediaNotificationDescriptionScreen]
class MediaNotificationDescriptionRoute
    extends PageRouteInfo<MediaNotificationDescriptionRouteArgs> {
  MediaNotificationDescriptionRoute({
    Key? key,
    String idNews = '',
    String? messageId,
    bool isNotification = false,
    List<PageRouteInfo>? children,
  }) : super(
          MediaNotificationDescriptionRoute.name,
          args: MediaNotificationDescriptionRouteArgs(
            key: key,
            idNews: idNews,
            messageId: messageId,
            isNotification: isNotification,
          ),
          initialChildren: children,
        );

  static const String name = 'MediaNotificationDescriptionRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MediaNotificationDescriptionRouteArgs>(
          orElse: () => const MediaNotificationDescriptionRouteArgs());
      return MediaNotificationDescriptionScreen(
        key: args.key,
        idNews: args.idNews,
        messageId: args.messageId,
        isNotification: args.isNotification,
      );
    },
  );
}

class MediaNotificationDescriptionRouteArgs {
  const MediaNotificationDescriptionRouteArgs({
    this.key,
    this.idNews = '',
    this.messageId,
    this.isNotification = false,
  });

  final Key? key;

  final String idNews;

  final String? messageId;

  final bool isNotification;

  @override
  String toString() {
    return 'MediaNotificationDescriptionRouteArgs{key: $key, idNews: $idNews, messageId: $messageId, isNotification: $isNotification}';
  }
}

/// generated route for
/// [MyOrdersScreen]
class MyOrdersRoute extends PageRouteInfo<void> {
  const MyOrdersRoute({List<PageRouteInfo>? children})
      : super(
          MyOrdersRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyOrdersRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MyOrdersScreen();
    },
  );
}

/// generated route for
/// [NewsInfoDescriptionScreen]
class NewsInfoDescriptionRoute
    extends PageRouteInfo<NewsInfoDescriptionRouteArgs> {
  NewsInfoDescriptionRoute({
    Key? key,
    required NewsInfoItemDataModel info,
    List<PageRouteInfo>? children,
  }) : super(
          NewsInfoDescriptionRoute.name,
          args: NewsInfoDescriptionRouteArgs(
            key: key,
            info: info,
          ),
          initialChildren: children,
        );

  static const String name = 'NewsInfoDescriptionRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<NewsInfoDescriptionRouteArgs>();
      return NewsInfoDescriptionScreen(
        key: args.key,
        info: args.info,
      );
    },
  );
}

class NewsInfoDescriptionRouteArgs {
  const NewsInfoDescriptionRouteArgs({
    this.key,
    required this.info,
  });

  final Key? key;

  final NewsInfoItemDataModel info;

  @override
  String toString() {
    return 'NewsInfoDescriptionRouteArgs{key: $key, info: $info}';
  }
}

/// generated route for
/// [NewsInfoScreen]
class NewsInfoRoute extends PageRouteInfo<NewsInfoRouteArgs> {
  NewsInfoRoute({
    Key? key,
    required int indexPage,
    String? idNews,
    List<PageRouteInfo>? children,
  }) : super(
          NewsInfoRoute.name,
          args: NewsInfoRouteArgs(
            key: key,
            indexPage: indexPage,
            idNews: idNews,
          ),
          initialChildren: children,
        );

  static const String name = 'NewsInfoRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<NewsInfoRouteArgs>();
      return NewsInfoScreen(
        key: args.key,
        indexPage: args.indexPage,
        idNews: args.idNews,
      );
    },
  );
}

class NewsInfoRouteArgs {
  const NewsInfoRouteArgs({
    this.key,
    required this.indexPage,
    this.idNews,
  });

  final Key? key;

  final int indexPage;

  final String? idNews;

  @override
  String toString() {
    return 'NewsInfoRouteArgs{key: $key, indexPage: $indexPage, idNews: $idNews}';
  }
}

/// generated route for
/// [NewsNotificationDescriptionScreen]
class NewsNotificationDescriptionRoute
    extends PageRouteInfo<NewsNotificationDescriptionRouteArgs> {
  NewsNotificationDescriptionRoute({
    Key? key,
    String idNews = '',
    String? messageId,
    bool isNotification = false,
    List<PageRouteInfo>? children,
  }) : super(
          NewsNotificationDescriptionRoute.name,
          args: NewsNotificationDescriptionRouteArgs(
            key: key,
            idNews: idNews,
            messageId: messageId,
            isNotification: isNotification,
          ),
          initialChildren: children,
        );

  static const String name = 'NewsNotificationDescriptionRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<NewsNotificationDescriptionRouteArgs>(
          orElse: () => const NewsNotificationDescriptionRouteArgs());
      return NewsNotificationDescriptionScreen(
        key: args.key,
        idNews: args.idNews,
        messageId: args.messageId,
        isNotification: args.isNotification,
      );
    },
  );
}

class NewsNotificationDescriptionRouteArgs {
  const NewsNotificationDescriptionRouteArgs({
    this.key,
    this.idNews = '',
    this.messageId,
    this.isNotification = false,
  });

  final Key? key;

  final String idNews;

  final String? messageId;

  final bool isNotification;

  @override
  String toString() {
    return 'NewsNotificationDescriptionRouteArgs{key: $key, idNews: $idNews, messageId: $messageId, isNotification: $isNotification}';
  }
}

/// generated route for
/// [NewsPreviewMediaScreen]
class NewsPreviewMediaRoute extends PageRouteInfo<NewsPreviewMediaRouteArgs> {
  NewsPreviewMediaRoute({
    Key? key,
    required List<NewsSliderImageItemDataModel> media,
    required VoidCallback goBotton,
    required int selectIndex,
    List<PageRouteInfo>? children,
  }) : super(
          NewsPreviewMediaRoute.name,
          args: NewsPreviewMediaRouteArgs(
            key: key,
            media: media,
            goBotton: goBotton,
            selectIndex: selectIndex,
          ),
          initialChildren: children,
        );

  static const String name = 'NewsPreviewMediaRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<NewsPreviewMediaRouteArgs>();
      return NewsPreviewMediaScreen(
        key: args.key,
        media: args.media,
        goBotton: args.goBotton,
        selectIndex: args.selectIndex,
      );
    },
  );
}

class NewsPreviewMediaRouteArgs {
  const NewsPreviewMediaRouteArgs({
    this.key,
    required this.media,
    required this.goBotton,
    required this.selectIndex,
  });

  final Key? key;

  final List<NewsSliderImageItemDataModel> media;

  final VoidCallback goBotton;

  final int selectIndex;

  @override
  String toString() {
    return 'NewsPreviewMediaRouteArgs{key: $key, media: $media, goBotton: $goBotton, selectIndex: $selectIndex}';
  }
}

/// generated route for
/// [NewsPreviewYouTubeVideoPlayerScreen]
class NewsPreviewYouTubeVideoPlayerRoute
    extends PageRouteInfo<NewsPreviewYouTubeVideoPlayerRouteArgs> {
  NewsPreviewYouTubeVideoPlayerRoute({
    Key? key,
    required String url,
    required ValueChanged<YoutubePlayerController> goBack,
    List<PageRouteInfo>? children,
  }) : super(
          NewsPreviewYouTubeVideoPlayerRoute.name,
          args: NewsPreviewYouTubeVideoPlayerRouteArgs(
            key: key,
            url: url,
            goBack: goBack,
          ),
          initialChildren: children,
        );

  static const String name = 'NewsPreviewYouTubeVideoPlayerRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<NewsPreviewYouTubeVideoPlayerRouteArgs>();
      return NewsPreviewYouTubeVideoPlayerScreen(
        key: args.key,
        url: args.url,
        goBack: args.goBack,
      );
    },
  );
}

class NewsPreviewYouTubeVideoPlayerRouteArgs {
  const NewsPreviewYouTubeVideoPlayerRouteArgs({
    this.key,
    required this.url,
    required this.goBack,
  });

  final Key? key;

  final String url;

  final ValueChanged<YoutubePlayerController> goBack;

  @override
  String toString() {
    return 'NewsPreviewYouTubeVideoPlayerRouteArgs{key: $key, url: $url, goBack: $goBack}';
  }
}

/// generated route for
/// [NewsScreen]
class NewsRoute extends PageRouteInfo<void> {
  const NewsRoute({List<PageRouteInfo>? children})
      : super(
          NewsRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const NewsScreen();
    },
  );
}

/// generated route for
/// [NoInternetScreen]
class NoInternetRoute extends PageRouteInfo<void> {
  const NoInternetRoute({List<PageRouteInfo>? children})
      : super(
          NoInternetRoute.name,
          initialChildren: children,
        );

  static const String name = 'NoInternetRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const NoInternetScreen();
    },
  );
}

/// generated route for
/// [NotificationInfoDescriptionScreen]
class NotificationInfoDescriptionRoute
    extends PageRouteInfo<NotificationInfoDescriptionRouteArgs> {
  NotificationInfoDescriptionRoute({
    Key? key,
    required NotificationInfoItemDataModel info,
    List<PageRouteInfo>? children,
  }) : super(
          NotificationInfoDescriptionRoute.name,
          args: NotificationInfoDescriptionRouteArgs(
            key: key,
            info: info,
          ),
          initialChildren: children,
        );

  static const String name = 'NotificationInfoDescriptionRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<NotificationInfoDescriptionRouteArgs>();
      return NotificationInfoDescriptionScreen(
        key: args.key,
        info: args.info,
      );
    },
  );
}

class NotificationInfoDescriptionRouteArgs {
  const NotificationInfoDescriptionRouteArgs({
    this.key,
    required this.info,
  });

  final Key? key;

  final NotificationInfoItemDataModel info;

  @override
  String toString() {
    return 'NotificationInfoDescriptionRouteArgs{key: $key, info: $info}';
  }
}

/// generated route for
/// [NotificationInfoNotificationDescriptionScreen]
class NotificationInfoNotificationDescriptionRoute
    extends PageRouteInfo<NotificationInfoNotificationDescriptionRouteArgs> {
  NotificationInfoNotificationDescriptionRoute({
    Key? key,
    String idNews = '',
    String? messageId,
    bool isNotification = false,
    List<PageRouteInfo>? children,
  }) : super(
          NotificationInfoNotificationDescriptionRoute.name,
          args: NotificationInfoNotificationDescriptionRouteArgs(
            key: key,
            idNews: idNews,
            messageId: messageId,
            isNotification: isNotification,
          ),
          initialChildren: children,
        );

  static const String name = 'NotificationInfoNotificationDescriptionRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<NotificationInfoNotificationDescriptionRouteArgs>(
              orElse: () =>
                  const NotificationInfoNotificationDescriptionRouteArgs());
      return NotificationInfoNotificationDescriptionScreen(
        key: args.key,
        idNews: args.idNews,
        messageId: args.messageId,
        isNotification: args.isNotification,
      );
    },
  );
}

class NotificationInfoNotificationDescriptionRouteArgs {
  const NotificationInfoNotificationDescriptionRouteArgs({
    this.key,
    this.idNews = '',
    this.messageId,
    this.isNotification = false,
  });

  final Key? key;

  final String idNews;

  final String? messageId;

  final bool isNotification;

  @override
  String toString() {
    return 'NotificationInfoNotificationDescriptionRouteArgs{key: $key, idNews: $idNews, messageId: $messageId, isNotification: $isNotification}';
  }
}

/// generated route for
/// [OrderCardInfoScreen]
class OrderCardInfoRoute extends PageRouteInfo<OrderCardInfoRouteArgs> {
  OrderCardInfoRoute({
    Key? key,
    required ProductDataModel item,
    required bool isLike,
    required List<ProductDataModel> listItems,
    required List<ProductDataModel> favouritesProducts,
    required bool isChildRoute,
    List<PageRouteInfo>? children,
  }) : super(
          OrderCardInfoRoute.name,
          args: OrderCardInfoRouteArgs(
            key: key,
            item: item,
            isLike: isLike,
            listItems: listItems,
            favouritesProducts: favouritesProducts,
            isChildRoute: isChildRoute,
          ),
          initialChildren: children,
        );

  static const String name = 'OrderCardInfoRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<OrderCardInfoRouteArgs>();
      return OrderCardInfoScreen(
        key: args.key,
        item: args.item,
        isLike: args.isLike,
        listItems: args.listItems,
        favouritesProducts: args.favouritesProducts,
        isChildRoute: args.isChildRoute,
      );
    },
  );
}

class OrderCardInfoRouteArgs {
  const OrderCardInfoRouteArgs({
    this.key,
    required this.item,
    required this.isLike,
    required this.listItems,
    required this.favouritesProducts,
    required this.isChildRoute,
  });

  final Key? key;

  final ProductDataModel item;

  final bool isLike;

  final List<ProductDataModel> listItems;

  final List<ProductDataModel> favouritesProducts;

  final bool isChildRoute;

  @override
  String toString() {
    return 'OrderCardInfoRouteArgs{key: $key, item: $item, isLike: $isLike, listItems: $listItems, favouritesProducts: $favouritesProducts, isChildRoute: $isChildRoute}';
  }
}

/// generated route for
/// [OrderPdfBlankViewScreen]
class OrderPdfBlankViewRoute extends PageRouteInfo<void> {
  const OrderPdfBlankViewRoute({List<PageRouteInfo>? children})
      : super(
          OrderPdfBlankViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrderPdfBlankViewRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const OrderPdfBlankViewScreen();
    },
  );
}

/// generated route for
/// [OrderUserInfoScreen]
class OrderUserInfoRoute extends PageRouteInfo<OrderUserInfoRouteArgs> {
  OrderUserInfoRoute({
    Key? key,
    required bool isPay,
    required String orderId,
    List<PageRouteInfo>? children,
  }) : super(
          OrderUserInfoRoute.name,
          args: OrderUserInfoRouteArgs(
            key: key,
            isPay: isPay,
            orderId: orderId,
          ),
          initialChildren: children,
        );

  static const String name = 'OrderUserInfoRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<OrderUserInfoRouteArgs>();
      return OrderUserInfoScreen(
        key: args.key,
        isPay: args.isPay,
        orderId: args.orderId,
      );
    },
  );
}

class OrderUserInfoRouteArgs {
  const OrderUserInfoRouteArgs({
    this.key,
    required this.isPay,
    required this.orderId,
  });

  final Key? key;

  final bool isPay;

  final String orderId;

  @override
  String toString() {
    return 'OrderUserInfoRouteArgs{key: $key, isPay: $isPay, orderId: $orderId}';
  }
}

/// generated route for
/// [PaymentVerificationScreen]
class PaymentVerificationRoute
    extends PageRouteInfo<PaymentVerificationRouteArgs> {
  PaymentVerificationRoute({
    Key? key,
    required String orderId,
    List<PageRouteInfo>? children,
  }) : super(
          PaymentVerificationRoute.name,
          args: PaymentVerificationRouteArgs(
            key: key,
            orderId: orderId,
          ),
          initialChildren: children,
        );

  static const String name = 'PaymentVerificationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PaymentVerificationRouteArgs>();
      return PaymentVerificationScreen(
        key: args.key,
        orderId: args.orderId,
      );
    },
  );
}

class PaymentVerificationRouteArgs {
  const PaymentVerificationRouteArgs({
    this.key,
    required this.orderId,
  });

  final Key? key;

  final String orderId;

  @override
  String toString() {
    return 'PaymentVerificationRouteArgs{key: $key, orderId: $orderId}';
  }
}

/// generated route for
/// [SberbankPaymentWebViewScreen]
class SberbankPaymentWebViewRoute
    extends PageRouteInfo<SberbankPaymentWebViewRouteArgs> {
  SberbankPaymentWebViewRoute({
    Key? key,
    required String url,
    List<PageRouteInfo>? children,
  }) : super(
          SberbankPaymentWebViewRoute.name,
          args: SberbankPaymentWebViewRouteArgs(
            key: key,
            url: url,
          ),
          initialChildren: children,
        );

  static const String name = 'SberbankPaymentWebViewRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SberbankPaymentWebViewRouteArgs>();
      return SberbankPaymentWebViewScreen(
        key: args.key,
        url: args.url,
      );
    },
  );
}

class SberbankPaymentWebViewRouteArgs {
  const SberbankPaymentWebViewRouteArgs({
    this.key,
    required this.url,
  });

  final Key? key;

  final String url;

  @override
  String toString() {
    return 'SberbankPaymentWebViewRouteArgs{key: $key, url: $url}';
  }
}

/// generated route for
/// [SearchLocationScreen]
class SearchLocationRoute extends PageRouteInfo<SearchLocationRouteArgs> {
  SearchLocationRoute({
    Key? key,
    required String title,
    required String value,
    required String contentType,
    required ValueChanged<SearchLocationInfoDataModel?> selectItem,
    String? cityId,
    String? streetId,
    int? withParent,
    List<PageRouteInfo>? children,
  }) : super(
          SearchLocationRoute.name,
          args: SearchLocationRouteArgs(
            key: key,
            title: title,
            value: value,
            contentType: contentType,
            selectItem: selectItem,
            cityId: cityId,
            streetId: streetId,
            withParent: withParent,
          ),
          initialChildren: children,
        );

  static const String name = 'SearchLocationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SearchLocationRouteArgs>();
      return SearchLocationScreen(
        key: args.key,
        title: args.title,
        value: args.value,
        contentType: args.contentType,
        selectItem: args.selectItem,
        cityId: args.cityId,
        streetId: args.streetId,
        withParent: args.withParent,
      );
    },
  );
}

class SearchLocationRouteArgs {
  const SearchLocationRouteArgs({
    this.key,
    required this.title,
    required this.value,
    required this.contentType,
    required this.selectItem,
    this.cityId,
    this.streetId,
    this.withParent,
  });

  final Key? key;

  final String title;

  final String value;

  final String contentType;

  final ValueChanged<SearchLocationInfoDataModel?> selectItem;

  final String? cityId;

  final String? streetId;

  final int? withParent;

  @override
  String toString() {
    return 'SearchLocationRouteArgs{key: $key, title: $title, value: $value, contentType: $contentType, selectItem: $selectItem, cityId: $cityId, streetId: $streetId, withParent: $withParent}';
  }
}

/// generated route for
/// [ServiceCardScreen]
class ServiceCardRoute extends PageRouteInfo<ServiceCardRouteArgs> {
  ServiceCardRoute({
    Key? key,
    String lastPath = '',
    NewsInfoItemDataModel? newsInfo,
    MediaInfoItemDataModel? newsMediaInfo,
    NotificationInfoItemDataModel? newsNotificationInfo,
    String? messageId,
    String? idNews,
    List<PageRouteInfo>? children,
  }) : super(
          ServiceCardRoute.name,
          args: ServiceCardRouteArgs(
            key: key,
            lastPath: lastPath,
            newsInfo: newsInfo,
            newsMediaInfo: newsMediaInfo,
            newsNotificationInfo: newsNotificationInfo,
            messageId: messageId,
            idNews: idNews,
          ),
          initialChildren: children,
        );

  static const String name = 'ServiceCardRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ServiceCardRouteArgs>(
          orElse: () => const ServiceCardRouteArgs());
      return ServiceCardScreen(
        key: args.key,
        lastPath: args.lastPath,
        newsInfo: args.newsInfo,
        newsMediaInfo: args.newsMediaInfo,
        newsNotificationInfo: args.newsNotificationInfo,
        messageId: args.messageId,
        idNews: args.idNews,
      );
    },
  );
}

class ServiceCardRouteArgs {
  const ServiceCardRouteArgs({
    this.key,
    this.lastPath = '',
    this.newsInfo,
    this.newsMediaInfo,
    this.newsNotificationInfo,
    this.messageId,
    this.idNews,
  });

  final Key? key;

  final String lastPath;

  final NewsInfoItemDataModel? newsInfo;

  final MediaInfoItemDataModel? newsMediaInfo;

  final NotificationInfoItemDataModel? newsNotificationInfo;

  final String? messageId;

  final String? idNews;

  @override
  String toString() {
    return 'ServiceCardRouteArgs{key: $key, lastPath: $lastPath, newsInfo: $newsInfo, newsMediaInfo: $newsMediaInfo, newsNotificationInfo: $newsNotificationInfo, messageId: $messageId, idNews: $idNews}';
  }
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ShoppingCartAutoRouterScreen();
    },
  );
}

/// generated route for
/// [ShoppingCartDeliveryInfoScreen]
class ShoppingCartDeliveryInfoRoute
    extends PageRouteInfo<ShoppingCartDeliveryInfoRouteArgs> {
  ShoppingCartDeliveryInfoRoute({
    Key? key,
    required String title,
    required ValueChanged<String> selectItem,
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ShoppingCartDeliveryInfoRouteArgs>();
      return ShoppingCartDeliveryInfoScreen(
        key: args.key,
        title: args.title,
        selectItem: args.selectItem,
      );
    },
  );
}

class ShoppingCartDeliveryInfoRouteArgs {
  const ShoppingCartDeliveryInfoRouteArgs({
    this.key,
    required this.title,
    required this.selectItem,
  });

  final Key? key;

  final String title;

  final ValueChanged<String> selectItem;

  @override
  String toString() {
    return 'ShoppingCartDeliveryInfoRouteArgs{key: $key, title: $title, selectItem: $selectItem}';
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ShoppingCartScreen();
    },
  );
}

/// generated route for
/// [ShoppingYandexMapScreen]
class ShoppingYandexMapRoute extends PageRouteInfo<ShoppingYandexMapRouteArgs> {
  ShoppingYandexMapRoute({
    Key? key,
    required ValueChanged<BoutiqueDataModel> onMapPoint,
    required BoutiqueDataModel boutique,
    required BoutiquesDataModel boutiques,
    List<PageRouteInfo>? children,
  }) : super(
          ShoppingYandexMapRoute.name,
          args: ShoppingYandexMapRouteArgs(
            key: key,
            onMapPoint: onMapPoint,
            boutique: boutique,
            boutiques: boutiques,
          ),
          initialChildren: children,
        );

  static const String name = 'ShoppingYandexMapRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ShoppingYandexMapRouteArgs>();
      return ShoppingYandexMapScreen(
        key: args.key,
        onMapPoint: args.onMapPoint,
        boutique: args.boutique,
        boutiques: args.boutiques,
      );
    },
  );
}

class ShoppingYandexMapRouteArgs {
  const ShoppingYandexMapRouteArgs({
    this.key,
    required this.onMapPoint,
    required this.boutique,
    required this.boutiques,
  });

  final Key? key;

  final ValueChanged<BoutiqueDataModel> onMapPoint;

  final BoutiqueDataModel boutique;

  final BoutiquesDataModel boutiques;

  @override
  String toString() {
    return 'ShoppingYandexMapRouteArgs{key: $key, onMapPoint: $onMapPoint, boutique: $boutique, boutiques: $boutiques}';
  }
}

/// generated route for
/// [SortScreen]
class SortRoute extends PageRouteInfo<SortRouteArgs> {
  SortRoute({
    Key? key,
    required ValueChanged<String> onChange,
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SortRouteArgs>();
      return SortScreen(
        key: args.key,
        onChange: args.onChange,
        selectItem: args.selectItem,
      );
    },
  );
}

class SortRouteArgs {
  const SortRouteArgs({
    this.key,
    required this.onChange,
    required this.selectItem,
  });

  final Key? key;

  final ValueChanged<String> onChange;

  final String selectItem;

  @override
  String toString() {
    return 'SortRouteArgs{key: $key, onChange: $onChange, selectItem: $selectItem}';
  }
}

/// generated route for
/// [TailoringOrderFormsScreen]
class TailoringOrderFormsRoute extends PageRouteInfo<void> {
  const TailoringOrderFormsRoute({List<PageRouteInfo>? children})
      : super(
          TailoringOrderFormsRoute.name,
          initialChildren: children,
        );

  static const String name = 'TailoringOrderFormsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const TailoringOrderFormsScreen();
    },
  );
}

/// generated route for
/// [VisionWarningScreen]
class VisionWarningRoute extends PageRouteInfo<VisionWarningRouteArgs> {
  VisionWarningRoute({
    Key? key,
    String? name,
    String? date,
    String? time,
    String lastPath = '',
    String? messageId,
    String? idNews,
    NewsInfoItemDataModel? newsInfo,
    MediaInfoItemDataModel? newsMediaInfo,
    NotificationInfoItemDataModel? newsNotificationInfo,
    List<PageRouteInfo>? children,
  }) : super(
          VisionWarningRoute.name,
          args: VisionWarningRouteArgs(
            key: key,
            name: name,
            date: date,
            time: time,
            lastPath: lastPath,
            messageId: messageId,
            idNews: idNews,
            newsInfo: newsInfo,
            newsMediaInfo: newsMediaInfo,
            newsNotificationInfo: newsNotificationInfo,
          ),
          initialChildren: children,
        );

  static const String name = 'VisionWarningRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<VisionWarningRouteArgs>(
          orElse: () => const VisionWarningRouteArgs());
      return VisionWarningScreen(
        key: args.key,
        name: args.name,
        date: args.date,
        time: args.time,
        lastPath: args.lastPath,
        messageId: args.messageId,
        idNews: args.idNews,
        newsInfo: args.newsInfo,
        newsMediaInfo: args.newsMediaInfo,
        newsNotificationInfo: args.newsNotificationInfo,
      );
    },
  );
}

class VisionWarningRouteArgs {
  const VisionWarningRouteArgs({
    this.key,
    this.name,
    this.date,
    this.time,
    this.lastPath = '',
    this.messageId,
    this.idNews,
    this.newsInfo,
    this.newsMediaInfo,
    this.newsNotificationInfo,
  });

  final Key? key;

  final String? name;

  final String? date;

  final String? time;

  final String lastPath;

  final String? messageId;

  final String? idNews;

  final NewsInfoItemDataModel? newsInfo;

  final MediaInfoItemDataModel? newsMediaInfo;

  final NotificationInfoItemDataModel? newsNotificationInfo;

  @override
  String toString() {
    return 'VisionWarningRouteArgs{key: $key, name: $name, date: $date, time: $time, lastPath: $lastPath, messageId: $messageId, idNews: $idNews, newsInfo: $newsInfo, newsMediaInfo: $newsMediaInfo, newsNotificationInfo: $newsNotificationInfo}';
  }
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const YandexMapScreen();
    },
  );
}
