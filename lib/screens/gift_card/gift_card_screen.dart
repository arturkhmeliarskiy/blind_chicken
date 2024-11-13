import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/gift_card/widgets/gift_card_blind_chicken.dart';
import 'package:blind_chicken/screens/gift_card/widgets/gift_card_check_create_order.dart';
import 'package:blind_chicken/screens/gift_card/widgets/gift_card_switch_card_material.dart';
import 'package:blind_chicken/screens/gift_card/widgets/gift_plastic_card_info.dart';
import 'package:blind_chicken/screens/gift_card/widgets/gift_virtual_card_info.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:models/models.dart';
import 'package:shared/shared.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class GiftCardScreen extends StatefulWidget {
  const GiftCardScreen({
    super.key,
    this.isNotification = false,
    this.lastPath = '',
    this.newsInfo,
    this.newsMediaInfo,
    this.newsNotificationInfo,
    this.idNews,
    this.messageId,
    this.searchQuery,
  });

  final bool isNotification;
  final String lastPath;
  final String? searchQuery;
  final String? idNews;
  final String? messageId;
  final NewsInfoItemDataModel? newsInfo;
  final MediaInfoItemDataModel? newsMediaInfo;
  final NotificationInfoItemDataModel? newsNotificationInfo;

  @override
  State<GiftCardScreen> createState() => _GiftCardScreenState();
}

class _GiftCardScreenState extends State<GiftCardScreen> {
  GiftCardModel _selectedColor = BlindChickenGiftCardColors.listColors.first;

  @override
  void didChangeDependencies() {
    if (widget.isNotification) {
      AppMetrica.reportEvent('Подарочная карта из push-уведомления');
      Timer(const Duration(milliseconds: 500), () {
        context.read<GiftCardBloc>().add(GiftCardEvent.preloadData(
              isNotification: widget.isNotification,
              messageId: widget.messageId,
              searchQuery: '',
            ));
      });
    } else {
      AppMetrica.reportEvent('Подарочная карта');
      context.read<GiftCardBloc>().add(GiftCardEvent.preloadData(
            isNotification: widget.isNotification,
            searchQuery: widget.searchQuery ?? '',
          ));
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<GiftCardBloc, GiftCardState>(
      listener: (context, state) {
        state.maybeMap(
          preloadDataCompleted: (initState) {
            if (initState.isUpdateVersionApp && initState.isNotification) {
              final updateData = GetIt.I.get<UpdateDataService>();
              if (updateData.isOpenUpdateModalWindow) {
                Navigator.of(context, rootNavigator: true).pop();
              }

              BlindChickenMessage().showOverlay(context, 'Доступно обновление приложения', () {
                if (Platform.isAndroid || Platform.isIOS) {
                  final appId =
                      Platform.isAndroid ? 'YOUR_ANDROID_PACKAGE_ID' : 'com.slepayakurica.app';
                  final url = Uri.parse(
                    Platform.isAndroid
                        ? "market://details?id=$appId"
                        : "https://apps.apple.com/ru/app/id6471508431",
                  );
                  launchUrl(
                    url,
                    mode: LaunchMode.externalApplication,
                  );
                }
              });
            }
          },
          createOrderSuccessfully: (value) {
            context.read<AccountBloc>().add(
                  AccountEvent.getInfoPayOrder(
                    id: value.orderId.toString(),
                    searchQuery: value.searchQuery,
                  ),
                );
            if (widget.isNotification) {
              AppMetrica.reportEvent('Подарочная карта из push-уведомления');
              Timer(const Duration(milliseconds: 500), () {
                context.read<GiftCardBloc>().add(GiftCardEvent.preloadData(
                      isNotification: widget.isNotification,
                      messageId: widget.messageId,
                      searchQuery: '',
                    ));
              });
            } else {
              AppMetrica.reportEvent('Подарочная карта');
              context.read<GiftCardBloc>().add(GiftCardEvent.preloadData(
                    isNotification: widget.isNotification,
                    searchQuery: widget.searchQuery ?? '',
                  ));
            }
            context.navigateTo(
              LoginRoute(
                children: [
                  OrderUserInfoRoute(
                    isPay: true,
                    orderId: value.orderId.toString(),
                  ),
                ],
              ),
            );
          },
          orElse: () {},
        );
      },
      child: Stack(
        children: [
          SafeArea(
            child: Scaffold(
              body: ListView(
                children: [
                  const AppBarBlindChicken(),
                  GestureDetector(
                    onHorizontalDragUpdate: (details) {},
                    onHorizontalDragEnd: (DragEndDetails details) {
                      if (details.velocity.pixelsPerSecond.dx > 0) {
                        context.read<CatalogBloc>().add(
                              const CatalogEvent.goBackCatalogInfo(),
                            );

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
                          } else if (widget.lastPath ==
                              'notfication_info_notfication_description') {
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

                        log((details.velocity.pixelsPerSecond.dx).toString());
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
                            } else if (widget.lastPath ==
                                'notfication_info_notfication_description') {
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
                            Padding(
                              padding: const EdgeInsets.only(top: 17.5, bottom: 17.5),
                              child: Text(
                                'Подарочная карта',
                                style: Theme.of(context).textTheme.titleSmall,
                              ),
                            ),
                            BlocBuilder<GiftCardBloc, GiftCardState>(
                              builder: (context, state) {
                                return state.maybeMap(
                                  preloadDataCompleted: (initState) {
                                    return Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        GiftCardBlindChicken(
                                          selectedColor: _selectedColor.color,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 21,
                                          ),
                                          child: Text(
                                            'Вид',
                                            style:
                                                Theme.of(context).textTheme.displayMedium?.copyWith(
                                                      fontWeight: FontWeight.w700,
                                                    ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 7,
                                        ),
                                        GiftCardSwitchCardMaterial(
                                          typeGiftCard: initState.typeGiftCard,
                                          onChangeTypeCard: (value) {
                                            context.read<GiftCardBloc>().add(
                                                  GiftCardEvent.changeTypeGiftCard(
                                                    typeGiftCard: value,
                                                  ),
                                                );
                                          },
                                        ),
                                        if (initState.typeGiftCard == 'Виртуальная')
                                          GiftVirtualCardInfo(
                                            selectedColor: _selectedColor,
                                            onSelectedColor: (value) {
                                              setState(() {
                                                _selectedColor = value;
                                              });
                                            },
                                            onSum: (value) {
                                              context.read<GiftCardBloc>().add(
                                                    GiftCardEvent.changeAmountPaid(
                                                      amountPaid: int.parse(value),
                                                    ),
                                                  );
                                            },
                                          )
                                        else
                                          GiftPlasticCardInfo(
                                            selectIndexAddres: initState.selectIndexAddress ?? 0,
                                            deleteIndexAddress: initState.deleteIndexAddress ?? 0,
                                            listAddress: initState.deliveryInfo?.address ?? [],
                                            isLoadDeleteAddress:
                                                initState.isLoadDeleteAddress ?? false,
                                            boutiques: initState.boutiques,
                                            onSelectAddressDelivery: (index) {
                                              context.read<GiftCardBloc>().add(
                                                    GiftCardEvent.selectAddressDelivery(
                                                      index: index,
                                                    ),
                                                  );
                                            },
                                            boutique: initState.boutique ??
                                                initState.boutiques.data.first,
                                            delivery: initState.delivery ?? 0,
                                            deleteAddressDelivery: (id) {
                                              context.read<GiftCardBloc>().add(
                                                    GiftCardEvent.deleteAddressDelivery(
                                                      id: id,
                                                    ),
                                                  );
                                            },
                                            onSum: (value) {
                                              context.read<GiftCardBloc>().add(
                                                    GiftCardEvent.changeAmountPaid(
                                                      amountPaid: int.parse(value),
                                                    ),
                                                  );
                                            },
                                            onReceivingType: (value) {
                                              context.read<GiftCardBloc>().add(
                                                    GiftCardEvent.changeReceivingType(
                                                      receivingType: value,
                                                    ),
                                                  );
                                            },
                                            onAddressPickup: (value) {
                                              context.read<GiftCardBloc>().add(
                                                    GiftCardEvent.changeUidPickUpPoint(
                                                      uidPickUpPoint: value.uidStore,
                                                    ),
                                                  );
                                            },
                                            onTypePay: (value) {
                                              context.read<GiftCardBloc>().add(
                                                    GiftCardEvent.changePaymentType(
                                                      typePay: value,
                                                    ),
                                                  );
                                            },
                                            payments: initState.payments,
                                            onAddressDelivery: (price, cityId, addressDelivery) {
                                              context.read<GiftCardBloc>().add(
                                                    GiftCardEvent.addAddressDelivery(
                                                      addressDelivery: BasketAddressDataModel(
                                                        address: addressDelivery.address
                                                                .replaceAll(RegExp(r"\s+"), '')
                                                                .isNotEmpty
                                                            ? addressDelivery.address
                                                            : '',
                                                        zip: addressDelivery.zip,
                                                        cityId: addressDelivery.cityId,
                                                        city: addressDelivery.city,
                                                        street: addressDelivery.street,
                                                        house: addressDelivery.house,
                                                        flat: addressDelivery.flat,
                                                      ),
                                                      delivery: price,
                                                      cityId: cityId,
                                                    ),
                                                  );
                                            },
                                            isUponReceipt: initState.receivingType != 'Самовывоз'
                                                ? initState.isUponReceipt
                                                : true,
                                            receivingType: initState.receivingType,
                                          ),
                                        const SizedBox(
                                          height: 28,
                                        ),
                                        BlindChickenButton(
                                          title: 'Заказать',
                                          onChenge: () {
                                            context.read<GiftCardBloc>().add(
                                                  GiftCardEvent.createOrder(
                                                    request: CatalogGiftCardRequest(
                                                      city: initState.typeGiftCard != 'Виртуальная'
                                                          ? initState.receivingType != 'Самовывоз'
                                                              ? initState.addressDelivery.cityId ??
                                                                  ''
                                                              : ''
                                                          : '',
                                                      type: initState.typeGiftCard == 'Виртуальная'
                                                          ? '1'
                                                          : '2',
                                                      color: _selectedColor.id,
                                                      delivery: BasketOrderDeliveryRequest(
                                                        adr: initState.typeGiftCard != 'Виртуальная'
                                                            ? initState.receivingType != 'Самовывоз'
                                                                ? initState.addressDelivery.address
                                                                : ''
                                                            : '',
                                                        id: initState.typeGiftCard != 'Виртуальная'
                                                            ? initState.receivingType == 'Самовывоз'
                                                                ? '1'
                                                                : '2'
                                                            : '',
                                                        pck: initState.typeGiftCard != 'Виртуальная'
                                                            ? initState.receivingType == 'Самовывоз'
                                                                ? initState.uidPickUpPoint
                                                                : ''
                                                            : '',
                                                        zip: initState.typeGiftCard != 'Виртуальная'
                                                            ? initState.receivingType != 'Самовывоз'
                                                                ? initState.addressDelivery.zip
                                                                : ''
                                                            : '',
                                                        adrId: initState.receivingType !=
                                                                'Самовывоз'
                                                            ? initState.addressDelivery.adrId ?? ''
                                                            : '',
                                                      ),
                                                      payment:
                                                          initState.typeGiftCard != 'Виртуальная'
                                                              ? initState.typePay.id
                                                              : '1',
                                                      sum: initState.amountPaid.toString(),
                                                    ),
                                                  ),
                                                );
                                            showDialog(
                                              context: context,
                                              builder: (context) {
                                                return const GiftCardCheckCreateOrder();
                                              },
                                            );
                                          },
                                        ),
                                        const SizedBox(
                                          height: 28,
                                        ),
                                        Text(
                                          'О подарочной карте (официальная оферта)',
                                          style:
                                              Theme.of(context).textTheme.displayMedium?.copyWith(
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            const Text('•'),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Expanded(
                                              child: Text(
                                                'Можно отправить получателю или себе, чтобы вручить лично.',
                                                style: Theme.of(context).textTheme.displayMedium,
                                                maxLines: 2,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            const Text('•'),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Expanded(
                                              child: RichText(
                                                text: TextSpan(
                                                  text: 'Доставка подарочных карт номиналом более ',
                                                  style: Theme.of(context).textTheme.displayMedium,
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                      text: '10 000',
                                                      style:
                                                          Theme.of(context).textTheme.displayMedium,
                                                    ),
                                                    TextSpan(
                                                      text: ' ₽',
                                                      style:
                                                          Theme.of(context).textTheme.displayMedium,
                                                    ),
                                                    TextSpan(
                                                      text: ' бесплатно.',
                                                      style:
                                                          Theme.of(context).textTheme.displayMedium,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            const Text('•'),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Expanded(
                                              child: Text(
                                                'Если после оплаты подарочной картой на ней '
                                                'останутся средства, их можно будет использовать '
                                                'при оплате следующего заказа.',
                                                style: Theme.of(context).textTheme.displayMedium,
                                                maxLines: 3,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            const Text('•'),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Expanded(
                                              child: Text(
                                                'Использовать подарочную карту можно в любом из '
                                                'наших бутиков, предьявив его консультанту.',
                                                style: Theme.of(context).textTheme.displayMedium,
                                                maxLines: 3,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            const Text('•'),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Expanded(
                                              child: Text(
                                                'Подарочная карта действует в течение 1 года после покупки.',
                                                style: Theme.of(context).textTheme.displayMedium,
                                                maxLines: 3,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            const Text('•'),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Expanded(
                                              child: Text(
                                                'Возврат денежных средств после приобретения и '
                                                'активации подарочной карты невозможен. Активация '
                                                'подарочной карты происходит в момент выдачи клиенту '
                                                'купленной подарочной карты.',
                                                style: Theme.of(context).textTheme.displayMedium,
                                                maxLines: 5,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            const Text('•'),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Expanded(
                                              child: Text(
                                                'После активации подарочной карты покупатель '
                                                'получает секретный код для использования подарочной '
                                                'карты. Использование подарочной карты без предоставления '
                                                'секретного кода невозможно.',
                                                style: Theme.of(context).textTheme.displayMedium,
                                                maxLines: 5,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 32,
                                        ),
                                      ],
                                    );
                                  },
                                  orElse: () => const SizedBox(),
                                );
                              },
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          BlocBuilder<GiftCardBloc, GiftCardState>(
            builder: (context, state) {
              return state.maybeMap(
                load: (value) {
                  return Center(
                    child: CircularProgressIndicator(
                      color: Colors.black,
                      backgroundColor: Colors.grey.shade400,
                    ),
                  );
                },
                orElse: () => const SizedBox(),
              );
            },
          ),
        ],
      ),
    );
  }
}
