import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/gift_card/widgets/gift_plastic_card_switch_delivery_type.dart';
import 'package:blind_chicken/screens/location/add_location_delivery_info.dart';
import 'package:blind_chicken/screens/login/login_phone_screen.dart';
import 'package:blind_chicken/screens/shopping_cart/widgets/shopping_cart_edit_delivery_info.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:models/models.dart';

class ShoppingCartDeliveryUserInfo extends StatefulWidget {
  const ShoppingCartDeliveryUserInfo({
    super.key,
    required this.title,
    required this.subTitle,
    required this.subTitle2,
    required this.subTitle3,
    required this.isAuth,
    required this.isLoadDeleteAddress,
    required this.onReceivingType,
    required this.onAddressPickup,
    required this.sum,
    required this.boutiques,
    required this.boutique,
    required this.onAddressDelivery,
    required this.deleteAddressDelivery,
    required this.listAddress,
    required this.selectIndexAddres,
    required this.deleteIndexAddress,
    required this.onSelectAddressDelivery,
    required this.receivingType,
  });

  final String title;
  final String subTitle;
  final String subTitle2;
  final String subTitle3;
  final String receivingType;
  final bool isAuth;
  final bool isLoadDeleteAddress;
  final ValueChanged<String> onReceivingType;
  final List<DeliveryAddressDataModel> listAddress;
  final Function(BoutiqueDataModel) onAddressPickup;
  final Function(int, String, BasketAddressDataModel) onAddressDelivery;
  final ValueChanged<String> deleteAddressDelivery;
  final ValueChanged<int> onSelectAddressDelivery;
  final BoutiquesDataModel boutiques;
  final BoutiqueDataModel boutique;
  final int selectIndexAddres;
  final int deleteIndexAddress;
  final int sum;

  @override
  State<ShoppingCartDeliveryUserInfo> createState() => _ShoppingCartDeliveryUserInfoState();
}

class _ShoppingCartDeliveryUserInfoState extends State<ShoppingCartDeliveryUserInfo> {
  String _receivingType = 'Самовывоз';
  BoutiqueDataModel? boutique;

  @override
  void initState() {
    boutique = widget.boutique;
    _receivingType = widget.receivingType;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
                Padding(
                  padding: const EdgeInsets.only(right: 100),
                  child: GiftPlasticCardSwitchDeliveryType(
                    isSwitch: true,
                    indexSelect: _receivingType == 'Самовывоз' ? 0 : 1,
                    navigateToMap: () {
                      setState(() {
                        _receivingType = 'Доставка';
                        widget.onReceivingType(_receivingType);
                      });
                    },
                    navigateToBoutiques: () {
                      setState(() {
                        _receivingType = 'Самовывоз';
                        widget.onReceivingType(_receivingType);
                      });
                    },
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                if (_receivingType != 'Доставка')
                  ShoppingCartEditDeliveryInfo(
                    boutique: boutique ?? widget.boutique,
                    onEditAddress: () {
                      context.navigateTo(
                        ShoppingYandexMapRoute(
                          onMapPoint: (value) {
                            setState(() {
                              boutique = value;
                              widget.onAddressPickup(value);
                            });
                          },
                          boutique: boutique ?? widget.boutiques.data.first,
                          boutiques: widget.boutiques,
                        ),
                      );
                    },
                  )
                else
                  AddLocationDeliveryInfo(
                    sum: widget.sum,
                    selectIndexAddres: widget.selectIndexAddres,
                    deleteIndexAddress: widget.deleteIndexAddress,
                    listAddress: widget.listAddress,
                    isLoadDeleteAddress: widget.isLoadDeleteAddress,
                    onAddressDelivery: widget.onAddressDelivery,
                    onSelectAddressDelivery: widget.onSelectAddressDelivery,
                    deleteAddressDelivery: widget.deleteAddressDelivery,
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
    );
  }
}
