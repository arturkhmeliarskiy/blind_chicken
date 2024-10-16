import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/login/login_phone_screen.dart';
import 'package:blind_chicken/screens/shopping_cart/widgets/shopping_cart_payment_bonuses.dart';
import 'package:blind_chicken/screens/shopping_cart/widgets/shopping_cart_payment_gift_card.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:models/models.dart';
import 'package:ui_kit/ui_kit.dart';

class ShoppingCartPayUserInfo extends StatefulWidget {
  const ShoppingCartPayUserInfo({
    super.key,
    required this.title,
    required this.subTitle,
    required this.subTitle2,
    required this.subTitle3,
    required this.isAuth,
    required this.onTypePay,
    required this.payments,
    required this.onAddPayment,
    required this.onAddGiftPayment,
    required this.isUponReceipt,
  });

  final String title;
  final String subTitle;
  final String subTitle2;
  final String subTitle3;
  final bool isAuth;
  final bool isUponReceipt;
  final ValueChanged<PaymentItemDataModel> onTypePay;
  final List<PaymentItemDataModel> payments;
  final ValueChanged<int> onAddPayment;
  final ValueChanged<BasketSertDeliveryRequest> onAddGiftPayment;

  @override
  State<ShoppingCartPayUserInfo> createState() => _ShoppingCartPayUserInfoState();
}

class _ShoppingCartPayUserInfoState extends State<ShoppingCartPayUserInfo> {
  PaymentItemDataModel _selectedItem = PaymentItemDataModel(id: '', name: '');
  final BlindChickenShowDialogError _blindChickenShoppingCartShowDialogError =
      BlindChickenShowDialogError();
  bool _isShowDialogShoppingCartError = false;

  @override
  void initState() {
    if (widget.payments.isNotEmpty) {
      _selectedItem = widget.payments.first;
    }
    super.initState();
  }

  @override
  void didUpdateWidget(covariant ShoppingCartPayUserInfo oldWidget) {
    if (_selectedItem.name == 'При получении' && !widget.isUponReceipt) {
      setState(() {
        _selectedItem = widget.payments.first;
      });
      context.read<ShoppingCartBloc>().add(
            ShoppingCartEvent.changePaymentType(
              paymentId: _selectedItem.id,
              typePay: 'Оплата ${_selectedItem.name.toLowerCase()}',
            ),
          );
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ShoppingCartBloc, ShoppingCartState>(
      listener: (context, state) {
        state.maybeMap(
          productsShoppingCart: (initState) {
            final typeError = initState.typeError ?? '';
            if (initState.isError ?? false) {
              if (!_isShowDialogShoppingCartError && typeError == 'проверка бонусов') {
                _isShowDialogShoppingCartError = true;
                _blindChickenShoppingCartShowDialogError.openShowDualog(
                  context: context,
                  errorMessage: initState.errorMessage ?? '',
                  widget: BlocBuilder<ShoppingCartBloc, ShoppingCartState>(
                    builder: (context, state) {
                      return state.maybeMap(
                        productsShoppingCart: (value) {
                          if (value.isLoadErrorButton ?? false) {
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
                          } else {
                            return Text(
                              'Повторить',
                              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                    color: BlindChickenColors.backgroundColor,
                                  ),
                              textAlign: TextAlign.center,
                            );
                          }
                        },
                        orElse: () => const SizedBox(),
                      );
                    },
                  ),
                  onRepeatRequest: () {
                    context.read<ShoppingCartBloc>().add(const ShoppingCartEvent.paymentBonus());
                  },
                );
              }
            } else {
              if (_isShowDialogShoppingCartError) {
                _isShowDialogShoppingCartError = false;
                _blindChickenShoppingCartShowDialogError.closeShowDialog();
              }
            }
          },
          openShowDialog: (value) {
            showDialog(
              context: context,
              builder: (context) {
                return ShoppingCartPaymentBonuses(
                  onAddPayment: widget.onAddPayment,
                );
              },
            );
          },
          orElse: () {},
        );
      },
      child: Container(
        alignment: Alignment.topLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.title,
              textAlign: TextAlign.start,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(
              height: 14,
            ),
            if (widget.isAuth)
              Column(
                children: [
                  Column(
                    children: List.generate(widget.payments.length, (index) {
                      return Padding(
                        padding: EdgeInsets.only(top: index > 0 ? 16 : 0),
                        child: InkWell(
                          onTap: () {
                            if (widget.isUponReceipt ||
                                widget.payments[index].name != 'При получении') {
                              setState(() {
                                _selectedItem = widget.payments[index];
                                widget.onTypePay(_selectedItem);
                              });
                            }
                          },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 17.5,
                                width: 17.5,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: BlindChickenColors.borderSwitchCard,
                                  ),
                                ),
                                alignment: Alignment.center,
                                child: widget.payments[index].id == _selectedItem.id
                                    ? Container(
                                        height: 8,
                                        width: 8,
                                        decoration: BoxDecoration(
                                          color: BlindChickenColors.activeBorderTextField,
                                          borderRadius: BorderRadius.circular(10),
                                          border: Border.all(
                                            color: BlindChickenColors.activeBorderTextField,
                                          ),
                                        ),
                                      )
                                    : const SizedBox(),
                              ),
                              const SizedBox(
                                width: 7,
                              ),
                              Text(
                                widget.payments[index].name,
                                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                      color: widget.isUponReceipt ||
                                              widget.payments[index].name != 'При получении'
                                          ? BlindChickenColors.activeBorderTextField
                                          : BlindChickenColors.textInput,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    children: [
                      BlindChickenBorderButton(
                        title: 'Бонусы',
                        onTap: () {
                          context
                              .read<ShoppingCartBloc>()
                              .add(const ShoppingCartEvent.paymentBonus());
                        },
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      BlindChickenBorderButton(
                        title: 'Подарочная карта',
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return ShoppingCartPaymentGiftCard(
                                onAddGiftPayment: widget.onAddGiftPayment,
                              );
                            },
                          );
                        },
                      ),
                    ],
                  )
                ],
              )
            else
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          context.read<LoginBloc>().add(const LoginEvent.init());
                          showDialog(
                              context: context,
                              builder: (context) {
                                return LoginPhoneScreen(
                                  successfully: () {
                                    Navigator.of(context, rootNavigator: true).pop();
                                    context.read<ShoppingCartBloc>().add(
                                          const ShoppingCartEvent.preloadData(),
                                        );
                                  },
                                  onBack: () {
                                    context.maybePop();
                                  },
                                );
                              });
                        },
                        child: Text(
                          widget.subTitle,
                          textAlign: TextAlign.start,
                          style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                decoration: TextDecoration.underline,
                              ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          widget.subTitle2,
                          textAlign: TextAlign.start,
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    widget.subTitle3,
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
