import 'package:auto_route/auto_route.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_kit/ui_kit.dart';

class ShoppingCartPaymentBonuses extends StatefulWidget {
  const ShoppingCartPaymentBonuses({
    super.key,
    required this.onAddPayment,
  });

  final ValueChanged<int> onAddPayment;

  @override
  State<ShoppingCartPaymentBonuses> createState() => _ShoppingCartPaymentBonusesState();
}

class _ShoppingCartPaymentBonusesState extends State<ShoppingCartPaymentBonuses> {
  final TextEditingController _bonuses = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      BlocBuilder<ShoppingCartBloc, ShoppingCartState>(
        builder: (context, state) {
          return state.maybeMap(
            productsShoppingCart: (initState) {
              int balance = initState.paymentBonus?.balance ?? 0;
              return Container(
                height: !initState.isLoadPaymentBonus && balance > 0 ? 296 : 196,
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
                            'Оплата бонусами',
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            context.popRoute();
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
                    if (initState.isLoadPaymentBonus)
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
                    if ((initState.paymentBonus?.e.isNotEmpty ?? false) &&
                        !initState.isLoadPaymentBonus)
                      Padding(
                        padding: const EdgeInsets.all(28),
                        child: Text(
                          initState.paymentBonus?.e ?? '',
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                      ),
                    if (!initState.isLoadPaymentBonus && balance > 0)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 28,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 28),
                            child: Text(
                              'На бонусном счете $balance ₽',
                              style: Theme.of(context).textTheme.headlineLarge,
                            ),
                          ),
                          const SizedBox(
                            height: 14,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 28),
                            child: Text(
                              'Оплатить',
                              style: Theme.of(context).textTheme.headlineLarge,
                            ),
                          ),
                          const SizedBox(
                            height: 3.5,
                          ),
                          Material(
                            child: Container(
                              height: 37,
                              margin: const EdgeInsets.only(left: 28, right: 28),
                              child: TextField(
                                onTap: () {},
                                onChanged: (value) {
                                  int result = value.isNotEmpty ? int.parse(value) : 0;
                                  setState(() {
                                    if (result > balance) {
                                      _bonuses.text = balance.toString();
                                    }
                                  });
                                },
                                keyboardType: const TextInputType.numberWithOptions(
                                  decimal: true,
                                ),
                                inputFormatters: <TextInputFormatter>[
                                  FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                                ],
                                controller: _bonuses,
                                cursorColor: BlindChickenColors.activeBorderTextField,
                                style: Theme.of(context)
                                    .textTheme
                                    .displayMedium
                                    ?.copyWith(height: 1.4),
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: BlindChickenColors.borderTextField,
                                    ),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: BlindChickenColors.borderTextField,
                                    ),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: BlindChickenColors.activeBorderTextField,
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  focusColor: BlindChickenColors.backgroundColor,
                                  fillColor: BlindChickenColors.backgroundColor,
                                  hintStyle: Theme.of(context)
                                      .textTheme
                                      .displayMedium
                                      ?.copyWith(height: 1),
                                  prefixIconConstraints: const BoxConstraints(maxWidth: 40),
                                  contentPadding: const EdgeInsets.only(left: 12),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 42,
                          ),
                          GestureDetector(
                            onTap: () {
                              int result = _bonuses.text.isNotEmpty ? int.parse(_bonuses.text) : 0;
                              widget.onAddPayment(
                                result,
                              );
                              context.popRoute();
                            },
                            child: Container(
                              height: 44,
                              width: 157,
                              margin: const EdgeInsets.only(left: 28),
                              decoration: BoxDecoration(
                                color: BlindChickenColors.activeBorderTextField,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                'Добавить оплату',
                                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                      color: BlindChickenColors.backgroundColor,
                                    ),
                              ),
                            ),
                          )
                        ],
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
