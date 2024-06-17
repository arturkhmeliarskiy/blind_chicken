import 'package:blind_chicken/screens/home/widgets/catalog_header_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:models/models.dart';
import 'package:ui_kit/ui_kit.dart';

class CatalogSizeProductInfo extends StatefulWidget {
  const CatalogSizeProductInfo({
    super.key,
    required this.listSize,
    required this.addProductToSoppingCart,
    required this.listSizeToSoppingCart,
    required this.openSoppingCart,
  });

  final List<SkuProductDataModel> listSize;
  final List<SkuProductDataModel> listSizeToSoppingCart;
  final ValueChanged<SkuProductDataModel> addProductToSoppingCart;
  final VoidCallback openSoppingCart;

  @override
  State<CatalogSizeProductInfo> createState() => _CatalogSizeProductInfoState();
}

class _CatalogSizeProductInfoState extends State<CatalogSizeProductInfo> {
  List<SkuProductDataModel> listSize = [];
  List<SkuProductDataModel> listSizeToSoppingCart = [];

  @override
  void initState() {
    listSize = widget.listSize.toList();
    listSizeToSoppingCart = widget.listSizeToSoppingCart.toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: BlindChickenColors.backgroundColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CatalogHeaderInfo(
            title: 'Выберите размер',
            onClose: () {
              Navigator.pop(context);
            },
          ),
          Expanded(
            child: ListView.builder(
              itemCount: listSize.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    if (listSizeToSoppingCart.contains(listSize[index])) {
                      widget.openSoppingCart();
                    } else {
                      setState(() {
                        listSizeToSoppingCart.add(listSize[index]);
                      });
                      widget.addProductToSoppingCart(listSize[index]);
                    }
                  },
                  child: Container(
                    padding: const EdgeInsets.only(
                      top: 14,
                      bottom: 14,
                      right: 21,
                      left: 11.2,
                    ),
                    color: listSizeToSoppingCart.contains(listSize[index])
                        ? BlindChickenColors.backgroundColorItemFilter
                        : Colors.transparent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          listSize[index].value,
                          style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                fontWeight: listSizeToSoppingCart.contains(listSize[index])
                                    ? FontWeight.w600
                                    : FontWeight.w400,
                              ),
                        ),
                        if (listSizeToSoppingCart.contains(listSize[index]))
                          SvgPicture.asset(
                            'assets/icons/shop_cart.svg',
                            height: 17.5,
                            width: 17.5,
                          )
                        else
                          const SizedBox()
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
