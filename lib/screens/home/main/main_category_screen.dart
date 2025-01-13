import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/home/main/widgets/main_category_item.dart';
import 'package:blind_chicken/screens/home/main/widgets/main_category_product_item.dart';
import 'package:blind_chicken/old_repos/blocs/blocs.dart';
import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:blind_chicken/old_repos/ui_kit/ui_kit.dart';

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
  final ScrollController _scrollController = ScrollController();
  final BlindChickenShowDialogError _blindChickenShowDialogError = BlindChickenShowDialogError();
  bool _isShowDialogError = false;
  int _selectIndexType = 1;
  bool _isButtonTop = false;
  double _historyPosition = 0.0;

  @override
  void initState() {
    _selectIndexType = widget.selectIndexType;
    context.read<CatalogBloc>().add(
          CatalogEvent.switchTypePeople(selectIndexType: _selectIndexType),
        );
    _scrollController.addListener(_loadMoreData);
    super.initState();
  }

  @override
  void didUpdateWidget(covariant MainCategoryScreen oldWidget) {
    if (oldWidget.selectIndexType != widget.selectIndexType) {
      _selectIndexType = widget.selectIndexType;
      context.read<CatalogBloc>().add(
            CatalogEvent.switchTypePeople(selectIndexType: _selectIndexType),
          );
    }
    _scrollController.jumpTo(_historyPosition);
    super.didUpdateWidget(oldWidget);
  }

  String checkPath(int indexType) {
    String result = '';
    switch (indexType) {
      case 1:
        result = '/sale/zhenshchinam/';
      case 2:
        result = '/sale/muzhchinam/';
      case 3:
        result = '/sale/detyam/';
    }
    return result;
  }

  void _loadMoreData() async {
    if (_historyPosition > _scrollController.position.pixels &&
        _scrollController.position.pixels > 0) {
      setState(() {
        _isButtonTop = true;
      });
    } else {
      setState(() {
        _isButtonTop = false;
      });
    }

    _historyPosition = _scrollController.position.pixels;
  }

  @override
  void dispose() {
    _search.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return BlocListener<BrandBloc, BrandState>(
      listener: (context, state) {
        state.maybeMap(
          preloadDataCompleted: (value) {
            if (_isShowDialogError) {
              _blindChickenShowDialogError.closeShowDialog();
              _isShowDialogError = false;
            }
          },
          error: (value) {
            if (!_isShowDialogError && value.titleScreen == 'подраздел') {
              _isShowDialogError = true;
              _blindChickenShowDialogError.openShowDualog(
                errorMessage: value.errorMessage,
                context: context,
                onRepeatRequest: () {
                  context.read<BrandBloc>().add(
                        BrandEvent.getBrands(
                          selectTypePeople: value.selectTypePeople,
                          titleScreen: 'подраздел',
                        ),
                      );
                },
                widget: BlocBuilder<BrandBloc, BrandState>(
                  builder: (context, state) {
                    return state.maybeMap(
                      load: (value) {
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
                      },
                      error: (value) {
                        return Text(
                          'Повторить',
                          style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                color: BlindChickenColors.backgroundColor,
                              ),
                          textAlign: TextAlign.center,
                        );
                      },
                      orElse: () => const SizedBox(),
                    );
                  },
                ),
              );
            }
          },
          orElse: () {},
        );
      },
      child: GestureDetector(
        onVerticalDragUpdate: (details) {},
        onHorizontalDragEnd: (DragEndDetails details) {
          if (details.velocity.pixelsPerSecond.dx > 0) {
            context.back();
          }
        },
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Scaffold(
              body: ListView(
                controller: _scrollController,
                children: [
                  const AppBarBlindChicken(),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(left: 10.6, right: 10.6),
                    height: 55,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  _selectIndexType = 1;
                                });
                                context.read<BrandBloc>().add(
                                      const BrandEvent.getBrands(
                                        selectTypePeople: 1,
                                        titleScreen: 'подраздел',
                                      ),
                                    );
                                context.read<CatalogBloc>().add(
                                      CatalogEvent.switchTypePeople(
                                          selectIndexType: _selectIndexType),
                                    );
                              },
                              child: Text(
                                'Женщинам',
                                style: Theme.of(context).textTheme.displayLarge?.copyWith(
                                  fontWeight:
                                      _selectIndexType == 1 ? FontWeight.w600 : FontWeight.w400,
                                  shadows: [
                                    _selectIndexType == 1
                                        ? Shadow(
                                            color: BlindChickenColors.activeBorderTextField
                                                .withOpacity(
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
                                context.read<BrandBloc>().add(
                                      const BrandEvent.getBrands(
                                        selectTypePeople: 2,
                                        titleScreen: 'подраздел',
                                      ),
                                    );
                                context.read<CatalogBloc>().add(
                                      CatalogEvent.switchTypePeople(
                                          selectIndexType: _selectIndexType),
                                    );
                              },
                              child: Text(
                                'Мужчинам',
                                style: Theme.of(context).textTheme.displayLarge?.copyWith(
                                  fontWeight:
                                      _selectIndexType == 2 ? FontWeight.w600 : FontWeight.w400,
                                  shadows: [
                                    _selectIndexType == 2
                                        ? Shadow(
                                            color: BlindChickenColors.activeBorderTextField
                                                .withOpacity(
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
                                  _selectIndexType = 3;
                                });
                                context.read<BrandBloc>().add(
                                      const BrandEvent.getBrands(
                                        selectTypePeople: 3,
                                        titleScreen: 'подраздел',
                                      ),
                                    );
                                context.read<CatalogBloc>().add(
                                      CatalogEvent.switchTypePeople(
                                          selectIndexType: _selectIndexType),
                                    );
                              },
                              child: Text(
                                'Детям',
                                style: Theme.of(context).textTheme.displayLarge?.copyWith(
                                  fontWeight:
                                      _selectIndexType == 3 ? FontWeight.w600 : FontWeight.w400,
                                  shadows: [
                                    _selectIndexType == 3
                                        ? Shadow(
                                            color: BlindChickenColors.activeBorderTextField
                                                .withOpacity(
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
                        return Wrap(
                          alignment: WrapAlignment.center,
                          spacing: 14,
                          runSpacing: 14,
                          children: List.generate(initState.category.length, (index) {
                            if (initState.category[index].title.isNotEmpty) {
                              return GestureDetector(
                                onTap: () {
                                  if (initState.category[index].title == 'Подарочная карта') {
                                    context.navigateTo(GiftCardRoute());
                                  } else if (initState.category[index].title == 'Проверка зрения') {
                                    context.navigateTo(VisionWarningRoute());
                                  } else if (initState.category[index].title ==
                                      'Специальные предложения') {
                                    context.read<CatalogBloc>().add(
                                          CatalogEvent.getInfoProducts(
                                            path: initState.menu[index].url,
                                            isCleanHistory: true,
                                          ),
                                        );
                                    context.navigateTo(
                                      CatalogRoute(
                                        title: initState.menu[index].name,
                                        url: initState.menu[index].url,
                                      ),
                                    );
                                  } else if (initState.category[index].title == 'Каталог брендов') {
                                    context.read<BrandBloc>().add(
                                          BrandEvent.getBrands(
                                            selectTypePeople: _selectIndexType,
                                            titleScreen: 'бренды',
                                          ),
                                        );
                                    context.navigateTo(
                                      BrandsRoute(),
                                    );
                                  } else {
                                    context.read<CatalogBloc>().add(
                                          CatalogEvent.getInfoProducts(
                                            path: initState.category[index].pathMenu,
                                            isCleanHistory: true,
                                          ),
                                        );
                                    context.navigateTo(
                                      CatalogRoute(
                                        title: initState.category[index].title,
                                        url: initState.category[index].pathMenu,
                                      ),
                                    );
                                  }
                                },
                                child: width > 1023 && index > 5
                                    ? MainCategoryItem(
                                        image: '${initState.category[index].imagePath}_f',
                                        title: initState.category[index].title,
                                        width: width / 3 - 20,
                                        padding: const EdgeInsets.only(
                                          top: 14,
                                          left: 7,
                                          right: 7,
                                        ),
                                      )
                                    : MainCategoryProductItem(
                                        image: initState.category[index].imagePath,
                                        title: initState.category[index].title,
                                      ),
                              );
                            } else {
                              return SizedBox(
                                width: width / 3 - 18,
                              );
                            }
                          }),
                        );
                      },
                      orElse: () => const SizedBox(),
                    );
                  }),
                  const SizedBox(
                    height: 35,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.6, right: 10.6),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            context.read<BrandBloc>().add(
                                  BrandEvent.getBrands(
                                    selectTypePeople: _selectIndexType,
                                    titleScreen: 'бренды',
                                  ),
                                );
                            context.navigateTo(
                              BrandsRoute(),
                            );
                          },
                          child: Text(
                            'Бренды',
                            style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                                  fontWeight: FontWeight.w700,
                                ),
                          ),
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        SizedBox(
                          height: 37,
                          child: Theme(
                            data: Theme.of(context).copyWith(splashColor: Colors.transparent),
                            child: TextField(
                              onTap: () {},
                              onChanged: (value) {
                                setState(() {});
                                context.read<BrandBloc>().add(BrandEvent.search(query: value));
                              },
                              controller: _search,
                              cursorColor: BlindChickenColors.activeBorderTextField,
                              textCapitalization: TextCapitalization.sentences,
                              style: Theme.of(context).textTheme.displayMedium,
                              decoration: InputDecoration(
                                isDense: true,
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
                                suffixIcon: _search.text.isNotEmpty
                                    ? InkWell(
                                        onTap: () {
                                          _search.clear();
                                          context.read<BrandBloc>().add(
                                                const BrandEvent.search(query: ''),
                                              );
                                        },
                                        child: Transform.scale(
                                          scale: 0.5,
                                          child: SvgPicture.asset('assets/icons/x.svg'),
                                        ),
                                      )
                                    : const SizedBox(),
                                hintText: 'Поиск',
                                hintStyle: Theme.of(context).textTheme.displayMedium?.copyWith(
                                      color: BlindChickenColors.textInput,
                                    ),
                                prefixIconConstraints: const BoxConstraints(
                                  minWidth: 0,
                                  minHeight: 0,
                                ),
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 4,
                                    right: 4,
                                  ),
                                  child: Transform.scale(
                                    scale: 0.55,
                                    child: SvgPicture.asset(
                                      'assets/icons/search.svg',
                                      color: BlindChickenColors.textInput,
                                    ),
                                  ),
                                ),
                                contentPadding: EdgeInsets.zero,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        BlocBuilder<BrandBloc, BrandState>(builder: (context, state) {
                          return state.maybeMap(
                            preloadDataCompleted: (initState) {
                              return MediaQuery.removePadding(
                                context: context,
                                removeTop: true,
                                child: DynamicHeightGridView(
                                    shrinkWrap: true,
                                    itemCount: initState.allBrands.length,
                                    crossAxisCount:
                                        width > 767 ? 3 : 2, // number of items in each row
                                    crossAxisSpacing: 13,
                                    mainAxisSpacing: 13,
                                    physics: const NeverScrollableScrollPhysics(),
                                    builder: (context, index) {
                                      return InkWell(
                                        onTap: () {
                                          FocusScope.of(context).unfocus();
                                          _search.clear();
                                          context.read<BrandBloc>().add(
                                                const BrandEvent.search(query: ''),
                                              );
                                          context.read<CatalogBloc>().add(
                                                CatalogEvent.getInfoProducts(
                                                  path: initState.allBrands[index].u,
                                                  isCleanHistory: true,
                                                ),
                                              );
                                          context.navigateTo(
                                            CatalogRoute(
                                              title: initState.allBrands[index].n,
                                              url: initState.allBrands[index].u,
                                            ),
                                          );
                                        },
                                        child: Text(
                                          initState.allBrands[index].n,
                                          style: Theme.of(context).textTheme.headlineLarge,
                                        ),
                                      );
                                    }),
                              );
                            },
                            orElse: () => const SizedBox(),
                          );
                        }),
                        const SizedBox(
                          height: 48,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            if (_isButtonTop)
              GestureDetector(
                onTap: () {
                  _scrollController.jumpTo(0.0);
                  setState(() {
                    _isButtonTop = false;
                  });
                },
                child: Container(
                  height: 45,
                  width: 45,
                  margin: const EdgeInsets.only(left: 15, bottom: 15),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: BlindChickenColors.activeBorderTextField,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: SvgPicture.asset(
                    'assets/icons/chevron-top.svg',
                  ),
                ),
              )
            else
              const SizedBox()
          ],
        ),
      ),
    );
  }
}
