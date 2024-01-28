import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/%D1%81ashback_and_discounts/blind_chicken_%D1%81ashback_and_discounts_screen.dart';
import 'package:blind_chicken/screens/account/account_screen.dart';
import 'package:blind_chicken/screens/account/electronic_order_forms_screen.dart';
import 'package:blind_chicken/screens/account/my_purchases_screen.dart';
import 'package:blind_chicken/screens/account/orders_hemming_screen.dart';
import 'package:blind_chicken/screens/app/app_screen.dart';
import 'package:blind_chicken/screens/boutiques/boutiques_description_screen.dart';
import 'package:blind_chicken/screens/boutiques/boutiques_screen.dart';
import 'package:blind_chicken/screens/boutiques/widgets/map/boutique_yandex_map.dart';
import 'package:blind_chicken/screens/brands/brands_screen.dart';
import 'package:blind_chicken/screens/chat/chat_messanger_screen.dart';
import 'package:blind_chicken/screens/favourites/favourites_filter_screen.dart';
import 'package:blind_chicken/screens/favourites/favourites_filter_select_value/favourites_filter_select_value_screen.dart';
import 'package:blind_chicken/screens/favourites/favourites_filter_select_value_search/favourites_filter_select_value_search_screen.dart';
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
import 'package:blind_chicken/screens/home/order_user_info/order_user_info_screen.dart';
import 'package:blind_chicken/screens/home/sale/sale_screen.dart';
import 'package:blind_chicken/screens/info/info_screen.dart';
import 'package:blind_chicken/screens/order/order_screen.dart';
import 'package:blind_chicken/screens/pdf_view/blind_chicken_pdf_view.dart';
import 'package:blind_chicken/screens/shopping_cart/shopping_cart_auto_route_screen.dart';
import 'package:blind_chicken/screens/shopping_cart/shopping_cart_screen.dart';
import 'package:blind_chicken/screens/chat/chat_screen.dart';
import 'package:blind_chicken/screens/favourites/favourites_screen.dart';
import 'package:blind_chicken/screens/home/catalog/catalog_card_info_screen.dart';
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
import 'package:blind_chicken/screens/web_view/blind_chicken_webview_screen.dart';
import 'package:blind_chicken/screens/web_view/sberbank_payment_webview_screen.dart';
import 'package:blind_chicken/screens/yandex_map/yandex_map_screen.dart';
import 'package:flutter/material.dart';
import 'package:models/models.dart';

import '../../boutiques/widgets/boutique_preview_images_screen.dart';
import '../../contacts/contacts_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: '/dashboard', page: DashboardRoute.page, initial: true, children: [
          AutoRoute(path: "home", page: HomeAutoRouterRoute.page, children: [
            AutoRoute(
              page: MainRoute.page,
              initial: true,
            ),
            AutoRoute(
              page: CategoryRoute.page,
            ),
            AutoRoute(
              page: CatalogRoute.page,
            ),
            AutoRoute(
              page: SaleRoute.page,
            ),
            AutoRoute(
              page: CatalogCardInfoRoute.page,
              path: 'catalog_card_info',
            ),
            AutoRoute(
              page: SortRoute.page,
            ),
            AutoRoute(
              page: CatalogSizeProductRoute.page,
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
              path: 'contacts',
            ),
            AutoRoute(
              page: InfoRoute.page,
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
              page: AccountRoute.page,
              path: "account",
            ),
            AutoRoute(
              page: ElectronicOrderFormsRoute.page,
              path: "electronic_order",
            ),
            AutoRoute(
              page: OrdersHemmingRoute.page,
              path: "orders_hemming",
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
          ]),
          AutoRoute(
            page: LoginRoute.page,
            path: 'login',
          ),
          AutoRoute(
            page: FavouritesRoute.page,
            path: 'favourites',
          ),
          AutoRoute(page: ShoppingCartAutoRouterRoute.page, path: 'shopping_cart', children: [
            AutoRoute(
              initial: true,
              page: ShoppingCartRoute.page,
            ),
            AutoRoute(
              page: OrderRoute.page,
              path: "order",
            ),
            AutoRoute(
              page: ShoppingCartDeliveryInfoRoute.page,
              path: "shopping_cart_delivery_info",
            ),
            AutoRoute(
              page: SberbankPaymentWebViewRoute.page,
              path: "sberbank_payment_webview_screen",
            ),
          ]),
          AutoRoute(
            page: ChatRoute.page,
            path: 'chat',
          ),
        ]),
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
        AutoRoute(
          page: FiltersRoute.page,
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
          page: BoutiquePreviewImagesRoute.page,
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
      ];
}
