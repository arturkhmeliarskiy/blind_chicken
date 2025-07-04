import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/home/catalog/widget/catalog_search_item.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_kit/ui_kit.dart';

@RoutePage()
class CatalogSearchScreen extends StatefulWidget {
  const CatalogSearchScreen({super.key});

  @override
  State<CatalogSearchScreen> createState() => _CatalogSearchScreenState();
}

class _CatalogSearchScreenState extends State<CatalogSearchScreen> {
  final TextEditingController _search = TextEditingController();
  final BlindChickenShowDialogError _blindChickenCatalogSearchProductShowDialogError =
      BlindChickenShowDialogError();
  bool _isShowDialogCatalogSearchProductError = false;

  @override
  void dispose() {
    _search.dispose();
    super.dispose();
  }

  @override
  void initState() {
    context.read<SearchBloc>().add(const SearchEvent.searchProfucts(''));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SearchBloc, SearchState>(
      listener: (context, state) {
        state.maybeMap(
          searchProductsResult: (initState) {
            final typeError = initState.typeError ?? '';
            if (initState.isError ?? false) {
              if (!_isShowDialogCatalogSearchProductError && typeError == 'поиск товаров') {
                _isShowDialogCatalogSearchProductError = true;
                _blindChickenCatalogSearchProductShowDialogError.openShowDualog(
                  context: context,
                  errorMessage: initState.errorMessage ?? '',
                  widget: BlocBuilder<SearchBloc, SearchState>(
                    builder: (context, state) {
                      return state.maybeMap(
                        searchProductsResult: (value) {
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
                    switch (typeError) {
                      case 'поиск товаров':
                        setState(() {});
                        context.read<SearchBloc>().add(
                              SearchEvent.searchProfucts(initState.query),
                            );
                        break;
                    }
                  },
                );
              }
            } else {
              if (_isShowDialogCatalogSearchProductError && !(initState.isError ?? false)) {
                _isShowDialogCatalogSearchProductError = false;
                _blindChickenCatalogSearchProductShowDialogError.closeShowDialog();
              }
            }
          },
          orElse: () {},
        );
      },
      child: GestureDetector(
        onHorizontalDragUpdate: (details) {},
        onHorizontalDragEnd: (DragEndDetails details) {
          if (details.velocity.pixelsPerSecond.dx > 0) {
            context.back();
          }
        },
        child: Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                Row(children: [
                  Expanded(
                    child: Container(
                      height: 37,
                      margin: const EdgeInsets.only(
                        left: 11.2,
                        top: 11.2,
                      ),
                      child: Theme(
                        data: Theme.of(context).copyWith(splashColor: Colors.transparent),
                        child: TextField(
                          onTap: () {},
                          onChanged: (value) {
                            setState(() {});
                            context.read<SearchBloc>().add(
                                  SearchEvent.searchProfucts(value),
                                );
                          },
                          onSubmitted: (value) {
                            context.read<SearchBloc>().add(
                                  SearchEvent.searchProfuctsInfo(
                                    _search.text,
                                  ),
                                );
                            context.navigateTo(
                              const DashboardRoute(
                                children: [
                                  HomeAutoRouterRoute(
                                    children: [
                                      CatalogSearchResultRoute(),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
                          autofocus: true,
                          controller: _search,
                          cursorColor: BlindChickenColors.activeBorderTextField,
                          textCapitalization: TextCapitalization.sentences,
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
                            suffixIcon: _search.text.isNotEmpty
                                ? InkWell(
                                    onTap: () {
                                      _search.clear();
                                      context.read<SearchBloc>().add(
                                            SearchEvent.searchProfucts(_search.text),
                                          );
                                    },
                                    child: Transform.scale(
                                      scale: 0.5,
                                      child: SvgPicture.asset('assets/icons/x.svg'),
                                    ),
                                  )
                                : const SizedBox(),
                            prefixIcon: Transform.scale(
                              scale: 0.4,
                              child: SvgPicture.asset(
                                'assets/icons/search.svg',
                                color: BlindChickenColors.textInput,
                              ),
                            ),
                            contentPadding: EdgeInsets.zero,
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      context.back();
                      context.read<SearchBloc>().add(
                            const SearchEvent.searchProfucts(''),
                          );
                    },
                    child: Container(
                      padding: const EdgeInsets.only(
                        left: 14,
                        right: 21,
                        top: 10,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        'Отмена',
                        style: Theme.of(context).textTheme.displayMedium?.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                    ),
                  ),
                ]),
                BlocBuilder<SearchBloc, SearchState>(builder: (context, state) {
                  return state.maybeMap(
                    searchProductsResult: (initState) {
                      return Expanded(
                        child: Stack(
                          children: [
                            initState.searchProducts.isNotEmpty ||
                                    initState.searchSections.isNotEmpty
                                ? Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      if (initState.searchSections.isNotEmpty)
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 10.5,
                                            left: 11.2,
                                            bottom: 10.5,
                                          ),
                                          child: Row(
                                            children: [
                                              Text(
                                                'Разделы ',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .displayMedium
                                                    ?.copyWith(
                                                      fontWeight: FontWeight.w700,
                                                    ),
                                              ),
                                              const SizedBox(
                                                width: 4,
                                              ),
                                              Text(
                                                initState.searchSections.length.toString(),
                                                style: Theme.of(context).textTheme.displayMedium,
                                              )
                                            ],
                                          ),
                                        ),
                                      if (initState.searchSections.isNotEmpty)
                                        Container(
                                          height: 204,
                                          margin: const EdgeInsets.only(
                                            left: 11.2,
                                            right: 11.2,
                                          ),
                                          child: ListView(
                                            children: [
                                              Wrap(
                                                children: List.generate(
                                                  initState.searchSections.length,
                                                  (index) {
                                                    return GestureDetector(
                                                      onTap: () {
                                                        if (initState.searchSections[index].u ==
                                                            '/proverka-zreniya/') {
                                                          context.navigateTo(VisionWarningRoute());
                                                        } else if (initState
                                                                .searchSections[index].u ==
                                                            '/servisnaya-karta/') {
                                                          context.read<CatalogBloc>().add(
                                                                const CatalogEvent
                                                                    .getInfoServiceCard(
                                                                  code: '15846',
                                                                ),
                                                              );
                                                          context.navigateTo(ServiceCardRoute());
                                                        } else if (initState
                                                                .searchSections[index].u ==
                                                            '/giftcard/') {
                                                          context.navigateTo(GiftCardRoute(
                                                            searchQuery: initState.query,
                                                          ));
                                                        } else {
                                                          context.read<CatalogBloc>().add(
                                                                CatalogEvent.getInfoProducts(
                                                                  path: initState
                                                                      .searchSections[index].u,
                                                                  isCleanHistory: true,
                                                                ),
                                                              );
                                                          context.navigateTo(
                                                            CatalogRoute(
                                                              title: '',
                                                              url:
                                                                  initState.searchSections[index].u,
                                                            ),
                                                          );
                                                        }
                                                      },
                                                      child: Container(
                                                        margin: const EdgeInsets.only(
                                                          bottom: 10,
                                                          right: 10,
                                                        ),
                                                        padding: const EdgeInsets.only(
                                                          top: 7,
                                                          bottom: 7,
                                                          left: 14,
                                                          right: 14,
                                                        ),
                                                        decoration: BoxDecoration(
                                                          color: BlindChickenColors
                                                              .backgroundColorItemFilter,
                                                          borderRadius: BorderRadius.circular(16),
                                                        ),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment.start,
                                                          children: [
                                                            Text(
                                                              initState.searchSections[index].n,
                                                              style: Theme.of(context)
                                                                  .textTheme
                                                                  .displayMedium,
                                                            ),
                                                            if (initState
                                                                .searchSections[index].g.isNotEmpty)
                                                              Text(
                                                                initState.searchSections[index].g,
                                                                style: Theme.of(context)
                                                                    .textTheme
                                                                    .bodyMedium
                                                                    ?.copyWith(
                                                                      fontFamily: 'Roboto-Light',
                                                                    ),
                                                              ),
                                                          ],
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      if (initState.searchProducts.isNotEmpty)
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 21,
                                            left: 11.2,
                                            right: 11.2,
                                            bottom: 10.5,
                                          ),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Text(
                                                    'Товары ',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .displayMedium
                                                        ?.copyWith(
                                                          fontWeight: FontWeight.w700,
                                                        ),
                                                  ),
                                                  const SizedBox(
                                                    width: 4,
                                                  ),
                                                  Text(
                                                    initState.productsCount.toString(),
                                                    style:
                                                        Theme.of(context).textTheme.displayMedium,
                                                  )
                                                ],
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  context.read<SearchBloc>().add(
                                                        SearchEvent.searchProfuctsInfo(
                                                          _search.text,
                                                        ),
                                                      );
                                                  context
                                                      .navigateTo(const CatalogSearchResultRoute());
                                                },
                                                child: Text(
                                                  'Показать все',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .displayMedium
                                                      ?.copyWith(
                                                        decoration: TextDecoration.underline,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      Expanded(
                                        child: Container(
                                          margin: const EdgeInsets.only(
                                            left: 11.2,
                                            right: 11.2,
                                          ),
                                          child: ListView.builder(
                                              itemCount: initState.searchProducts.length,
                                              itemBuilder: (context, index) {
                                                return Column(
                                                  children: [
                                                    CatalogSearchItem(
                                                      product: initState.searchProducts[index],
                                                      isButton:
                                                          initState.searchProducts.length - 1 ==
                                                              index,
                                                      onTap: () {
                                                        context.read<SearchBloc>().add(
                                                              SearchEvent.getInfoProduct(
                                                                code: initState
                                                                    .searchProducts[index].id
                                                                    .toString(),
                                                                titleScreen:
                                                                    'Карточка товара в резльтате поиска',
                                                                typeAddProductToShoppingCart:
                                                                    'Элемент списка',
                                                                identifierAddProductToShoppingCart:
                                                                    '3',
                                                                typeError:
                                                                    'карточка товара в поиске',
                                                              ),
                                                            );
                                                        context.navigateTo(
                                                          CatalogSearchCardInfoRoute(
                                                            isChildRoute: false,
                                                            item: initState.searchProducts[index],
                                                            isLike: initState.favouritesProductsId
                                                                .contains(initState
                                                                    .searchProducts[index].id),
                                                            listItems: initState.searchProducts,
                                                            favouritesProducts:
                                                                initState.favouritesProducts ?? [],
                                                          ),
                                                        );
                                                      },
                                                      onMoreInfo: () {
                                                        context.read<SearchBloc>().add(
                                                              SearchEvent.searchProfuctsInfo(
                                                                _search.text,
                                                              ),
                                                            );
                                                        context.navigateTo(
                                                            const CatalogSearchResultRoute());
                                                      },
                                                    ),
                                                  ],
                                                );
                                              }),
                                        ),
                                      ),
                                    ],
                                  )
                                : _search.text.isNotEmpty && !initState.isLoading
                                    ? Padding(
                                        padding: const EdgeInsets.only(
                                          top: 10.5,
                                          left: 11.2,
                                        ),
                                        child: Text(
                                          'К сожалению, ничего не найдено. Пожалуйста, воспользуйтесь меню каталога или измените поисковый запрос',
                                          style: Theme.of(context).textTheme.displayMedium,
                                        ),
                                      )
                                    : const SizedBox(),
                            if (initState.isLoading)
                              const Center(
                                child: CircularProgressIndicator(
                                  color: BlindChickenColors.activeBorderTextField,
                                  backgroundColor: BlindChickenColors.borderTextField,
                                ),
                              )
                            else
                              const SizedBox()
                          ],
                        ),
                      );
                    },
                    orElse: () => const SizedBox(),
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
