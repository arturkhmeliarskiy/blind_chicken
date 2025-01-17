import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/old_repos/blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:blind_chicken/old_repos/models/models.dart';
import 'package:blind_chicken/old_repos/shared/shared.dart';
import 'package:blind_chicken/old_repos/ui_kit/ui_kit.dart';

class ShoppingCartPaymentGiftCard extends StatefulWidget {
  const ShoppingCartPaymentGiftCard({
    super.key,
    required this.onAddGiftPayment,
  });

  final ValueChanged<BasketSertDeliveryRequest> onAddGiftPayment;

  @override
  State<ShoppingCartPaymentGiftCard> createState() => _ShoppingCartPaymentGiftCardState();
}

class _ShoppingCartPaymentGiftCardState extends State<ShoppingCartPaymentGiftCard> {
  final TextEditingController _numberCard = TextEditingController();
  final TextEditingController _pinCode = TextEditingController();
  final TextEditingController _pay = TextEditingController();
  bool _isError = false;
  String _error = '';
  double _height = 0.0;

  @override
  void initState() {
    context.read<ShoppingCartBloc>().add(const ShoppingCartEvent.initGiftCard());
    super.initState();
  }

  @override
  void dispose() {
    _numberCard.dispose();
    _pinCode.dispose();
    super.dispose();
  }

  void validator(String numberCard, String pinCode) {
    if (numberCard.isEmpty && pinCode.isEmpty) {
      _height = 382;
      _error = '⚠ Необходимо заполнить: номер карты, пин-код';
      _isError = true;
    } else if (numberCard.isEmpty) {
      _height = 361;
      _error = '⚠ Необходимо заполнить: номер карты.';
      _isError = true;
    } else if (pinCode.isEmpty) {
      _height = 361;
      _error = '⚠ Необходимо заполнить: пин-код.';
      _isError = true;
    } else {
      _isError = false;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      BlocBuilder<ShoppingCartBloc, ShoppingCartState>(
        builder: (context, state) {
          return state.maybeMap(
            productsShoppingCart: (initState) {
              int balance = initState.paymentGift?.balance ?? 0;
              int sum = initState.amountPaid +
                  (initState.receivingType != 'Самовывоз' ? initState.delivery ?? 0 : 0) -
                  initState.bonuses;
              return Container(
                height: _isError
                    ? _height
                    : initState.isLoadPaymentGift || (initState.paymentGift?.e.isNotEmpty ?? false)
                        ? 196
                        : 326,
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
                            'Оплата подарочной картой',
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
                    if (initState.isLoadPaymentGift)
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
                    if (initState.paymentGift?.e.isNotEmpty ?? false)
                      Padding(
                        padding: const EdgeInsets.all(28),
                        child: Text(
                          initState.paymentGift?.e ?? '',
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                      ),
                    if (initState.paymentGift == null && !initState.isLoadPaymentGift)
                      Column(children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 28,
                            right: 28,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 32,
                              ),
                              Text(
                                'Номер карты',
                                style: Theme.of(context).textTheme.displayMedium,
                              ),
                              const SizedBox(
                                height: 3.5,
                              ),
                              Material(
                                child: SizedBox(
                                  height: 37,
                                  child: TextField(
                                    onTap: () {},
                                    onChanged: (value) {
                                      setState(() {});
                                    },
                                    controller: _numberCard,
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
                                height: 16,
                              ),
                              Text(
                                'Пин-код',
                                style: Theme.of(context).textTheme.displayMedium,
                              ),
                              const SizedBox(
                                height: 3.5,
                              ),
                              Material(
                                child: SizedBox(
                                  height: 37,
                                  child: TextField(
                                    onTap: () {},
                                    onChanged: (value) {
                                      setState(() {});
                                    },
                                    controller: _pinCode,
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
                              if (_isError)
                                Padding(
                                  padding: const EdgeInsets.only(top: 42, bottom: 14),
                                  child: Text(
                                    _error,
                                    style: Theme.of(context).textTheme.displayMedium,
                                  ),
                                )
                              else
                                const SizedBox(
                                  height: 48,
                                ),
                              GestureDetector(
                                onTap: () {
                                  validator(_numberCard.text, _pinCode.text);
                                  if (!_isError) {
                                    context.read<ShoppingCartBloc>().add(
                                          ShoppingCartEvent.giftCard(
                                            number: _numberCard.text,
                                            pin: _pinCode.text,
                                          ),
                                        );
                                  }
                                },
                                child: Container(
                                  height: 44,
                                  width: 163,
                                  decoration: BoxDecoration(
                                    color: BlindChickenColors.activeBorderTextField,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Перейти к оплате',
                                    style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                          color: BlindChickenColors.backgroundColor,
                                        ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ]),
                    if (balance > 0)
                      Column(children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 28,
                            right: 28,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 28,
                              ),
                              Text(
                                initState.paymentGift?.info ?? '',
                                style: Theme.of(context).textTheme.displayMedium,
                              ),
                              const SizedBox(
                                height: 7,
                              ),
                              Text(
                                'Баланс ${balance.toString().spaceSeparateNumbers()} ₽',
                                style: Theme.of(context).textTheme.displayMedium,
                              ),
                              const SizedBox(
                                height: 14,
                              ),
                              Text(
                                'Оплатить',
                                style: Theme.of(context).textTheme.displayMedium,
                              ),
                              const SizedBox(
                                height: 3.5,
                              ),
                              Material(
                                child: SizedBox(
                                  height: 37,
                                  child: TextField(
                                    onTap: () {},
                                    onChanged: (value) {
                                      int result = value.isNotEmpty ? int.parse(value) : 0;
                                      setState(() {
                                        if (result > balance) {
                                          if (sum > balance) {
                                            _pay.text = balance.toString();
                                          } else {
                                            _pay.text = sum.toString();
                                          }
                                        } else {
                                          if (result > sum) {
                                            _pay.text = sum.toString();
                                          } else {
                                            _pay.text = result.toString();
                                          }
                                        }
                                      });
                                    },
                                    controller: _pay,
                                    cursorColor: BlindChickenColors.activeBorderTextField,
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayMedium
                                        ?.copyWith(height: 1.4),
                                    inputFormatters: <TextInputFormatter>[
                                      FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                                    ],
                                    keyboardType: const TextInputType.numberWithOptions(
                                      decimal: true,
                                    ),
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
                                height: 48,
                              ),
                              GestureDetector(
                                onTap: () {
                                  int result = _pay.text.isNotEmpty ? int.parse(_pay.text) : 0;
                                  if (result > 0) {
                                    widget.onAddGiftPayment(
                                      BasketSertDeliveryRequest(
                                        n: _numberCard.text,
                                        p: _pinCode.text,
                                        v: _pay.text,
                                      ),
                                    );
                                  }
                                  context.maybePop();
                                },
                                child: Container(
                                  height: 44,
                                  width: 163,
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
                        ),
                      ]),
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

class PaymentGiftCardDataModel {
  final double? height;
  final bool? isError;
  final String? error;
  PaymentGiftCardDataModel({
    this.height,
    this.isError,
    this.error,
  });
}
