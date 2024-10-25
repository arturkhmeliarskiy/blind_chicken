import 'dart:async';

import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:models/models.dart';
import 'package:ui_kit/ui_kit.dart';

@RoutePage()
class ServiceCardScreen extends StatefulWidget {
  const ServiceCardScreen({
    super.key,
    this.lastPath = '',
    this.newsInfo,
    this.newsMediaInfo,
    this.newsNotificationInfo,
    this.messageId,
    this.idNews,
  });

  final String lastPath;
  final String? messageId;
  final String? idNews;
  final NewsInfoItemDataModel? newsInfo;
  final MediaInfoItemDataModel? newsMediaInfo;
  final NotificationInfoItemDataModel? newsNotificationInfo;

  @override
  State<ServiceCardScreen> createState() => _ServiceCardScreenState();
}

class _ServiceCardScreenState extends State<ServiceCardScreen> {
  final BlindChickenShowDialogError _blindChickenShoppingCartShowDialogError =
      BlindChickenShowDialogError();
  bool _isShowDialogShoppingCartError = false;
  @override
  Widget build(BuildContext context) {
    return BlocListener<ShoppingCartBloc, ShoppingCartState>(
      listener: (context, state) {
        state.maybeMap(
          error: (value) {
            if (!_isShowDialogShoppingCartError && value.titleScreen == 'Сервисная карта') {
              _isShowDialogShoppingCartError = true;
              _blindChickenShoppingCartShowDialogError.openShowDualog(
                context: context,
                errorMessage: value.errorMessage,
                widget: BlocBuilder<ShoppingCartBloc, ShoppingCartState>(
                  builder: (context, state) {
                    return state.maybeMap(
                      loadErrorButton: (value) {
                        return const SizedBox(
                          height: 15,
                          width: 15,
                          child: Center(
                            child: CircularProgressIndicator(
                              strokeWidth: 3,
                              color: BlindChickenColors.backgroundColor,
                            ),
                          ),
                        );
                      },
                      error: (value) {
                        return Text(
                          'Повторить',
                          style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                color: BlindChickenColors.backgroundColor,
                              ),
                          textAlign: TextAlign.center,
                        );
                      },
                      orElse: () => const SizedBox(),
                    );
                  },
                ),
                onRepeatRequest: () {
                  context.read<ShoppingCartBloc>().add(
                        ShoppingCartEvent.addOtherProductToSoppingCart(
                          item: BasketInfoItemDataModel(
                            titleScreen: value.item?.titleScreen ?? '',
                            typeAddProductToShoppingCart:
                                value.item?.typeAddProductToShoppingCart ?? '',
                            searchQuery: '',
                            identifierAddProductToShoppingCart: '2',
                            sectionCategoriesPath: value.item?.sectionCategoriesPath ?? [],
                            productCategoriesPath: value.item?.productCategoriesPath ?? [],
                            code: value.item?.code ?? '',
                            sku: value.item?.sku ?? '',
                            count: 1,
                          ),
                        ),
                      );
                },
              );
            }
          },
          productsShoppingCart: (value) {
            if (_isShowDialogShoppingCartError) {
              _isShowDialogShoppingCartError = false;
              _blindChickenShoppingCartShowDialogError.closeShowDialog();
            }
          },
          orElse: () {},
        );
      },
      child: SafeArea(
        child: Scaffold(
          body: ListView(
            children: [
              const AppBarBlindChicken(),
              const SizedBox(
                height: 17.5,
              ),
              GestureDetector(
                onHorizontalDragUpdate: (details) {},
                onHorizontalDragEnd: (DragEndDetails details) {
                  if (details.velocity.pixelsPerSecond.dx > 0) {
                    if (widget.lastPath.isNotEmpty) {
                      if (widget.lastPath == 'news') {
                        context.navigateTo(
                          NewsRoute(children: [
                            NewsInfoRoute(
                              indexPage: 0,
                            ),
                          ]),
                        );
                        AppMetrica.reportEvent('Список новостей');
                      } else if (widget.lastPath == 'news_info_description') {
                        final newsInfo = widget.newsInfo;
                        if (newsInfo != null) {
                          context.navigateTo(
                            NewsInfoDescriptionRoute(
                              info: newsInfo,
                            ),
                          );
                          AppMetrica.reportEvent('Страница новостей');
                        }
                      } else if (widget.lastPath == 'media_info_description') {
                        final newsMediaInfo = widget.newsMediaInfo;
                        if (newsMediaInfo != null) {
                          context.navigateTo(
                            MediaInfoDescriptionRoute(
                              info: newsMediaInfo,
                            ),
                          );
                        }
                      } else if (widget.lastPath == 'notfication_info_description') {
                        final newsNotificationInfo = widget.newsNotificationInfo;
                        if (newsNotificationInfo != null) {
                          context.navigateTo(
                            NotificationInfoDescriptionRoute(
                              info: newsNotificationInfo,
                            ),
                          );
                        }
                      } else if (widget.lastPath == 'media_notiifcation_description') {
                        context.navigateTo(
                          MediaNotificationDescriptionRoute(
                            idNews: widget.idNews ?? '',
                            isNotification: true,
                            messageId: widget.messageId,
                          ),
                        );
                      } else if (widget.lastPath == 'news_notification_description') {
                        context.navigateTo(
                          NewsNotificationDescriptionRoute(
                            idNews: widget.idNews ?? '',
                            isNotification: true,
                            messageId: widget.messageId,
                          ),
                        );
                      } else if (widget.lastPath == 'notfication_info_notfication_description') {
                        context.navigateTo(
                          NotificationInfoNotificationDescriptionRoute(
                            idNews: widget.idNews ?? '',
                            isNotification: true,
                            messageId: widget.messageId,
                          ),
                        );
                      }
                    } else {
                      context.back();
                    }
                  }
                },
                child: PopScope(
                  canPop: false,
                  onPopInvoked: (value) {
                    if (!value) {
                      if (widget.lastPath.isNotEmpty) {
                        if (widget.lastPath == 'news') {
                          context.navigateTo(
                            NewsRoute(children: [
                              NewsInfoRoute(
                                indexPage: 0,
                              ),
                            ]),
                          );
                          AppMetrica.reportEvent('Список новостей');
                        } else if (widget.lastPath == 'news_info_description') {
                          final newsInfo = widget.newsInfo;
                          if (newsInfo != null) {
                            context.navigateTo(
                              NewsInfoDescriptionRoute(
                                info: newsInfo,
                              ),
                            );
                            AppMetrica.reportEvent('Страница новостей');
                          }
                        } else if (widget.lastPath == 'media_info_description') {
                          final newsMediaInfo = widget.newsMediaInfo;
                          if (newsMediaInfo != null) {
                            context.navigateTo(
                              MediaInfoDescriptionRoute(
                                info: newsMediaInfo,
                              ),
                            );
                          }
                        } else if (widget.lastPath == 'notfication_info_description') {
                          final newsNotificationInfo = widget.newsNotificationInfo;
                          if (newsNotificationInfo != null) {
                            context.navigateTo(
                              NotificationInfoDescriptionRoute(
                                info: newsNotificationInfo,
                              ),
                            );
                          }
                        } else if (widget.lastPath == 'media_notiifcation_description') {
                          context.navigateTo(
                            MediaNotificationDescriptionRoute(
                              idNews: widget.idNews ?? '',
                              isNotification: true,
                              messageId: widget.messageId,
                            ),
                          );
                        } else if (widget.lastPath == 'news_notification_description') {
                          context.navigateTo(
                            NewsNotificationDescriptionRoute(
                              idNews: widget.idNews ?? '',
                              isNotification: true,
                              messageId: widget.messageId,
                            ),
                          );
                        } else if (widget.lastPath == 'notfication_info_notfication_description') {
                          context.navigateTo(
                            NotificationInfoNotificationDescriptionRoute(
                              idNews: widget.idNews ?? '',
                              isNotification: true,
                              messageId: widget.messageId,
                            ),
                          );
                        }
                      } else {
                        context.back();
                      }
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 10.5,
                      right: 10.5,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Сервисная карта',
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        Image.asset(
                          'assets/images/service_card.png',
                          height: 168,
                          width: 252,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        SizedBox(
                          width: 252,
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              text: '1 500 ₽  ',
                              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                    fontWeight: FontWeight.w700,
                                  ),
                              children: [
                                TextSpan(
                                  text: 'от 2600 ₽ до 3800 ₽',
                                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                        decoration: TextDecoration.lineThrough,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        BlocBuilder<CatalogBloc, CatalogState>(builder: (context, state) {
                          return state.maybeMap(
                            preloadDataCompleted: (initState) {
                              return BlindChickenButtonShoppingCartProduct(
                                width: 252,
                                title: (initState.isShoppingCart ?? false)
                                    ? 'Перейти в корзину'
                                    : 'Добавить в корзину',
                                onChenge: () {
                                  if (initState.isShoppingCart ?? false) {
                                    Timer(const Duration(milliseconds: 150), () {
                                      context
                                          .read<ShoppingCartBloc>()
                                          .add(const ShoppingCartEvent.preloadData());
                                    });
                                    context.navigateTo(
                                      const ShoppingCartAutoRouterRoute(
                                        children: [
                                          ShoppingCartRoute(),
                                        ],
                                      ),
                                    );
                                  } else {
                                    context.read<CatalogBloc>().add(
                                          CatalogEvent.addProductToSoppingCart(
                                            code: int.parse(initState.codeProduct ?? '0'),
                                            titleScreen: 'Сервисная карта',
                                            typeAddProductToShoppingCart: 'Кнопка',
                                            identifierAddProductToShoppingCart: '1',
                                          ),
                                        );
                                    context.read<CatalogBloc>().add(
                                          const CatalogEvent.getInfoServiceCard(
                                            code: '15846',
                                          ),
                                        );
                                    context.read<ShoppingCartBloc>().add(
                                          ShoppingCartEvent.addOtherProductToSoppingCart(
                                            item: BasketInfoItemDataModel(
                                              code: initState.codeProduct ?? '',
                                              sku: '',
                                              count: 1,
                                              titleScreen: 'Сервисная карта',
                                              searchQuery: '',
                                              typeAddProductToShoppingCart: 'Кнопка',
                                              identifierAddProductToShoppingCart: '1',
                                              sectionCategoriesPath: [],
                                              productCategoriesPath: [],
                                            ),
                                          ),
                                        );
                                  }
                                },
                              );
                            },
                            orElse: () => const SizedBox(),
                          );
                        }),
                        const SizedBox(
                          height: 35,
                        ),
                        Text(
                          'В сервисную карту входит',
                          style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                fontWeight: FontWeight.w700,
                              ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        RichText(
                          text: TextSpan(children: [
                            TextSpan(
                              text:
                                  '  •  Гарантия на очки 6 месяцев с момента приобретения 600 ₽;\n',
                              style: Theme.of(context).textTheme.displayMedium,
                            ),
                            TextSpan(
                              text: '  •  Замена носовых упоров 2 раза/год 250 ₽ × 2;\n',
                              style: Theme.of(context).textTheme.displayMedium,
                            ),
                            TextSpan(
                              text:
                                  '  •  Регулировка посадки очков 1 раз/год 300 - 1500 ₽ (в зависимости от категории оправы);\n',
                              style: Theme.of(context).textTheme.displayMedium,
                            ),
                            TextSpan(
                              text: '  •  Чистка специальными средствами 2 раза/год 300 ₽ × 2;\n',
                              style: Theme.of(context).textTheme.displayMedium,
                            ),
                            TextSpan(
                              text: '  •  Протяжка всех винтов 2 раза/год (6 шт) 300 ₽ × 2;\n',
                              style: Theme.of(context).textTheme.displayMedium?.copyWith(height: 1),
                            ),
                          ]),
                        ),
                        const SizedBox(
                          height: 28,
                        ),
                        Text(
                          'Дополнительные условия',
                          style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                fontWeight: FontWeight.w700,
                              ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        RichText(
                          text: TextSpan(children: [
                            TextSpan(
                              text:
                                  '  •  Срок действия приобретенной сервисной карты 1 год от даты покупки;\n',
                              style: Theme.of(context).textTheme.displayMedium,
                            ),
                            TextSpan(
                              text:
                                  '  •  Одна сервисная карта закрепляется за одной позицией (солнцезащитные очки или оправа) в чеке;\n',
                              style: Theme.of(context).textTheme.displayMedium,
                            ),
                            TextSpan(
                              text:
                                  '  •  Для приобретения сервисной карты обязательна покупка в Слепой курице: солнцезащитных очков, оправы или очковых линз с установкой в оправу клиента;\n',
                              style: Theme.of(context).textTheme.displayMedium,
                            ),
                          ]),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
