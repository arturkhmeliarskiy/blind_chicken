import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/login/login_phone_screen.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared/shared.dart';

class ShoppingCartCheckCreateOrder extends StatefulWidget {
  const ShoppingCartCheckCreateOrder({
    super.key,
  });

  @override
  State<ShoppingCartCheckCreateOrder> createState() => _ShoppingCartCheckCreateOrderState();
}

class _ShoppingCartCheckCreateOrderState extends State<ShoppingCartCheckCreateOrder> {
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      BlocConsumer<ShoppingCartBloc, ShoppingCartState>(
        listener: (context, state) {
          state.maybeMap(
            productsShoppingCart: (value) {
              if (value.isAuthModel ?? false) {
                context.read<LoginBloc>().add(const LoginEvent.init());
              }
            },
            createOrderSuccessfully: (value) {
              context.maybePop();
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return state.maybeMap(
            productsShoppingCart: (initState) {
              if (initState.isAuthModel ?? false) {
                return LoginPhoneScreen(
                  successfully: () {
                    Navigator.of(context).pop();
                    context.read<ShoppingCartBloc>().add(
                          const ShoppingCartEvent.preloadData(),
                        );
                  },
                  onBack: () {
                    Navigator.of(context, rootNavigator: true).pop();

                    context.read<ShoppingCartBloc>().add(
                          const ShoppingCartEvent.closeAuthModel(),
                        );
                  },
                );
              } else {
                return Container(
                  height: initState.creatOrderMessage?.isNotEmpty ?? false ? 210 : 196,
                  width: MediaQuery.of(context).size.width - 16,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context, rootNavigator: true).pop();
                            },
                            child: Container(
                              height: 30,
                              width: 30,
                              margin: const EdgeInsets.only(
                                right: 10.5,
                                top: 10.5,
                              ),
                              child: SvgPicture.asset(
                                'assets/icons/x.svg',
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 28,
                        ),
                        child: Text(
                          (initState.creatOrderMessage ?? '').isNotEmpty
                              ? 'Обнаружены ошибки'
                              : 'Проверка и создание заказа...',
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                      ),
                      if (initState.isLoadCreateOrder)
                        Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: Center(
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              color: Colors.black,
                              backgroundColor: Colors.grey.shade400,
                            ),
                          ),
                        ),
                      if (!initState.isLoadCreateOrder &&
                          (initState.creatOrderMessage?.isNotEmpty ?? false))
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 28,
                                left: 28,
                                right: 28,
                              ),
                              child: RichText(
                                text: TextSpan(
                                  children: checkMessage(
                                    initState.creatOrderMessage ?? '',
                                    () {
                                      context
                                          .read<ShoppingCartBloc>()
                                          .add(const ShoppingCartEvent.openAuthModel());
                                    },
                                  ),
                                ),
                              ),
                            ),
                            if (initState.creatOrderMessage != MessageInfo.errorMessage)
                              Padding(
                                padding: const EdgeInsets.only(left: 28, right: 28, top: 24),
                                child: Text(
                                  'Пожалуйста, исправьте ошибки и повторите попытку.',
                                  style: Theme.of(context).textTheme.displayMedium,
                                ),
                              ),
                          ],
                        ),
                    ],
                  ),
                );
              }
            },
            orElse: () => const SizedBox(),
          );
        },
      )
    ]);
  }

  List<TextSpan> checkMessage(
    String value,
    VoidCallback onTap,
  ) {
    final listWords = value.split(' ');
    List<TextSpan> result = [];
    for (int i = 0; i < listWords.length; i++) {
      if (listWords[i].toLowerCase().contains('авторизоваться')) {
        result.add(
          TextSpan(
            text: 'авторизоваться',
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                  decoration: TextDecoration.underline,
                ),
            recognizer: TapGestureRecognizer()..onTap = onTap,
          ),
        );
      } else {
        result.add(
          TextSpan(
            text: '${listWords[i]} ',
            style: Theme.of(context).textTheme.displayMedium,
          ),
        );
      }
    }
    return result;
  }
}
