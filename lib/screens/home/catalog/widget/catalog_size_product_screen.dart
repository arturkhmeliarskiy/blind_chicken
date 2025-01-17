import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/home/widgets/catalog_header_info.dart';
import 'package:flutter/material.dart';
import 'package:blind_chicken/old_repos/models/models.dart';
import 'package:blind_chicken/old_repos/ui_kit/ui_kit.dart';

@RoutePage()
class CatalogSizeProductScreen extends StatefulWidget {
  const CatalogSizeProductScreen({
    super.key,
    required this.onChange,
    required this.listSizeProduct,
    required this.selectItem,
  });

  final ValueChanged<SkuProductDataModel> onChange;
  final List<SkuProductDataModel> listSizeProduct;
  final SkuProductDataModel selectItem;

  @override
  State<CatalogSizeProductScreen> createState() => _CatalogSizeProductScreenState();
}

class _CatalogSizeProductScreenState extends State<CatalogSizeProductScreen> {
  int _selectIndex = 0;
  List<SkuProductDataModel> _listSort = [];
  bool _isSwipe = true;

  @override
  void initState() {
    _listSort = widget.listSizeProduct;
    _selectIndex = _listSort.indexOf(widget.selectItem);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragUpdate: (details) {},
      onHorizontalDragEnd: (DragEndDetails details) {
        if (details.velocity.pixelsPerSecond.dx > 0) {
          context.back();
          setState(() {
            _isSwipe = false;
          });
        }
      },
      child: PopScope(
        canPop: false,
        onPopInvoked: (value) {
          if (_isSwipe) {
            context.back();
          }
        },
        child: Scaffold(
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CatalogHeaderInfo(
                  title: 'Выберите размер',
                  onClose: () {
                    context.back();
                    setState(() {
                      _isSwipe = false;
                    });
                  },
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: _listSort.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          setState(() {
                            _selectIndex = index;
                            _isSwipe = false;
                          });
                          widget.onChange(_listSort[index]);
                        },
                        child: Container(
                          padding: const EdgeInsets.only(
                            top: 14,
                            bottom: 14,
                            right: 21,
                            left: 11.2,
                          ),
                          color: _selectIndex == index
                              ? BlindChickenColors.backgroundColorItemFilter
                              : Colors.transparent,
                          child: Text(
                            _listSort[index].value,
                            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                  fontWeight:
                                      _selectIndex == index ? FontWeight.w600 : FontWeight.w400,
                                ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                BlindChickenTitleButton(
                  title: 'Закрыть',
                  onChange: () {
                    setState(() {
                      _isSwipe = false;
                    });
                    context.back();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
