import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:models/models.dart';
import 'package:ui_kit/ui_kit.dart';

@RoutePage()
class ServiceCardScreen extends StatelessWidget {
  const ServiceCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            const AppBarBlindChicken(),
            const SizedBox(
              height: 17.5,
            ),
            Padding(
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
                        return BlindChickenButton(
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
                                    ),
                                  );

                              context.read<ShoppingCartBloc>().add(
                                    ShoppingCartEvent.addOtherProductToSoppingCart(
                                      item: BasketInfoItemDataModel(
                                        code: initState.codeProduct ?? '',
                                        sku: '',
                                        count: 1,
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
                        text: '  •  Гарантия на очки 6 месяцев с момента приобретения 600 ₽;\n',
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
          ],
        ),
      ),
    );
  }
}
