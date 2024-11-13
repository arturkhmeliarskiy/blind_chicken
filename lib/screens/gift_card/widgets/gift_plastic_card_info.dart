import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/gift_card/widgets/gift_card_delivery_info.dart';
import 'package:blind_chicken/screens/gift_card/widgets/gift_plastic_card_edit_delivery_info.dart';
import 'package:blind_chicken/screens/gift_card/widgets/gift_plastic_card_switch_delivery_type.dart';
import 'package:blind_chicken/screens/login/login_phone_screen.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:models/models.dart';
import 'package:ui_kit/ui_kit.dart';

class GiftPlasticCardInfo extends StatefulWidget {
  const GiftPlasticCardInfo({
    super.key,
    required this.onReceivingType,
    required this.onAddressPickup,
    required this.onTypePay,
    required this.payments,
    required this.selectIndexAddres,
    required this.deleteIndexAddress,
    required this.listAddress,
    required this.isLoadDeleteAddress,
    required this.onAddressDelivery,
    required this.onSelectAddressDelivery,
    required this.deleteAddressDelivery,
    required this.delivery,
    required this.isAuth,
    required this.onSum,
    required this.receivingType,
    required this.isUponReceipt,
    required this.boutique,
    required this.boutiques,
  });

  final ValueChanged<PaymentItemDataModel> onTypePay;
  final ValueChanged<String> onReceivingType;
  final int selectIndexAddres;
  final int deleteIndexAddress;
  final int delivery;
  final bool isAuth;
  final List<DeliveryAddressDataModel> listAddress;
  final bool isLoadDeleteAddress;
  final Function(int, String, BasketAddressDataModel) onAddressDelivery;
  final ValueChanged<int> onSelectAddressDelivery;
  final ValueChanged<String> deleteAddressDelivery;
  final List<PaymentItemDataModel> payments;
  final ValueChanged<BoutiqueDataModel> onAddressPickup;
  final ValueChanged<String> onSum;
  final String receivingType;
  final bool isUponReceipt;
  final BoutiqueDataModel boutique;
  final BoutiquesDataModel boutiques;

  @override
  State<GiftPlasticCardInfo> createState() => _GiftPlasticCardInfoState();
}

class _GiftPlasticCardInfoState extends State<GiftPlasticCardInfo> {
  TextEditingController _sum = TextEditingController();
  PaymentItemDataModel _selectedItem = PaymentItemDataModel(id: '', name: '');
  String _receivingType = 'Самовывоз';

  BoutiqueDataModel? _boutique;

  @override
  void initState() {
    _boutique = widget.boutique;
    _receivingType = widget.receivingType;
    _selectedItem = widget.payments[0];
    _sum = TextEditingController(text: '50000');
    super.initState();
  }

  @override
  void didUpdateWidget(covariant GiftPlasticCardInfo oldWidget) {
    if (_selectedItem.name == 'При получении' && !widget.isUponReceipt) {
      setState(() {
        _selectedItem = widget.payments.first;
      });

      context.read<GiftCardBloc>().add(
            GiftCardEvent.changePaymentType(
              typePay: _selectedItem,
            ),
          );
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _sum.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.only(
          top: 28,
          bottom: 7,
        ),
        child: Text(
          'Сумма',
          style: Theme.of(context).textTheme.displayMedium?.copyWith(
                fontWeight: FontWeight.w700,
              ),
        ),
      ),
      SizedBox(
        height: 37,
        child: TextField(
          onTap: () {},
          onChanged: (value) {
            if (value.isNotEmpty) {
              _sum.text = value.replaceAll(RegExp(r'^0+(?=.)'), '');
              widget.onSum(_sum.text);
            } else {
              _sum.text = '0';
              widget.onSum(_sum.text);
            }
          },
          controller: _sum,
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
          ],
          cursorColor: BlindChickenColors.activeBorderTextField,
          style: Theme.of(context).textTheme.displayMedium,
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
            contentPadding: const EdgeInsets.only(
              left: 12,
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(
          top: 28,
          bottom: 7,
        ),
        child: Text(
          'Оплата',
          style: Theme.of(context).textTheme.displayMedium?.copyWith(
                fontWeight: FontWeight.w700,
              ),
        ),
      ),
      if (widget.isAuth)
        Column(
          children: [
            Row(
              children: List.generate(widget.payments.length, (index) {
                return Padding(
                  padding: EdgeInsets.only(left: index > 0 ? 21 : 0),
                  child: InkWell(
                    onTap: () {
                      if (widget.isUponReceipt || widget.payments[index].name != 'При получении') {
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
                              context.read<GiftCardBloc>().add(GiftCardEvent.preloadData(
                                    isNotification: false,
                                    searchQuery: '',
                                  ));
                            },
                            onBack: () {
                              context.maybePop();
                            },
                          );
                        });
                  },
                  child: Text(
                    'Войти или зарегистрироваться',
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.displayMedium?.copyWith(
                          decoration: TextDecoration.underline,
                        ),
                  ),
                ),
                Expanded(
                  child: Text(
                    ', чтобы выбрать',
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
              'способ оплаты.',
              textAlign: TextAlign.start,
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ],
        ),
      Padding(
        padding: EdgeInsets.only(
          top: 28,
          bottom: 7,
        ),
        child: Text(
          'Получение',
          style: Theme.of(context).textTheme.displayMedium?.copyWith(
                fontWeight: FontWeight.w700,
              ),
        ),
      ),
      if (widget.isAuth)
        Column(
          children: [
            GiftPlasticCardSwitchDeliveryType(
              isSwitch: true,
              indexSelect: _receivingType == 'Самовывоз' ? 0 : 1,
              navigateToMap: () {
                setState(() {
                  _receivingType = 'Доставка';
                });
                widget.onReceivingType(_receivingType);
              },
              navigateToBoutiques: () {
                setState(() {
                  _receivingType = 'Самовывоз';
                });
                widget.onReceivingType(_receivingType);
              },
            ),
            const SizedBox(
              height: 12,
            ),
            if (_receivingType != 'Доставка')
              GiftPlasticCardEditDeliveryInfo(
                mapPoint: _boutique ?? widget.boutiques.data.first,
                onEditAddress: () {
                  context.navigateTo(
                    GiftYandexMapRoute(
                      onMapPoint: (value) {
                        setState(() {
                          _boutique = value;
                        });
                        widget.onAddressPickup(value);
                      },
                      point: _boutique ?? widget.boutiques.data.first,
                      route: GiftCardRoute(),
                    ),
                  );
                },
              )
            else
              GiftCardDeliveryInfo(
                sum: int.parse(_sum.text),
                delivery: widget.delivery,
                onAddressDelivery: widget.onAddressDelivery,
                selectIndexAddres: widget.selectIndexAddres,
                deleteIndexAddress: widget.deleteIndexAddress,
                listAddress: widget.listAddress,
                isLoadDeleteAddress: widget.isLoadDeleteAddress,
                onSelectAddressDelivery: widget.onSelectAddressDelivery,
                deleteAddressDelivery: widget.deleteAddressDelivery,
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
                              context.read<GiftCardBloc>().add(GiftCardEvent.preloadData(
                                    isNotification: false,
                                    searchQuery: '',
                                  ));
                            },
                            onBack: () {
                              context.maybePop();
                            },
                          );
                        });
                  },
                  child: Text(
                    'Войти или зарегистрироваться',
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.displayMedium?.copyWith(
                          decoration: TextDecoration.underline,
                        ),
                  ),
                ),
                Expanded(
                  child: Text(
                    ', чтобы выбрать',
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
              'способ получения.',
              textAlign: TextAlign.start,
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ],
        ),
    ]);
  }
}
