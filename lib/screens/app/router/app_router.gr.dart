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
    BoutiquesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BoutiquesScreen(),
      );
    },
    BoutiquesDescriptionRoute.name: (routeData) {
      final args = routeData.argsAs<BoutiquesDescriptionRouteArgs>(
          orElse: () => const BoutiquesDescriptionRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: BoutiquesDescriptionScreen(
          key: args.key,
          uidStore: args.uidStore,
          isNotification: args.isNotification,
          lastPath: args.lastPath,
          newsInfo: args.newsInfo,
          newsMediaInfo: args.newsMediaInfo,
          newsNotificationInfo: args.newsNotificationInfo,
          messageId: args.messageId,
        ),
      );
    },
    BoutiquePreviewMediaRoute.name: (routeData) {
      final args = routeData.argsAs<BoutiquePreviewMediaRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: BoutiquePreviewMediaScreen(
          key: args.key,
          media: args.media,
          goBotton: args.goBotton,
          selectIndex: args.selectIndex,
          listImages: args.listImages,
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
    CatalogSearchCardInfoRoute.name: (routeData) {
      final args = routeData.argsAs<CatalogSearchCardInfoRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CatalogSearchCardInfoScreen(
          key: args.key,
          item: args.item,
          isLike: args.isLike,
          listItems: args.listItems,
          favouritesProducts: args.favouritesProducts,
          isChildRoute: args.isChildRoute,
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
          goBottonInfoProduct: args.goBottonInfoProduct,
          selectIndex: args.selectIndex,
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
    CatalogSearchCardInfoResultRoute.name: (routeData) {
      final args = routeData.argsAs<CatalogSearchCardInfoResultRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CatalogSearchCardInfoResultScreen(
          key: args.key,
          item: args.item,
          isLike: args.isLike,
          listItems: args.listItems,
          favouritesProducts: args.favouritesProducts,
          isChildRoute: args.isChildRoute,
        ),
      );
    },
    CatalogRoute.name: (routeData) {
      final args = routeData.argsAs<CatalogRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CatalogScreen(
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
        ),
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
    MainCategoryRoute.name: (routeData) {
      final args = routeData.argsAs<MainCategoryRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MainCategoryScreen(
          key: args.key,
          title: args.title,
          selectIndexType: args.selectIndexType,
        ),
      );
    },
    MainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MainScreen(),
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
    VisionWarningRoute.name: (routeData) {
      final args = routeData.argsAs<VisionWarningRouteArgs>(
          orElse: () => const VisionWarningRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: VisionWarningScreen(
          key: args.key,
          name: args.name,
          date: args.date,
          time: args.time,
        ),
      );
    },
    DoctorAppointmentRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DoctorAppointmentScreen(),
      );
    },
    BlindChickenCashbackAndDiscountsRoute.name: (routeData) {
      final args = routeData.argsAs<BlindChickenCashbackAndDiscountsRouteArgs>(
          orElse: () => const BlindChickenCashbackAndDiscountsRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: BlindChickenCashbackAndDiscountsScreen(
          key: args.key,
          onBack: args.onBack,
        ),
      );
    },
    BrandsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BrandsScreen(),
      );
    },
    SearchLocationRoute.name: (routeData) {
      final args = routeData.argsAs<SearchLocationRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SearchLocationScreen(
          key: args.key,
          title: args.title,
          value: args.value,
          contentType: args.contentType,
          selectItem: args.selectItem,
          cityId: args.cityId,
          streetId: args.streetId,
          withParent: args.withParent,
        ),
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
    FavouritesProductsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FavouritesProductsScreen(),
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
    FavouritesCardInfoRoute.name: (routeData) {
      final args = routeData.argsAs<FavouritesCardInfoRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: FavouritesCardInfoScreen(
          key: args.key,
          item: args.item,
          isLike: args.isLike,
          listItems: args.listItems,
          favouritesProducts: args.favouritesProducts,
          isChildRoute: args.isChildRoute,
        ),
      );
    },
    InfoRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const InfoScreen(),
      );
    },
    PaymentVerificationRoute.name: (routeData) {
      final args = routeData.argsAs<PaymentVerificationRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PaymentVerificationScreen(
          key: args.key,
          orderId: args.orderId,
        ),
      );
    },
    NewsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NewsScreen(),
      );
    },
    NotificationInfoNotificationDescriptionRoute.name: (routeData) {
      final args =
          routeData.argsAs<NotificationInfoNotificationDescriptionRouteArgs>(
              orElse: () =>
                  const NotificationInfoNotificationDescriptionRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: NotificationInfoNotificationDescriptionScreen(
          key: args.key,
          idNews: args.idNews,
          messageId: args.messageId,
          isNotification: args.isNotification,
        ),
      );
    },
    NewsNotificationDescriptionRoute.name: (routeData) {
      final args = routeData.argsAs<NewsNotificationDescriptionRouteArgs>(
          orElse: () => const NewsNotificationDescriptionRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: NewsNotificationDescriptionScreen(
          key: args.key,
          idNews: args.idNews,
          messageId: args.messageId,
          isNotification: args.isNotification,
        ),
      );
    },
    NewsInfoRoute.name: (routeData) {
      final args = routeData.argsAs<NewsInfoRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: NewsInfoScreen(
          key: args.key,
          indexPage: args.indexPage,
        ),
      );
    },
    MediaNotificationDescriptionRoute.name: (routeData) {
      final args = routeData.argsAs<MediaNotificationDescriptionRouteArgs>(
          orElse: () => const MediaNotificationDescriptionRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MediaNotificationDescriptionScreen(
          key: args.key,
          idNews: args.idNews,
          messageId: args.messageId,
          isNotification: args.isNotification,
        ),
      );
    },
    NewsInfoDescriptionRoute.name: (routeData) {
      final args = routeData.argsAs<NewsInfoDescriptionRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: NewsInfoDescriptionScreen(
          key: args.key,
          info: args.info,
        ),
      );
    },
    NewsPreviewYouTubeVideoPlayerRoute.name: (routeData) {
      final args = routeData.argsAs<NewsPreviewYouTubeVideoPlayerRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: NewsPreviewYouTubeVideoPlayerScreen(
          key: args.key,
          url: args.url,
          goBack: args.goBack,
        ),
      );
    },
    NewsPreviewMediaRoute.name: (routeData) {
      final args = routeData.argsAs<NewsPreviewMediaRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: NewsPreviewMediaScreen(
          key: args.key,
          media: args.media,
          goBotton: args.goBotton,
          selectIndex: args.selectIndex,
        ),
      );
    },
    NotificationInfoDescriptionRoute.name: (routeData) {
      final args = routeData.argsAs<NotificationInfoDescriptionRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: NotificationInfoDescriptionScreen(
          key: args.key,
          info: args.info,
        ),
      );
    },
    MediaInfoDescriptionRoute.name: (routeData) {
      final args = routeData.argsAs<MediaInfoDescriptionRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MediaInfoDescriptionScreen(
          key: args.key,
          info: args.info,
        ),
      );
    },
    ServiceCardRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ServiceCardScreen(),
      );
    },
    YandexMapRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const YandexMapScreen(),
      );
    },
    NoInternetRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NoInternetScreen(),
      );
    },
    OrderPdfBlankViewRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OrderPdfBlankViewScreen(),
      );
    },
    AccountRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AccountScreen(),
      );
    },
    OrderUserInfoRoute.name: (routeData) {
      final args = routeData.argsAs<OrderUserInfoRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: OrderUserInfoScreen(
          key: args.key,
          isPay: args.isPay,
          orderId: args.orderId,
        ),
      );
    },
    OrderCardInfoRoute.name: (routeData) {
      final args = routeData.argsAs<OrderCardInfoRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: OrderCardInfoScreen(
          key: args.key,
          item: args.item,
          isLike: args.isLike,
          listItems: args.listItems,
          favouritesProducts: args.favouritesProducts,
          isChildRoute: args.isChildRoute,
        ),
      );
    },
    ElectronicOrderFormsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ElectronicOrderFormsScreen(),
      );
    },
    TailoringOrderFormsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TailoringOrderFormsScreen(),
      );
    },
    MyOrdersRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MyOrdersScreen(),
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
      final args = routeData.argsAs<SberbankPaymentWebViewRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SberbankPaymentWebViewScreen(
          key: args.key,
          url: args.url,
        ),
      );
    },
    GiftCardRoute.name: (routeData) {
      final args = routeData.argsAs<GiftCardRouteArgs>(
          orElse: () => const GiftCardRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: GiftCardScreen(
          key: args.key,
          isNotification: args.isNotification,
          lastPath: args.lastPath,
          newsInfo: args.newsInfo,
          newsMediaInfo: args.newsMediaInfo,
          newsNotificationInfo: args.newsNotificationInfo,
          messageId: args.messageId,
          searchQuery: args.searchQuery,
        ),
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
          route: args.route,
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
    ShoppingCardInfoRoute.name: (routeData) {
      final args = routeData.argsAs<ShoppingCardInfoRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ShoppingCardInfoScreen(
          key: args.key,
          item: args.item,
          isLike: args.isLike,
          listItems: args.listItems,
          favouritesProducts: args.favouritesProducts,
          isChildRoute: args.isChildRoute,
        ),
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
          boutique: args.boutique,
          boutiques: args.boutiques,
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
    String uidStore = '',
    bool isNotification = false,
    String lastPath = '',
    NewsInfoItemDataModel? newsInfo,
    MediaInfoItemDataModel? newsMediaInfo,
    NotificationInfoItemDataModel? newsNotificationInfo,
    String? messageId,
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
    this.uidStore = '',
    this.isNotification = false,
    this.lastPath = '',
    this.newsInfo,
    this.newsMediaInfo,
    this.newsNotificationInfo,
    this.messageId,
  });

  final Key? key;

  final String uidStore;

  final bool isNotification;

  final String lastPath;

  final NewsInfoItemDataModel? newsInfo;

  final MediaInfoItemDataModel? newsMediaInfo;

  final NotificationInfoItemDataModel? newsNotificationInfo;

  final String? messageId;

  @override
  String toString() {
    return 'BoutiquesDescriptionRouteArgs{key: $key, uidStore: $uidStore, isNotification: $isNotification, lastPath: $lastPath, newsInfo: $newsInfo, newsMediaInfo: $newsMediaInfo, newsNotificationInfo: $newsNotificationInfo, messageId: $messageId}';
  }
}

/// generated route for
/// [BoutiquePreviewMediaScreen]
class BoutiquePreviewMediaRoute
    extends PageRouteInfo<BoutiquePreviewMediaRouteArgs> {
  BoutiquePreviewMediaRoute({
    Key? key,
    required List<String> media,
    required void Function() goBotton,
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

  static const PageInfo<BoutiquePreviewMediaRouteArgs> page =
      PageInfo<BoutiquePreviewMediaRouteArgs>(name);
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

  final void Function() goBotton;

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

  static const PageInfo<BoutiqueYandexMapRouteArgs> page =
      PageInfo<BoutiqueYandexMapRouteArgs>(name);
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

  static const PageInfo<CatalogSearchCardInfoRouteArgs> page =
      PageInfo<CatalogSearchCardInfoRouteArgs>(name);
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
    required void Function(SkuProductDataModel) onChange,
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

  final void Function(SkuProductDataModel) onChange;

  final List<SkuProductDataModel> listSizeProduct;

  final SkuProductDataModel selectItem;

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

  @override
  String toString() {
    return 'CatalogCardInfoRouteArgs{key: $key, item: $item, code: $code, isLike: $isLike, listItems: $listItems, favouritesProducts: $favouritesProducts, isChildRoute: $isChildRoute, lastPath: $lastPath, newsInfo: $newsInfo, newsMediaInfo: $newsMediaInfo, newsNotificationInfo: $newsNotificationInfo, messageId: $messageId}';
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
/// [CatalogPreviewImagesScreen]
class CatalogPreviewImagesRoute
    extends PageRouteInfo<CatalogPreviewImagesRouteArgs> {
  CatalogPreviewImagesRoute({
    Key? key,
    required List<String> listImages,
    required void Function() goBotton,
    required void Function() goBottonInfoProduct,
    required int selectIndex,
    List<PageRouteInfo>? children,
  }) : super(
          CatalogPreviewImagesRoute.name,
          args: CatalogPreviewImagesRouteArgs(
            key: key,
            listImages: listImages,
            goBotton: goBotton,
            goBottonInfoProduct: goBottonInfoProduct,
            selectIndex: selectIndex,
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
    required this.goBottonInfoProduct,
    required this.selectIndex,
  });

  final Key? key;

  final List<String> listImages;

  final void Function() goBotton;

  final void Function() goBottonInfoProduct;

  final int selectIndex;

  @override
  String toString() {
    return 'CatalogPreviewImagesRouteArgs{key: $key, listImages: $listImages, goBotton: $goBotton, goBottonInfoProduct: $goBottonInfoProduct, selectIndex: $selectIndex}';
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

  static const PageInfo<CatalogSearchCardInfoResultRouteArgs> page =
      PageInfo<CatalogSearchCardInfoResultRouteArgs>(name);
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
/// [CatalogScreen]
class CatalogRoute extends PageRouteInfo<CatalogRouteArgs> {
  CatalogRoute({
    Key? key,
    bool isBack = true,
    void Function()? onBack,
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
          ),
          initialChildren: children,
        );

  static const String name = 'CatalogRoute';

  static const PageInfo<CatalogRouteArgs> page =
      PageInfo<CatalogRouteArgs>(name);
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
  });

  final Key? key;

  final bool isBack;

  final void Function()? onBack;

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

  @override
  String toString() {
    return 'CatalogRouteArgs{key: $key, isBack: $isBack, onBack: $onBack, title: $title, url: $url, isNotification: $isNotification, sort: $sort, filterNotifcation: $filterNotifcation, lastPath: $lastPath, newsInfo: $newsInfo, newsMediaInfo: $newsMediaInfo, newsNotificationInfo: $newsNotificationInfo, messageId: $messageId}';
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

  static const PageInfo<MainCategoryRouteArgs> page =
      PageInfo<MainCategoryRouteArgs>(name);
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

  static const PageInfo<void> page = PageInfo<void>(name);
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
/// [VisionWarningScreen]
class VisionWarningRoute extends PageRouteInfo<VisionWarningRouteArgs> {
  VisionWarningRoute({
    Key? key,
    String? name,
    String? date,
    String? time,
    List<PageRouteInfo>? children,
  }) : super(
          VisionWarningRoute.name,
          args: VisionWarningRouteArgs(
            key: key,
            name: name,
            date: date,
            time: time,
          ),
          initialChildren: children,
        );

  static const String name = 'VisionWarningRoute';

  static const PageInfo<VisionWarningRouteArgs> page =
      PageInfo<VisionWarningRouteArgs>(name);
}

class VisionWarningRouteArgs {
  const VisionWarningRouteArgs({
    this.key,
    this.name,
    this.date,
    this.time,
  });

  final Key? key;

  final String? name;

  final String? date;

  final String? time;

  @override
  String toString() {
    return 'VisionWarningRouteArgs{key: $key, name: $name, date: $date, time: $time}';
  }
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

  static const PageInfo<void> page = PageInfo<void>(name);
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

  static const PageInfo<BlindChickenCashbackAndDiscountsRouteArgs> page =
      PageInfo<BlindChickenCashbackAndDiscountsRouteArgs>(name);
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
/// [BrandsScreen]
class BrandsRoute extends PageRouteInfo<void> {
  const BrandsRoute({List<PageRouteInfo>? children})
      : super(
          BrandsRoute.name,
          initialChildren: children,
        );

  static const String name = 'BrandsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SearchLocationScreen]
class SearchLocationRoute extends PageRouteInfo<SearchLocationRouteArgs> {
  SearchLocationRoute({
    Key? key,
    required String title,
    required String value,
    required String contentType,
    required void Function(SearchLocationInfoDataModel?) selectItem,
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

  static const PageInfo<SearchLocationRouteArgs> page =
      PageInfo<SearchLocationRouteArgs>(name);
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

  final void Function(SearchLocationInfoDataModel?) selectItem;

  final String? cityId;

  final String? streetId;

  final int? withParent;

  @override
  String toString() {
    return 'SearchLocationRouteArgs{key: $key, title: $title, value: $value, contentType: $contentType, selectItem: $selectItem, cityId: $cityId, streetId: $streetId, withParent: $withParent}';
  }
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
/// [FavouritesProductsScreen]
class FavouritesProductsRoute extends PageRouteInfo<void> {
  const FavouritesProductsRoute({List<PageRouteInfo>? children})
      : super(
          FavouritesProductsRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavouritesProductsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
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

  static const PageInfo<FavouritesCardInfoRouteArgs> page =
      PageInfo<FavouritesCardInfoRouteArgs>(name);
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

  static const PageInfo<PaymentVerificationRouteArgs> page =
      PageInfo<PaymentVerificationRouteArgs>(name);
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
/// [NewsScreen]
class NewsRoute extends PageRouteInfo<void> {
  const NewsRoute({List<PageRouteInfo>? children})
      : super(
          NewsRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
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

  static const PageInfo<NotificationInfoNotificationDescriptionRouteArgs> page =
      PageInfo<NotificationInfoNotificationDescriptionRouteArgs>(name);
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

  static const PageInfo<NewsNotificationDescriptionRouteArgs> page =
      PageInfo<NewsNotificationDescriptionRouteArgs>(name);
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
/// [NewsInfoScreen]
class NewsInfoRoute extends PageRouteInfo<NewsInfoRouteArgs> {
  NewsInfoRoute({
    Key? key,
    required int indexPage,
    List<PageRouteInfo>? children,
  }) : super(
          NewsInfoRoute.name,
          args: NewsInfoRouteArgs(
            key: key,
            indexPage: indexPage,
          ),
          initialChildren: children,
        );

  static const String name = 'NewsInfoRoute';

  static const PageInfo<NewsInfoRouteArgs> page =
      PageInfo<NewsInfoRouteArgs>(name);
}

class NewsInfoRouteArgs {
  const NewsInfoRouteArgs({
    this.key,
    required this.indexPage,
  });

  final Key? key;

  final int indexPage;

  @override
  String toString() {
    return 'NewsInfoRouteArgs{key: $key, indexPage: $indexPage}';
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

  static const PageInfo<MediaNotificationDescriptionRouteArgs> page =
      PageInfo<MediaNotificationDescriptionRouteArgs>(name);
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

  static const PageInfo<NewsInfoDescriptionRouteArgs> page =
      PageInfo<NewsInfoDescriptionRouteArgs>(name);
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
/// [NewsPreviewYouTubeVideoPlayerScreen]
class NewsPreviewYouTubeVideoPlayerRoute
    extends PageRouteInfo<NewsPreviewYouTubeVideoPlayerRouteArgs> {
  NewsPreviewYouTubeVideoPlayerRoute({
    Key? key,
    required String url,
    required void Function(YoutubePlayerController) goBack,
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

  static const PageInfo<NewsPreviewYouTubeVideoPlayerRouteArgs> page =
      PageInfo<NewsPreviewYouTubeVideoPlayerRouteArgs>(name);
}

class NewsPreviewYouTubeVideoPlayerRouteArgs {
  const NewsPreviewYouTubeVideoPlayerRouteArgs({
    this.key,
    required this.url,
    required this.goBack,
  });

  final Key? key;

  final String url;

  final void Function(YoutubePlayerController) goBack;

  @override
  String toString() {
    return 'NewsPreviewYouTubeVideoPlayerRouteArgs{key: $key, url: $url, goBack: $goBack}';
  }
}

/// generated route for
/// [NewsPreviewMediaScreen]
class NewsPreviewMediaRoute extends PageRouteInfo<NewsPreviewMediaRouteArgs> {
  NewsPreviewMediaRoute({
    Key? key,
    required List<String> media,
    required void Function() goBotton,
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

  static const PageInfo<NewsPreviewMediaRouteArgs> page =
      PageInfo<NewsPreviewMediaRouteArgs>(name);
}

class NewsPreviewMediaRouteArgs {
  const NewsPreviewMediaRouteArgs({
    this.key,
    required this.media,
    required this.goBotton,
    required this.selectIndex,
  });

  final Key? key;

  final List<String> media;

  final void Function() goBotton;

  final int selectIndex;

  @override
  String toString() {
    return 'NewsPreviewMediaRouteArgs{key: $key, media: $media, goBotton: $goBotton, selectIndex: $selectIndex}';
  }
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

  static const PageInfo<NotificationInfoDescriptionRouteArgs> page =
      PageInfo<NotificationInfoDescriptionRouteArgs>(name);
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

  static const PageInfo<MediaInfoDescriptionRouteArgs> page =
      PageInfo<MediaInfoDescriptionRouteArgs>(name);
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
/// [ServiceCardScreen]
class ServiceCardRoute extends PageRouteInfo<void> {
  const ServiceCardRoute({List<PageRouteInfo>? children})
      : super(
          ServiceCardRoute.name,
          initialChildren: children,
        );

  static const String name = 'ServiceCardRoute';

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
/// [NoInternetScreen]
class NoInternetRoute extends PageRouteInfo<void> {
  const NoInternetRoute({List<PageRouteInfo>? children})
      : super(
          NoInternetRoute.name,
          initialChildren: children,
        );

  static const String name = 'NoInternetRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
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

  static const PageInfo<OrderUserInfoRouteArgs> page =
      PageInfo<OrderUserInfoRouteArgs>(name);
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

  static const PageInfo<OrderCardInfoRouteArgs> page =
      PageInfo<OrderCardInfoRouteArgs>(name);
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
/// [ElectronicOrderFormsScreen]
class ElectronicOrderFormsRoute extends PageRouteInfo<void> {
  const ElectronicOrderFormsRoute({List<PageRouteInfo>? children})
      : super(
          ElectronicOrderFormsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ElectronicOrderFormsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
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

  static const PageInfo<void> page = PageInfo<void>(name);
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

  static const PageInfo<SberbankPaymentWebViewRouteArgs> page =
      PageInfo<SberbankPaymentWebViewRouteArgs>(name);
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
/// [GiftCardScreen]
class GiftCardRoute extends PageRouteInfo<GiftCardRouteArgs> {
  GiftCardRoute({
    Key? key,
    bool isNotification = false,
    String lastPath = '',
    NewsInfoItemDataModel? newsInfo,
    MediaInfoItemDataModel? newsMediaInfo,
    NotificationInfoItemDataModel? newsNotificationInfo,
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
            messageId: messageId,
            searchQuery: searchQuery,
          ),
          initialChildren: children,
        );

  static const String name = 'GiftCardRoute';

  static const PageInfo<GiftCardRouteArgs> page =
      PageInfo<GiftCardRouteArgs>(name);
}

class GiftCardRouteArgs {
  const GiftCardRouteArgs({
    this.key,
    this.isNotification = false,
    this.lastPath = '',
    this.newsInfo,
    this.newsMediaInfo,
    this.newsNotificationInfo,
    this.messageId,
    this.searchQuery,
  });

  final Key? key;

  final bool isNotification;

  final String lastPath;

  final NewsInfoItemDataModel? newsInfo;

  final MediaInfoItemDataModel? newsMediaInfo;

  final NotificationInfoItemDataModel? newsNotificationInfo;

  final String? messageId;

  final String? searchQuery;

  @override
  String toString() {
    return 'GiftCardRouteArgs{key: $key, isNotification: $isNotification, lastPath: $lastPath, newsInfo: $newsInfo, newsMediaInfo: $newsMediaInfo, newsNotificationInfo: $newsNotificationInfo, messageId: $messageId, searchQuery: $searchQuery}';
  }
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
    required GiftCardModel selectedColor,
    required void Function(GiftCardModel) onChange,
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

  final GiftCardModel selectedColor;

  final void Function(GiftCardModel) onChange;

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
    required void Function(BoutiqueDataModel) onMapPoint,
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

  static const PageInfo<GiftYandexMapRouteArgs> page =
      PageInfo<GiftYandexMapRouteArgs>(name);
}

class GiftYandexMapRouteArgs {
  const GiftYandexMapRouteArgs({
    this.key,
    required this.onMapPoint,
    required this.point,
    required this.route,
  });

  final Key? key;

  final void Function(BoutiqueDataModel) onMapPoint;

  final BoutiqueDataModel point;

  final PageRouteInfo<dynamic> route;

  @override
  String toString() {
    return 'GiftYandexMapRouteArgs{key: $key, onMapPoint: $onMapPoint, point: $point, route: $route}';
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
/// [ShoppingCardInfoScreen]
class ShoppingCardInfoRoute extends PageRouteInfo<ShoppingCardInfoRouteArgs> {
  ShoppingCardInfoRoute({
    Key? key,
    required ProductDataModel item,
    required bool isLike,
    required List<ProductDataModel> listItems,
    required List<ProductDataModel> favouritesProducts,
    required bool isChildRoute,
    List<PageRouteInfo>? children,
  }) : super(
          ShoppingCardInfoRoute.name,
          args: ShoppingCardInfoRouteArgs(
            key: key,
            item: item,
            isLike: isLike,
            listItems: listItems,
            favouritesProducts: favouritesProducts,
            isChildRoute: isChildRoute,
          ),
          initialChildren: children,
        );

  static const String name = 'ShoppingCardInfoRoute';

  static const PageInfo<ShoppingCardInfoRouteArgs> page =
      PageInfo<ShoppingCardInfoRouteArgs>(name);
}

class ShoppingCardInfoRouteArgs {
  const ShoppingCardInfoRouteArgs({
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
    return 'ShoppingCardInfoRouteArgs{key: $key, item: $item, isLike: $isLike, listItems: $listItems, favouritesProducts: $favouritesProducts, isChildRoute: $isChildRoute}';
  }
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
    required void Function(BoutiqueDataModel) onMapPoint,
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

  static const PageInfo<ShoppingYandexMapRouteArgs> page =
      PageInfo<ShoppingYandexMapRouteArgs>(name);
}

class ShoppingYandexMapRouteArgs {
  const ShoppingYandexMapRouteArgs({
    this.key,
    required this.onMapPoint,
    required this.boutique,
    required this.boutiques,
  });

  final Key? key;

  final void Function(BoutiqueDataModel) onMapPoint;

  final BoutiqueDataModel boutique;

  final BoutiquesDataModel boutiques;

  @override
  String toString() {
    return 'ShoppingYandexMapRouteArgs{key: $key, onMapPoint: $onMapPoint, boutique: $boutique, boutiques: $boutiques}';
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
