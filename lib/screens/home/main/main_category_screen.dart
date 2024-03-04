import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/home/main/widgets/main_category_product_item.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:models/models.dart';
import 'package:ui_kit/ui_kit.dart';

@RoutePage()
class MainCategoryScreen extends StatefulWidget {
  const MainCategoryScreen({
    super.key,
    required this.title,
    required this.selectIndexType,
  });

  final String title;
  final int selectIndexType;

  @override
  State<MainCategoryScreen> createState() => _MainCategoryScreenState();
}

class _MainCategoryScreenState extends State<MainCategoryScreen> {
  final TextEditingController _search = TextEditingController();
  int _selectIndexType = 0;

  @override
  void initState() {
    _selectIndexType = widget.selectIndexType;
    context.read<CatalogBloc>().add(
          CatalogEvent.switchTypePeople(selectIndexType: _selectIndexType),
        );

    super.initState();
  }

  String checkGender(int indexType) {
    String result = '';
    switch (indexType) {
      case 0:
        result = 'Женская коллекция';
      case 1:
        result = 'Мужская коллекция';
      case 2:
        result = 'Детская коллекция';
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context.read<CatalogBloc>().add(
              CatalogEvent.removePathMenu(
                items: [
                  MenuItemDataModel(
                    idParent: 0,
                    id: 0,
                    url: '',
                    name: widget.title,
                    sub: 0,
                    title: 0,
                    brand: 0,
                  )
                ],
              ),
            );
        return true;
      },
      child: Scaffold(
        body: ListView(
          padding: const EdgeInsets.only(
            left: 10.5,
            right: 10.5,
          ),
          children: [
            const AppBarBlindChicken(),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(left: 12.6, right: 12.6),
              height: 55,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            _selectIndexType = 0;
                          });
                          context.read<CatalogBloc>().add(
                                CatalogEvent.switchTypePeople(selectIndexType: _selectIndexType),
                              );
                        },
                        child: Text(
                          'Женщинам',
                          style: Theme.of(context).textTheme.displayLarge?.copyWith(
                            fontWeight: _selectIndexType == 0 ? FontWeight.w600 : FontWeight.w400,
                            shadows: [
                              _selectIndexType == 0
                                  ? Shadow(
                                      color: BlindChickenColors.activeBorderTextField.withOpacity(
                                        0.2,
                                      ),
                                      offset: const Offset(0, 1),
                                      blurRadius: 1,
                                    )
                                  : const Shadow(),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 17.5,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            _selectIndexType = 1;
                          });
                          context.read<CatalogBloc>().add(
                                CatalogEvent.switchTypePeople(selectIndexType: _selectIndexType),
                              );
                        },
                        child: Text(
                          'Мужчинам',
                          style: Theme.of(context).textTheme.displayLarge?.copyWith(
                            fontWeight: _selectIndexType == 1 ? FontWeight.w600 : FontWeight.w400,
                            shadows: [
                              _selectIndexType == 1
                                  ? Shadow(
                                      color: BlindChickenColors.activeBorderTextField.withOpacity(
                                        0.2,
                                      ),
                                      offset: const Offset(0, 1),
                                      blurRadius: 1,
                                    )
                                  : const Shadow(),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 17.5,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            _selectIndexType = 2;
                          });
                          context.read<CatalogBloc>().add(
                                CatalogEvent.switchTypePeople(selectIndexType: _selectIndexType),
                              );
                        },
                        child: Text(
                          'Детям',
                          style: Theme.of(context).textTheme.displayLarge?.copyWith(
                            fontWeight: _selectIndexType == 2 ? FontWeight.w600 : FontWeight.w400,
                            shadows: [
                              _selectIndexType == 2
                                  ? Shadow(
                                      color: BlindChickenColors.activeBorderTextField.withOpacity(
                                        0.2,
                                      ),
                                      offset: const Offset(0, 1),
                                      blurRadius: 1,
                                    )
                                  : const Shadow(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Divider(
              height: 1,
              color: BlindChickenColors.borderBottomColor,
            ),
            const SizedBox(
              height: 14,
            ),
            BlocBuilder<CatalogBloc, CatalogState>(builder: (context, state) {
              return state.maybeMap(
                preloadDataCompleted: (initState) {
                  return MediaQuery.removePadding(
                    context: context,
                    removeTop: true,
                    child: GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3, // number of items in each row
                          mainAxisSpacing: 1.0, // spacing between rows
                          crossAxisSpacing: 1.0, // spacing between columns
                          childAspectRatio: 0.65,
                        ),
                        itemCount: initState.category.length, // total number of items
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              context.read<CatalogBloc>().add(
                                    CatalogEvent.getInfoProducts(
                                      path: initState.category[index].pathMenu,
                                    ),
                                  );
                              context.navigateTo(
                                CatalogRoute(
                                  title: initState.category[index].title,
                                ),
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(right: 14),
                              child: MainCategoryProductItem(
                                image: initState.category[index].imagePath,
                                title: initState.category[index].title,
                              ),
                            ),
                          );
                        }),
                  );
                },
                orElse: () => const SizedBox(),
              );
            }),
            const SizedBox(
              height: 16,
            ),
            GestureDetector(
              onTap: () {
                context.navigateTo(const GiftCardRoute());
              },
              child: SizedBox(
                child: Image.asset(
                  'assets/images/giftcard.jpg',
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Center(
              child: Text(
                'Подарочная карта',
                style: Theme.of(context).textTheme.headline2?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            // GestureDetector(
            //   onTap: () {
            //     context.navigateTo(const SaleRoute());
            //   },
            //   child: SizedBox(
            //     child: Image.asset(
            //       'assets/images/sale.jpg',
            //     ),
            //   ),
            // ),
            // const SizedBox(
            //   height: 8,
            // ),
            // Center(
            //   child: Text(
            //     'Распродажа',
            //     style: Theme.of(context).textTheme.headline2?.copyWith(
            //           fontWeight: FontWeight.w700,
            //         ),
            //   ),
            // ),
            // const SizedBox(
            //   height: 28,
            // ),
            // Text(
            //   'Бренды',
            //   style: Theme.of(context).textTheme.headline2?.copyWith(
            //         fontWeight: FontWeight.w700,
            //       ),
            // ),
            // const SizedBox(
            //   height: 14,
            // ),
            // SizedBox(
            //   height: 37,
            //   child: Theme(
            //     data: Theme.of(context).copyWith(splashColor: Colors.transparent),
            //     child: TextField(
            //       onTap: () {},
            //       onChanged: (value) {
            //         setState(() {});
            //         context.read<CatalogBloc>().add(CatalogEvent.searchBrand(query: value));
            //       },
            //       controller: _search,
            //       cursorColor: BlindChickenColors.activeBorderTextField,
            //       textCapitalization: TextCapitalization.sentences,
            //       style: Theme.of(context).textTheme.displayMedium,
            //       decoration: InputDecoration(
            //         isDense: true,
            //         enabledBorder: OutlineInputBorder(
            //           borderSide: const BorderSide(
            //             color: BlindChickenColors.borderTextField,
            //           ),
            //           borderRadius: BorderRadius.circular(4),
            //         ),
            //         border: OutlineInputBorder(
            //           borderSide: const BorderSide(
            //             color: BlindChickenColors.borderTextField,
            //           ),
            //           borderRadius: BorderRadius.circular(4),
            //         ),
            //         focusedBorder: OutlineInputBorder(
            //           borderSide: const BorderSide(
            //             color: BlindChickenColors.activeBorderTextField,
            //           ),
            //           borderRadius: BorderRadius.circular(5),
            //         ),
            //         suffixIcon: _search.text.isNotEmpty
            //             ? InkWell(
            //                 onTap: () {
            //                   _search.clear();
            //                   context.read<CatalogBloc>().add(
            //                         const CatalogEvent.searchBrand(query: ''),
            //                       );
            //                 },
            //                 child: Transform.scale(
            //                   scale: 0.5,
            //                   child: SvgPicture.asset('assets/icons/x.svg'),
            //                 ),
            //               )
            //             : const SizedBox(),
            //         hintText: 'Поиск',
            //         hintStyle: Theme.of(context).textTheme.displayMedium?.copyWith(
            //               color: BlindChickenColors.textInput,
            //             ),
            //         prefixIconConstraints: const BoxConstraints(
            //           minWidth: 0,
            //           minHeight: 0,
            //         ),
            //         prefixIcon: Padding(
            //           padding: const EdgeInsets.only(
            //             left: 4,
            //             right: 4,
            //           ),
            //           child: Transform.scale(
            //             scale: 0.55,
            //             child: SvgPicture.asset(
            //               'assets/icons/search.svg',
            //               color: BlindChickenColors.textInput,
            //             ),
            //           ),
            //         ),
            //         contentPadding: EdgeInsets.zero,
            //       ),
            //     ),
            //   ),
            // ),
            // const SizedBox(
            //   height: 14,
            // ),
            // BlocBuilder<CatalogBloc, CatalogState>(builder: (context, state) {
            //   return state.maybeMap(
            //     preloadDataCompleted: (initState) {
            //       return MediaQuery.removePadding(
            //         context: context,
            //         removeTop: true,
            //         child: GridView.builder(
            //             shrinkWrap: true,
            //             itemCount: initState.brands.length,
            //             physics: const NeverScrollableScrollPhysics(),
            //             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //               crossAxisCount: 2, // number of items in each row
            //               mainAxisSpacing: 11.0, // spacing between rows
            //               crossAxisSpacing: 11.0, // spacing between columns
            //               childAspectRatio: 10.5,
            //             ),
            //             itemBuilder: (context, index) {
            //               return InkWell(
            //                 onTap: () {
            //                   context.read<CatalogBloc>().add(
            //                         CatalogEvent.pathBrandMenu(items: [
            //                           MenuItemDataModel(
            //                             idParent: 0,
            //                             id: 0,
            //                             url: '',
            //                             name: 'Бренды',
            //                             sub: 0,
            //                             title: 0,
            //                             brand: 0,
            //                           ),
            //                           MenuItemDataModel(
            //                             idParent: 0,
            //                             id: index,
            //                             url: '',
            //                             name: initState.brands[index],
            //                             sub: 0,
            //                             title: 0,
            //                             brand: 0,
            //                           ),
            //                         ]),
            //                       );
            //                   context.navigateTo(
            //                     CatalogRoute(
            //                       isBack: false,
            //                       onBack: () {
            //                         context.read<CatalogBloc>().add(
            //                               CatalogEvent.removePathMenu(
            //                                 items: [
            //                                   MenuItemDataModel(
            //                                     idParent: 0,
            //                                     id: 0,
            //                                     url: '',
            //                                     name: 'Бренды',
            //                                     sub: 0,
            //                                     title: 0,
            //                                     brand: 0,
            //                                   ),
            //                                   MenuItemDataModel(
            //                                     idParent: 0,
            //                                     id: index,
            //                                     url: '',
            //                                     name: initState.brands[index],
            //                                     sub: 0,
            //                                     title: 0,
            //                                     brand: 0,
            //                                   ),
            //                                 ],
            //                               ),
            //                             );
            //                       },
            //                       path: '',
            //                       title:
            //                           '${checkGender(_selectIndexType)} ${initState.brands[index]}',
            //                     ),
            //                   );
            //                 },
            //                 child: Text(
            //                   initState.brands[index],
            //                   style: Theme.of(context).textTheme.headline2,
            //                 ),
            //               );
            //             }),
            //       );
            //     },
            //     orElse: () => const SizedBox(),
            //   );
            // }),
            // const SizedBox(
            //   height: 96,
            // ),
          ],
        ),
      ),
    );
  }
}
