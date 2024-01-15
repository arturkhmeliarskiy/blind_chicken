import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/home/widgets/item_catalog_menu.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_kit/ui_kit.dart';

@RoutePage()
class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  bool isLoading = false;
  int _selectIndexType = 0;
  List<Map<String, String>> selectItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            InkWell(
              onTap: () {
                context.navigateTo(const CatalogSearchRoute());
              },
              child: Container(
                height: 37,
                margin: const EdgeInsets.only(
                  left: 11.2,
                  right: 11.2,
                  top: 11.2,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: BlindChickenColors.borderTextFieldSearch,
                  ),
                  borderRadius: BorderRadius.circular(
                    4,
                  ),
                ),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 14,
                    ),
                    SvgPicture.asset(
                      'assets/icons/search.svg',
                      height: 14,
                      width: 14,
                      color: BlindChickenColors.textInput,
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    Text(
                      'Поиск',
                      style: Theme.of(context).textTheme.displayMedium?.copyWith(
                            color: BlindChickenColors.textInput,
                          ),
                    ),
                  ],
                ),
              ),
            ),
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
                                const CatalogEvent.subCategory(
                                  a: 'get-main-menu',
                                  id: 1,
                                  b: 0,
                                  u: '',
                                  pid: 0,
                                ),
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
                                const CatalogEvent.subCategory(
                                  a: 'get-main-menu',
                                  id: 2,
                                  b: 0,
                                  u: '',
                                  pid: 0,
                                ),
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
                                const CatalogEvent.subCategory(
                                  a: 'get-main-menu',
                                  id: 3,
                                  b: 0,
                                  u: '',
                                  pid: 0,
                                ),
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
                  InkWell(
                    onTap: () {
                      context.navigateTo(const CatalogRoute());
                    },
                    child: SvgPicture.asset(
                      'assets/icons/x.svg',
                      height: 21,
                      width: 21,
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 12.6,
                right: 12.6,
              ),
              child: Divider(
                height: 1,
                color: BlindChickenColors.borderBottomColor,
              ),
            ),
            BlocBuilder<CatalogBloc, CatalogState>(builder: (context, state) {
              return state.maybeMap(
                  preloadDataCompleted: (initState) {
                    return initState.pathMenu.isNotEmpty
                        ? Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(
                                  left: 8.6,
                                  right: 12.6,
                                ),
                                height: 50,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        context.read<CatalogBloc>().add(
                                              CatalogEvent.backPathMenu(
                                                idParent: _selectIndexType + 1,
                                              ),
                                            );
                                      },
                                      child: Row(
                                        children: [
                                          SvgPicture.asset(
                                            'assets/icons/chevron-left.svg',
                                            height: 21,
                                            width: 21,
                                          ),
                                          const SizedBox(
                                            width: 3,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(bottom: 2),
                                            child: Text(
                                              initState.pathMenu.last.name,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .displayMedium
                                                  ?.copyWith(
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        context.navigateTo(const CatalogRoute());
                                      },
                                      child: Text(
                                        'Все товары',
                                        style: Theme.of(context).textTheme.displayMedium,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(
                                  left: 12.6,
                                  right: 12.6,
                                ),
                                child: Divider(
                                  height: 1,
                                  color: BlindChickenColors.borderBottomColor,
                                ),
                              ),
                            ],
                          )
                        : const SizedBox();
                  },
                  orElse: () => const SizedBox());
            }),
            Expanded(child: BlocBuilder<CatalogBloc, CatalogState>(builder: (context, state) {
              return state.maybeMap(
                preloadDataCompleted: (initState) {
                  return ListView(
                    children: [
                      Column(
                        children: List.generate(
                          initState.menu.length,
                          (index) => ItemCatalogMenu(
                            item: initState.menu[index],
                            onTap: () {
                              if (initState.menu[index].brand == 0 &&
                                  initState.menu[index].sub == 0 &&
                                  initState.menu[index].name != 'Подарочная карта') {
                                context.navigateTo(const CatalogRoute());
                              } else if (initState.menu[index].name == 'Подарочная карта') {
                                context.navigateTo(const GiftCardRoute());
                              } else if (initState.menu[index].name == 'Sale') {
                                context.navigateTo(const SaleRoute());
                              } else {
                                context.read<CatalogBloc>().add(
                                      CatalogEvent.subCategory(
                                        a: 'get-child-menu',
                                        id: initState.menu[index].id,
                                        b: initState.menu[index].brand,
                                        u: initState.menu[index].url,
                                        pid: initState.menu[index].idParent,
                                        item: initState.menu[index],
                                      ),
                                    );
                              }
                            },
                            selectValue: const [],
                            onRemove: (value) {},
                          ),
                        ),
                      ),
                    ],
                  );
                },
                load: (value) => Center(
                  child: CircularProgressIndicator(
                    color: Colors.black,
                    backgroundColor: Colors.grey.shade400,
                  ),
                ),
                orElse: () => const SizedBox(),
              );
            })),
          ],
        ),
      ),
    );
  }
}
