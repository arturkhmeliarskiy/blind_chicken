import 'dart:developer';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/home/widgets/item_catalog_menu.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';
import 'package:shared/shared.dart';
import 'package:ui_kit/ui_kit.dart';

@RoutePage()
class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  bool isLoading = false;
  List<Map<String, String>> selectItems = [];
  int _selectedIndexGender = 1;

  @override
  void initState() {
    final updateData = GetIt.I.get<UpdateDataService>();
    _selectedIndexGender = updateData.selectedIndexGender;
    super.initState();
  }

  String checkTypePeople(int value) {
    String result = '';
    switch (value) {
      case 0:
        result = 'Женщинам';
      case 1:
        result = 'Мужчинам';
      case 2:
        result = 'Детям';
    }
    return result;
  }

  String checkPathSymbol(String value1, String value2) {
    String result = '';
    if (value1[0] == '/') {
      result = value1;
    } else {
      result = '$value2$value1';
    }
    return result;
  }

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
                          context.read<CatalogBloc>().add(
                                const CatalogEvent.subCategory(
                                  a: 'get-main-menu',
                                  id: 1,
                                  b: 0,
                                  u: '',
                                  pid: 0,
                                  selectedGenderIndex: 1,
                                ),
                              );
                          setState(() {
                            _selectedIndexGender = 1;
                          });
                        },
                        child: Text(
                          'Женщинам',
                          style: Theme.of(context).textTheme.displayLarge?.copyWith(
                            fontWeight:
                                _selectedIndexGender == 1 ? FontWeight.w600 : FontWeight.w400,
                            shadows: [
                              _selectedIndexGender == 1
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
                          context.read<CatalogBloc>().add(
                                const CatalogEvent.subCategory(
                                  a: 'get-main-menu',
                                  id: 2,
                                  b: 0,
                                  u: '',
                                  pid: 0,
                                  selectedGenderIndex: 2,
                                ),
                              );

                          setState(() {
                            _selectedIndexGender = 2;
                          });
                        },
                        child: Text(
                          'Мужчинам',
                          style: Theme.of(context).textTheme.displayLarge?.copyWith(
                            fontWeight:
                                _selectedIndexGender == 2 ? FontWeight.w600 : FontWeight.w400,
                            shadows: [
                              _selectedIndexGender == 2
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
                          context.read<CatalogBloc>().add(
                                const CatalogEvent.subCategory(
                                  a: 'get-main-menu',
                                  id: 3,
                                  b: 0,
                                  u: '',
                                  pid: 0,
                                  selectedGenderIndex: 3,
                                ),
                              );

                          setState(() {
                            _selectedIndexGender = 3;
                          });
                        },
                        child: Text(
                          'Детям',
                          style: Theme.of(context).textTheme.displayLarge?.copyWith(
                            fontWeight:
                                _selectedIndexGender == 3 ? FontWeight.w600 : FontWeight.w400,
                            shadows: [
                              _selectedIndexGender == 3
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
                  GestureDetector(
                    onTap: () {
                      {
                        context.navigateTo(
                          const HomeAutoRouterRoute(
                            children: [
                              MainRoute(),
                            ],
                          ),
                        );
                      }
                    },
                    child: SvgPicture.asset(
                      'assets/icons/x.svg',
                      height: 21,
                      width: 21,
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
                                                idParent: initState.selectedGenderIndex + 1,
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
                                    GestureDetector(
                                      onTap: () {
                                        context.read<CatalogBloc>().add(
                                              CatalogEvent.getInfoProducts(
                                                  path: initState.pathMenu.last.url),
                                            );
                                        context.navigateTo(
                                          CatalogRoute(
                                            title: 'Все товары',
                                            url: initState.pathMenu.last.url,
                                          ),
                                        );
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
            // StreamBuilder<String>(
            //   stream: streamTimeFromNative(),
            //   builder: (context, snapshot) {
            //     if (snapshot.hasData) {
            //       return Text(
            //         '${snapshot.data}',
            //         style: Theme.of(context).textTheme.headline4,
            //       );
            //     } else {
            //       return const CircularProgressIndicator();
            //     }
            //   },
            // ),
            Expanded(child: BlocBuilder<CatalogBloc, CatalogState>(builder: (context, state) {
              return state.maybeMap(
                preloadDataCompleted: (initState) {
                  return GestureDetector(
                    onVerticalDragUpdate: (details) {},
                    onHorizontalDragEnd: (DragEndDetails details) {
                      if (details.velocity.pixelsPerSecond.dx > 0) {
                        if (initState.pathMenu.isNotEmpty) {
                          context.read<CatalogBloc>().add(
                                CatalogEvent.backPathMenu(
                                  idParent: initState.selectedGenderIndex,
                                ),
                              );
                        } else {
                          if (_selectedIndexGender != 1) {
                            context.read<CatalogBloc>().add(
                                  const CatalogEvent.subCategory(
                                    a: 'get-main-menu',
                                    id: 1,
                                    b: 0,
                                    u: '',
                                    pid: 0,
                                    selectedGenderIndex: 1,
                                  ),
                                );
                            setState(() {
                              _selectedIndexGender = 1;
                            });
                          } else {
                            context.popRoute();
                          }
                        }
                      }
                    },
                    child: PopScope(
                      canPop: false,
                      onPopInvoked: (value) {
                        if (initState.pathMenu.isNotEmpty) {
                          context.read<CatalogBloc>().add(
                                CatalogEvent.backPathMenu(
                                  idParent: initState.selectedGenderIndex,
                                ),
                              );
                        } else {
                          if (_selectedIndexGender != 1) {
                            context.read<CatalogBloc>().add(
                                  const CatalogEvent.subCategory(
                                    a: 'get-main-menu',
                                    id: 1,
                                    b: 0,
                                    u: '',
                                    pid: 0,
                                    selectedGenderIndex: 1,
                                  ),
                                );
                            setState(() {
                              _selectedIndexGender = 1;
                            });
                          } else {
                            context.popRoute();
                          }
                        }
                      },
                      child: ListView(
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
                                    context.read<CatalogBloc>().add(
                                          CatalogEvent.getInfoProducts(
                                              path: initState.menu[index].url),
                                        );
                                    context.navigateTo(
                                      CatalogRoute(
                                        title: initState.menu[index].name,
                                        url: initState.menu[index].url,
                                      ),
                                    );
                                  } else if (initState.menu[index].name == 'Подарочная карта') {
                                    context.navigateTo(GiftCardRoute());
                                  } else if (initState.menu[index].name == 'Бренды') {
                                    context.navigateTo(
                                      BrandsRoute(
                                        typePeople: checkTypePeople(initState.selectedGenderIndex),
                                      ),
                                    );
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
                      ),
                    ),
                  );
                },
                load: (value) => Center(
                  child: CircularProgressIndicator(
                    color: Colors.black,
                    backgroundColor: Colors.grey.shade400,
                  ),
                ),
                error: (value) {
                  return BlindChickenErrorInfo(
                    errorMessage: value.errorMessage,
                    onRepeatRequest: () {
                      context.read<CatalogBloc>().add(const CatalogEvent.preloadData());
                    },
                  );
                },
                orElse: () => const SizedBox(),
              );
            })),
          ],
        ),
      ),
    );
  }
}
