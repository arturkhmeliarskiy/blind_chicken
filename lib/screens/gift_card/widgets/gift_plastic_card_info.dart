import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/gift_card/widgets/gift_card_delivery_info.dart';
import 'package:blind_chicken/screens/gift_card/widgets/gift_plastic_card_edit_delivery_info.dart';
import 'package:blind_chicken/screens/gift_card/widgets/gift_plastic_card_switch_delivery_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:models/models.dart';
import 'package:shared/shared.dart';
import 'package:ui_kit/ui_kit.dart';

class GiftPlasticCardInfo extends StatefulWidget {
  const GiftPlasticCardInfo({
    super.key,
    required this.onReceivingType,
    required this.onAddressPickup,
    required this.onTypePay,
    required this.payments,
    required this.onAddressDelivery,
    required this.onSum,
  });

  final ValueChanged<PaymentItemDataModel> onTypePay;
  final ValueChanged<String> onReceivingType;
  final ValueChanged<BasketAddressDataModel> onAddressDelivery;
  final List<PaymentItemDataModel> payments;
  final ValueChanged<BoutiqueDataModel> onAddressPickup;
  final ValueChanged<String> onSum;

  @override
  State<GiftPlasticCardInfo> createState() => _GiftPlasticCardInfoState();
}

class _GiftPlasticCardInfoState extends State<GiftPlasticCardInfo> {
  TextEditingController _sum = TextEditingController();
  PaymentItemDataModel _selectedItem = PaymentItemDataModel(id: '', name: '');
  String _receivingType = 'Самовывоз';

  late BoutiqueDataModel _mapPoint;

  @override
  void initState() {
    init();
    _selectedItem = widget.payments[0];
    _sum = TextEditingController(text: '50000');
    super.initState();
  }

  init() async {
    final updateDataService = GetIt.I.get<UpdateDataService>();
    _mapPoint = updateDataService.boutiques[0];
  }

  @override
  void dispose() {
    _sum.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
              widget.onSum(value);
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
        Row(
          children: List.generate(widget.payments.length, (index) {
            return Padding(
              padding: EdgeInsets.only(left: index > 0 ? 21 : 0),
              child: InkWell(
                onTap: () {
                  setState(() {
                    _selectedItem = widget.payments[index];
                    widget.onTypePay(_selectedItem);
                  });
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
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                  ],
                ),
              ),
            );
          }),
        ),

        // Row(
        //   children: [
        //     InkWell(
        //       onTap: () {
        //         setState(() {
        //           _selectedItem = 'Банковской картой';
        //         });
        //       },
        //       child: Row(
        //         crossAxisAlignment: CrossAxisAlignment.center,
        //         children: [
        //           Container(
        //             height: 17.5,
        //             width: 17.5,
        //             decoration: BoxDecoration(
        //               borderRadius: BorderRadius.circular(10),
        //               border: Border.all(
        //                 color: BlindChickenColors.borderSwitchCard,
        //               ),
        //             ),
        //             alignment: Alignment.center,
        //             child: _selectedItem == 'Банковской картой'
        //                 ? Container(
        //                     height: 8,
        //                     width: 8,
        //                     decoration: BoxDecoration(
        //                       color: BlindChickenColors.activeBorderTextField,
        //                       borderRadius: BorderRadius.circular(10),
        //                       border: Border.all(
        //                         color: BlindChickenColors.activeBorderTextField,
        //                       ),
        //                     ),
        //                   )
        //                 : const SizedBox(),
        //           ),
        //           const SizedBox(
        //             width: 7,
        //           ),
        //           Text(
        //             'Банковской картой',
        //             style: Theme.of(context).textTheme.displayMedium,
        //           ),
        //         ],
        //       ),
        //     ),
        //     const SizedBox(
        //       width: 21,
        //     ),
        //     InkWell(
        //       onTap: () {
        //         setState(() {
        //           _selectedItem = 'При получении';
        //         });
        //       },
        //       child: Row(
        //         crossAxisAlignment: CrossAxisAlignment.center,
        //         children: [
        //           Container(
        //             height: 17.5,
        //             width: 17.5,
        //             decoration: BoxDecoration(
        //               borderRadius: BorderRadius.circular(10),
        //               border: Border.all(
        //                 color: BlindChickenColors.borderSwitchCard,
        //               ),
        //             ),
        //             alignment: Alignment.center,
        //             child: _selectedItem == 'При получении'
        //                 ? Container(
        //                     height: 8,
        //                     width: 8,
        //                     decoration: BoxDecoration(
        //                       color: BlindChickenColors.activeBorderTextField,
        //                       borderRadius: BorderRadius.circular(10),
        //                       border: Border.all(
        //                         color: BlindChickenColors.activeBorderTextField,
        //                       ),
        //                     ),
        //                   )
        //                 : const SizedBox(),
        //           ),
        //           const SizedBox(
        //             width: 7,
        //           ),
        //           Text(
        //             'При получении',
        //             style: Theme.of(context).textTheme.displayMedium,
        //           ),
        //         ],
        //       ),
        //     ),
        //   ],
        // ),
        Padding(
          padding: const EdgeInsets.only(
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
        GiftPlasticCardSwitchDeliveryType(
          isSwitch: true,
          navigateToMap: () {
            setState(() {
              _receivingType = 'Доставка';
            });
            widget.onReceivingType(_receivingType);
            // if (_selectedItem != 'При получении') {
            //   context.navigateTo(
            //     GiftYandexMapRoute(
            //       onMapPoint: (value) {
            //         setState(() {
            //           _mapPoint = value;
            //         });
            //       },
            //       point: _mapPoint,
            //     ),
            //   );
            // }
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
            mapPoint: _mapPoint,
            onEditAddress: () {
              context.navigateTo(
                GiftYandexMapRoute(
                  onMapPoint: (value) {
                    setState(() {
                      _mapPoint = value;
                    });
                  },
                  point: _mapPoint,
                  route: GiftCardRoute(),
                ),
              );
            },
          )
        else
          GiftCardDeliveryInfo(
            sum: int.parse(_sum.text),
            onAddressDelivery: widget.onAddressDelivery,
          )
      ],
    );
  }
}
