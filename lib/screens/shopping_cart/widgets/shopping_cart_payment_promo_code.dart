import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/old_repos/blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class ShoppingCartPaymentPromoCode extends StatefulWidget {
  const ShoppingCartPaymentPromoCode({
    super.key,
    required this.isEmpty,
    required this.titlePromocode,
  });

  final bool isEmpty;
  final String titlePromocode;

  @override
  State<ShoppingCartPaymentPromoCode> createState() => _ShoppingCartPaymentPromoCodeState();
}

class _ShoppingCartPaymentPromoCodeState extends State<ShoppingCartPaymentPromoCode> {
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      BlocConsumer<ShoppingCartBloc, ShoppingCartState>(
        listener: (context, state) {
          state.maybeMap(
            productsShoppingCart: (initState) {
              if (initState.promoCodeMessage.isEmpty && !widget.isEmpty) {
                Navigator.pop(context);
              }
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return state.maybeMap(
            productsShoppingCart: (initState) {
              int balance = initState.paymentBonus?.balance ?? 0;
              return Container(
                height: initState.isLoadPaymentBonus && balance > 0 ? 296 : 196,
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
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 28,
                            top: 28,
                          ),
                          child: Text(
                            widget.titlePromocode,
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            context.maybePop();
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(10.5),
                            child: SvgPicture.asset(
                              'assets/icons/x.svg',
                            ),
                          ),
                        )
                      ],
                    ),
                    if (initState.isLoadPaymentPromoCode)
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
                    if (!initState.isLoadPaymentPromoCode &&
                        initState.promoCodeMessage.isNotEmpty &&
                        !widget.isEmpty)
                      Padding(
                        padding: const EdgeInsets.all(28),
                        child: Text(
                          initState.promoCodeMessage,
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                      ),
                    if (!initState.isLoadPaymentPromoCode && widget.isEmpty)
                      Padding(
                        padding: const EdgeInsets.all(28),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              'assets/icons/warning.svg',
                              height: 17.5,
                              width: 17.5,
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Text(
                              'Пожалуйста, введите промокод.',
                              style: Theme.of(context).textTheme.displayMedium,
                            )
                          ],
                        ),
                      ),
                  ],
                ),
              );
            },
            orElse: () => const SizedBox(),
          );
        },
      )
    ]);
  }
}
