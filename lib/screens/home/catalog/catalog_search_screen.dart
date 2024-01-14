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

  @override
  void dispose() {
    _search.dispose();
    super.dispose();
  }

  @override
  void initState() {
    context.read<SearchBloc>().add(const SearchEvent.init());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  child: TextField(
                    onTap: () {},
                    onChanged: (value) {
                      setState(() {});
                      context.read<SearchBloc>().add(
                            SearchEvent.searchProfucts(value),
                          );
                    },
                    autofocus: true,
                    controller: _search,
                    cursorColor: BlindChickenColors.activeBorderTextField,
                    textCapitalization: TextCapitalization.sentences,
                    style: Theme.of(context).textTheme.headline2,
                    decoration: InputDecoration(
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
              InkWell(
                onTap: () {
                  context.popRoute();
                  context.read<SearchBloc>().add(
                        SearchEvent.searchProfucts(_search.text),
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
                    style: Theme.of(context).textTheme.headline2?.copyWith(
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
                        initState.searchProducts.isNotEmpty || initState.searchSections.isNotEmpty
                            ? Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
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
                                          style: Theme.of(context).textTheme.headline2?.copyWith(
                                                fontWeight: FontWeight.w700,
                                              ),
                                        ),
                                        const SizedBox(
                                          width: 4,
                                        ),
                                        Text(
                                          initState.searchSections.length.toString(),
                                          style: Theme.of(context).textTheme.headline2,
                                        )
                                      ],
                                    ),
                                  ),
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
                                              return Container(
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
                                                  color:
                                                      BlindChickenColors.backgroundColorItemFilter,
                                                  borderRadius: BorderRadius.circular(16),
                                                ),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      initState.searchSections[index]['section'],
                                                      style: Theme.of(context).textTheme.headline2,
                                                    ),
                                                    Text(
                                                      initState.searchSections[index]['gender'],
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyText2
                                                          ?.copyWith(
                                                            fontFamily: 'Roboto-Light',
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
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
                                              style:
                                                  Theme.of(context).textTheme.headline2?.copyWith(
                                                        fontWeight: FontWeight.w700,
                                                      ),
                                            ),
                                            const SizedBox(
                                              width: 4,
                                            ),
                                            Text(
                                              initState.searchProducts.length.toString(),
                                              style: Theme.of(context).textTheme.headline2,
                                            )
                                          ],
                                        ),
                                        InkWell(
                                          onTap: () {
                                            context.navigateTo(const CatalogSearchResultRoute());
                                          },
                                          child: Text(
                                            'Показать все',
                                            style: Theme.of(context).textTheme.headline2?.copyWith(
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
                                                      initState.searchProducts.length - 1 == index,
                                                ),
                                              ],
                                            );
                                          }),
                                    ),
                                  ),
                                ],
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
    );
  }
}
