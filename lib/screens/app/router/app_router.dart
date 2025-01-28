import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/card_info/view/card_info_screen.dart';
import 'package:blind_chicken/screens/%D1%81ashback_and_discounts/blind_chicken_%D1%81ashback_and_discounts_screen.dart';
import 'package:blind_chicken/screens/account/account_screen.dart';
import 'package:blind_chicken/screens/account/electronic_order_forms_screen.dart';
import 'package:blind_chicken/screens/account/my_orders_screen.dart';
import 'package:blind_chicken/screens/account/order_pdf_blank_view.dart';
import 'package:blind_chicken/screens/account/tailoring_order_forms_screen.dart';
import 'package:blind_chicken/screens/app/app_screen.dart';
import 'package:blind_chicken/screens/boutiques/boutiques_description_screen.dart';
import 'package:blind_chicken/screens/boutiques/boutiques_screen.dart';
import 'package:blind_chicken/screens/boutiques/widgets/boutique_preview_media_screen.dart';
import 'package:blind_chicken/screens/boutiques/widgets/map/boutique_yandex_map.dart';
import 'package:blind_chicken/screens/brands/brands_screen.dart';
import 'package:blind_chicken/screens/chat/chat_messanger_screen.dart';
import 'package:blind_chicken/screens/favourites/favourites_filter_screen.dart';
import 'package:blind_chicken/screens/favourites/favourites_filter_select_value/favourites_filter_select_value_screen.dart';
import 'package:blind_chicken/screens/favourites/favourites_filter_select_value_search/favourites_filter_select_value_search_screen.dart';
import 'package:blind_chicken/screens/favourites/favourites_products_screen.dart';
import 'package:blind_chicken/screens/gift_card/gift_card_screen.dart';
import 'package:blind_chicken/screens/gift_card/widgets/gift_card_delivery_info_screen.dart';
import 'package:blind_chicken/screens/gift_card/widgets/gift_virtual_card_colors_screen.dart';
import 'package:blind_chicken/screens/gift_card/widgets/map/gift_yandex_map_screen.dart';
import 'package:blind_chicken/screens/home/catalog/catalog_filter_select_value/catalog_filter_select_value_screen.dart';
import 'package:blind_chicken/screens/home/catalog/catalog_filter_select_value_search/catalog_filter_select_value_search_screen.dart';
import 'package:blind_chicken/screens/home/catalog/catalog_search_auto_router_screen.dart';
import 'package:blind_chicken/screens/home/catalog/catalog_search_filter_screen.dart';
import 'package:blind_chicken/screens/home/catalog/catalog_search_screen_result.dart';
import 'package:blind_chicken/screens/home/catalog/widget/catalog_size_product_screen.dart';
import 'package:blind_chicken/screens/home/main/main_category_screen.dart';
import 'package:blind_chicken/screens/home/main/main_screen.dart';
import 'package:blind_chicken/screens/account/order_user_info_screen.dart';
import 'package:blind_chicken/screens/info/info_screen.dart';
import 'package:blind_chicken/screens/location/search_location_screen.dart';
import 'package:blind_chicken/screens/news/media_notification_description_screen.dart';
import 'package:blind_chicken/screens/news/news_info/models/news_model.dart';
import 'package:blind_chicken/screens/news/news_notification_description_screen.dart';
import 'package:blind_chicken/screens/news/notification_info_notification_description_screen.dart';
import 'package:blind_chicken/screens/news/widgets/media/media_info_description_screen.dart';
import 'package:blind_chicken/screens/news/widgets/news/news_info_description_screen.dart';
import 'package:blind_chicken/screens/news/news_info_screen.dart';
import 'package:blind_chicken/screens/news/news_screen.dart';
import 'package:blind_chicken/screens/news/widgets/news_preview_media_info_screen.dart';
import 'package:blind_chicken/screens/news/widgets/news_preview_media_screen.dart';
import 'package:blind_chicken/screens/news/widgets/news_preview_youtube_player_screen.dart';
import 'package:blind_chicken/screens/news/widgets/news_video_player_screen.dart';
import 'package:blind_chicken/screens/news/widgets/notifications/notification_info_description_screen.dart';
import 'package:blind_chicken/screens/no_internet/no_internet_screen.dart';
import 'package:blind_chicken/screens/payment_verification/payment_verification_screen.dart';
import 'package:blind_chicken/screens/pdf_view/blind_chicken_pdf_view.dart';
import 'package:blind_chicken/screens/service_card/service_card_screen.dart';
import 'package:blind_chicken/screens/shopping_cart/shopping_cart_auto_route_screen.dart';
import 'package:blind_chicken/screens/shopping_cart/shopping_cart_screen.dart';
import 'package:blind_chicken/screens/chat/chat_screen.dart';
import 'package:blind_chicken/screens/favourites/favourites_screen.dart';
import 'package:blind_chicken/screens/home/catalog/catalog_preview_images_screen.dart';
import 'package:blind_chicken/screens/home/catalog/catalog_screen.dart';
import 'package:blind_chicken/screens/home/catalog/catalog_search_screen.dart';
import 'package:blind_chicken/screens/home/category/category_screen.dart';
import 'package:blind_chicken/screens/home/filters/filter_select_value/filter_select_value_screen.dart';
import 'package:blind_chicken/screens/home/filters/filter_select_value_search/filter_select_value_search_screen.dart';
import 'package:blind_chicken/screens/home/filters/filters_screen.dart';
import 'package:blind_chicken/screens/home/home_auto_router_screen.dart';
import 'package:blind_chicken/screens/home/sort/sort_screen.dart';
import 'package:blind_chicken/screens/login/login_screen.dart';
import 'package:blind_chicken/screens/shopping_cart/widgets/map/shopping_yandex_map_screen.dart';
import 'package:blind_chicken/screens/shopping_cart/widgets/shopping_cart_delivery_info_screen.dart';
import 'package:blind_chicken/screens/vision_warning/doctor_appointment_screen.dart';
import 'package:blind_chicken/screens/vision_warning/vision_warning_screen.dart';
import 'package:blind_chicken/screens/web_view/blind_chicken_webview_screen.dart';
import 'package:blind_chicken/screens/web_view/sberbank_payment_webview_screen.dart';
import 'package:blind_chicken/screens/yandex_map/yandex_map_screen.dart';
import 'package:flutter/material.dart';
import 'package:blind_chicken/old_repos/models/models.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../../contacts/contacts_screen.dart';
import '../../news/news_info/news_info_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: '/dashboard', page: DashboardRoute.page, initial: true, children: [
          AutoRoute(path: "home", page: HomeAutoRouterRoute.page, children: [
            AutoRoute(
              page: MainRoute.page,
              path: 'main',
              initial: true,
            ),
            AutoRoute(
              page: CategoryRoute.page,
            ),
            AutoRoute(
              page: CatalogRoute.page,
              path: 'catalog',
            ),
            AutoRoute(
              keepHistory: false,
              page: CardInfoRoute.page,
              path: 'catalog_card_info',
            ),
            AutoRoute(
              keepHistory: false,
              page: CardInfoRoute.page,
              path: 'catalog_search_card_info',
            ),
            AutoRoute(
              keepHistory: false,
              page: CardInfoRoute.page,
              path: 'catalog_search_card_info_result',
            ),
            AutoRoute(
              page: SortRoute.page,
            ),
            AutoRoute(
              page: BoutiquesRoute.page,
              path: 'boutiques',
            ),
            AutoRoute(
              page: BoutiquesDescriptionRoute.page,
              path: 'boutiques_description',
            ),
            AutoRoute(
              page: ContactsRoute.page,
              keepHistory: false,
              path: 'contacts',
            ),
            AutoRoute(
              page: InfoRoute.page,
              keepHistory: false,
              path: 'info',
            ),
            AutoRoute(
              page: BlindChickenWebViewRoute.page,
              path: 'webview',
            ),
            AutoRoute(
              page: BlindChickenPdfViewRoute.page,
              path: 'pdfview',
            ),
            AutoRoute(
              page: BlindChickenCashbackAndDiscountsRoute.page,
              keepHistory: false,
              path: 'cashback_and_discounts',
            ),
            AutoRoute(
              page: GiftCardRoute.page,
              path: 'gift_card',
            ),
            AutoRoute(
              page: GiftCardDeliveryInfoRoute.page,
              path: "gift_card_delivery_info",
            ),
            AutoRoute(
              page: CatalogSearchResultRoute.page,
              path: 'catalog_search_result',
            ),
            AutoRoute(
              page: MainCategoryRoute.page,
              path: 'main_category',
            ),
            AutoRoute(
              page: BrandsRoute.page,
              path: 'brands',
            ),
            AutoRoute(
              page: VisionWarningRoute.page,
              path: 'vision_warning',
            ),
            AutoRoute(
              page: ServiceCardRoute.page,
              path: 'service_card',
            ),
          ]),
          AutoRoute(page: LoginRoute.page, path: 'login', children: [
            AutoRoute(
              initial: true,
              keepHistory: false,
              page: AccountRoute.page,
              path: "account",
            ),
            AutoRoute(
              page: ElectronicOrderFormsRoute.page,
              path: "electronic_order",
            ),
            AutoRoute(
              page: TailoringOrderFormsRoute.page,
              path: "tailoring_order",
            ),
            AutoRoute(
              page: OrderPdfBlankViewRoute.page,
              path: 'order_pdf_blank_view',
            ),
            AutoRoute(
              page: MyOrdersRoute.page,
              path: "my_orders",
            ),
            AutoRoute(
              page: OrderUserInfoRoute.page,
              path: "order_user_info",
            ),
            AutoRoute(
              page: PaymentVerificationRoute.page,
              path: "payment_verification_screen",
            ),
            AutoRoute(
              page: SberbankPaymentWebViewRoute.page,
              path: "sberbank_payment_webview_screen",
            ),
            AutoRoute(
              keepHistory: false,
              page: CardInfoRoute.page,
            ),
          ]),
          AutoRoute(page: ShoppingCartAutoRouterRoute.page, path: 'shopping_cart', children: [
            AutoRoute(
              initial: true,
              page: ShoppingCartRoute.page,
            ),
            AutoRoute(
              page: ShoppingCartDeliveryInfoRoute.page,
              path: "shopping_cart_delivery_info",
            ),
            AutoRoute(
              keepHistory: false,
              page: CardInfoRoute.page,
              path: "card_info",
            ),
          ]),
          AutoRoute(page: FavouritesRoute.page, path: 'favourites', children: [
            AutoRoute(
              initial: true,
              page: FavouritesProductsRoute.page,
            ),
            AutoRoute(
              keepHistory: false,
              page: CardInfoRoute.page,
            ),
          ]),
          AutoRoute(
            page: NewsRoute.page,
            path: 'news',
            children: [
              AutoRoute(
                initial: true,
                page: NewsInfoRoute.page,
              ),
              AutoRoute(
                page: NewsInfoRepairedRoute.page,
                path: 'newsV2',
              ),
            ],
          ),
        ]),
        AutoRoute(
          page: ChatRoute.page,
          path: '/chat',
        ),
        AutoRoute(
          page: CatalogSearchRoute.page,
          path: '/search',
        ),
        AutoRoute(
          page: ChatMessangerRoute.page,
          path: '/chat_messanger',
        ),
        AutoRoute(
          page: GiftVirualCardColorsRoute.page,
          path: '/gift_virual_card_colors',
        ),
        //AutoRoute(
        //  page: NewsPreviewYouTubeVideoPlayerRoute.page,
        //  path: '/news_preview_youtube_video_player',
        //),
        AutoRoute(
          page: NewsVideoPlayerRoute.page,
          path: '/news_preview_youtube_video_player',
        ),
        AutoRoute(
          page: NewsInfoDescriptionRoute.page,
          path: '/news_info_description',
        ),
        AutoRoute(
          page: MediaInfoDescriptionRoute.page,
          path: '/media_info_description',
        ),
        AutoRoute(
          page: NotificationInfoDescriptionRoute.page,
          path: '/notfication_info_description',
        ),
        AutoRoute(
          page: NewsNotificationDescriptionRoute.page,
          path: '/news_notfication_info_description',
        ),
        AutoRoute(
          page: MediaNotificationDescriptionRoute.page,
          path: '/media_notfication_info_description',
        ),
        AutoRoute(
          page: NotificationInfoNotificationDescriptionRoute.page,
          path: '/notfication_info_notification_description',
        ),
        AutoRoute(
          page: NewsPreviewMediaRoute.page,
          path: '/news_preview_media',
        ),
        AutoRoute(
          page: NewsPreviewMediaInfoRoute.page,
          path: '/news_preview_media_info',
        ),
        AutoRoute(
          page: FiltersRoute.page,
        ),
        AutoRoute(
          page: SearchLocationRoute.page,
        ),
        AutoRoute(
          page: FilterSelectValueSearchRoute.page,
        ),
        AutoRoute(
          page: FilterSelectValueRoute.page,
        ),
        AutoRoute(
          page: CatalogSearchFiltersRoute.page,
        ),
        AutoRoute(
          page: CatalogFilterSelectValueRoute.page,
        ),
        AutoRoute(
          page: CatalogFilterSelectValueSearchRoute.page,
        ),
        AutoRoute(
          page: FavouritesFiltersRoute.page,
        ),
        AutoRoute(
          page: FavouritesFilterSelectValueRoute.page,
        ),
        AutoRoute(
          page: FavouritesFilterSelectValueSearchRoute.page,
        ),
        AutoRoute(
          page: CatalogPreviewImagesRoute.page,
        ),
        AutoRoute(
          page: BoutiquePreviewMediaRoute.page,
        ),
        AutoRoute(
          page: YandexMapRoute.page,
        ),
        AutoRoute(
          page: BoutiqueYandexMapRoute.page,
        ),
        AutoRoute(
          page: GiftYandexMapRoute.page,
        ),
        AutoRoute(
          page: ShoppingYandexMapRoute.page,
        ),
        AutoRoute(
          page: NoInternetRoute.page,
          path: '/no_internet',
        ),
        AutoRoute(
          keepHistory: false,
          page: CatalogSizeProductRoute.page,
        ),
        AutoRoute(
          page: DoctorAppointmentRoute.page,
          path: '/doctor_appointment',
        ),
      ];
}
