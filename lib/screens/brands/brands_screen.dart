import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:models/models.dart';
import 'package:ui_kit/ui_kit.dart';

@RoutePage()
class BrandsScreen extends StatefulWidget {
  const BrandsScreen({
    super.key,
    required this.typePeople,
  });

  final String typePeople;

  @override
  State<BrandsScreen> createState() => _BrandsScreenState();
}

class _BrandsScreenState extends State<BrandsScreen> {
  final ScrollController _scrollController = ScrollController();
  Map<String, List<String>> listKeyBrands = {};
  final TextEditingController _search = TextEditingController();

  @override
  void initState() {
    context.read<BrandBloc>().add(const BrandEvent.preloadData());
    context.read<BrandBloc>().add(
          BrandEvent.switchTypePeople(selectTypePeople: widget.typePeople),
        );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: _scrollController,
        padding: const EdgeInsets.only(
          left: 10.5,
          right: 10.5,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppBarBlindChicken(),
            const SizedBox(
              height: 16.1,
            ),
            BlocBuilder<BrandBloc, BrandState>(builder: (context, state) {
              return state.maybeMap(
                preloadDataCompleted: (initState) {
                  return Row(
                    children: [
                      Text(
                        'Главная',
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                      const SizedBox(
                        width: 11.2,
                      ),
                      Text(
                        'Бренды',
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 11.2,
                          ),
                          Text(
                            initState.selectedTypePeople,
                            style: Theme.of(context).textTheme.displaySmall,
                          ),
                        ],
                      )
                    ],
                  );
                },
                orElse: () => const SizedBox(),
              );
            }),
            const SizedBox(
              height: 11.9,
            ),
            BlocBuilder<BrandBloc, BrandState>(builder: (context, state) {
              return state.maybeMap(
                preloadDataCompleted: (initState) {
                  return Row(
                    children: [
                      Text(
                        'Бренды',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      const SizedBox(
                        width: 5.2,
                      ),
                      Text(
                        initState.selectedTypePeople.toLowerCase(),
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ],
                  );
                },
                orElse: () => const SizedBox(),
              );
            }),
            const SizedBox(
              height: 17.5,
            ),
            SizedBox(
                height: 35,
                width: MediaQuery.of(context).size.width,
                child: BlocBuilder<BrandBloc, BrandState>(
                  builder: (cntext, state) {
                    return state.maybeMap(
                      preloadDataCompleted: (initState) {
                        return ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: initState.listTypePeople.length,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  context.read<BrandBloc>().add(
                                        BrandEvent.switchTypePeople(
                                          selectTypePeople: initState.listTypePeople[index],
                                        ),
                                      );
                                  _search.clear();
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 14,
                                    vertical: 7,
                                  ),
                                  margin: const EdgeInsets.only(
                                    right: 10.5,
                                  ),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: BlindChickenColors.backgroundColorItemFilter,
                                    borderRadius: BorderRadius.circular(
                                      4,
                                    ),
                                  ),
                                  child: Text(initState.listTypePeople[index],
                                      style: Theme.of(context).textTheme.displayMedium),
                                ),
                              );
                            });
                      },
                      orElse: () => const SizedBox(),
                    );
                  },
                )),
            const SizedBox(
              height: 17.5,
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
              height: 14,
            ),
            BlocBuilder<BrandBloc, BrandState>(
              builder: (cntext, state) {
                return state.maybeMap(
                  preloadDataCompleted: (initState) {
                    return RichText(
                      text: TextSpan(
                        children: List.generate(
                          initState.listAlphabetAndNumber.length,
                          (index) {
                            if (initState.listBrands.isNotEmpty) {
                              return TextSpan(
                                text: '${initState.listAlphabetAndNumber[index]}   ',
                                style: Theme.of(context).textTheme.headline2,
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    _scrollController.animateTo(
                                      300 +
                                          (initState.listCountBrand[index].countAlphabet * 90) +
                                          ((initState.listCountBrand[index].countBrands * 16) /
                                              (initState.listCountBrand[index].countBrands > 2
                                                  ? 2
                                                  : 1)),
                                      duration: const Duration(seconds: 2),
                                      curve: Curves.ease,
                                    );
                                  },
                              );
                            } else {
                              return const TextSpan();
                            }
                          },
                        ),
                      ),
                    );
                  },
                  orElse: () => const SizedBox(),
                );
              },
            ),
            const SizedBox(
              height: 14,
            ),
            BlocBuilder<BrandBloc, BrandState>(builder: (cntext, state) {
              return state.maybeMap(
                preloadDataCompleted: (initState) {
                  return MediaQuery.removePadding(
                    context: context,
                    removeTop: true,
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: initState.listAlphabetAndNumber.length,
                      itemBuilder: (context, index) {
                        final listBrand =
                            initState.listBrands[initState.listAlphabetAndNumber[index]] ?? [];
                        if (listBrand.isNotEmpty) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 21,
                                  bottom: 10.5,
                                ),
                                child: Text(
                                  initState.listAlphabetAndNumber[index],
                                  style: Theme.of(context).textTheme.displayLarge?.copyWith(
                                        fontWeight: FontWeight.w700,
                                      ),
                                ),
                              ),
                              GridView.builder(
                                shrinkWrap: true,
                                itemCount: listBrand.length,
                                physics: const NeverScrollableScrollPhysics(),
                                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2, // number of items in each row
                                  mainAxisSpacing: 11.0, // spacing between rows
                                  crossAxisSpacing: 11.0, // spacing between columns
                                  childAspectRatio: 10.5,
                                ),
                                itemBuilder: (context, indexBrand) {
                                  return InkWell(
                                    onTap: () {
                                      context.read<CatalogBloc>().add(
                                            CatalogEvent.pathBrandMenu(items: [
                                              MenuItemDataModel(
                                                idParent: 0,
                                                id: 0,
                                                url: '',
                                                name: 'Бренды',
                                                sub: 0,
                                                title: 0,
                                                brand: 0,
                                              ),
                                              MenuItemDataModel(
                                                idParent: 0,
                                                id: index,
                                                url: '',
                                                name: listBrand[indexBrand],
                                                sub: 0,
                                                title: 0,
                                                brand: 0,
                                              ),
                                              MenuItemDataModel(
                                                idParent: 0,
                                                id: 1,
                                                url: '',
                                                name: initState.selectedTypePeople,
                                                sub: 0,
                                                title: 0,
                                                brand: 0,
                                              ),
                                            ]),
                                          );
                                      context.navigateTo(
                                        CatalogRoute(
                                          isBack: false,
                                          onBack: () {
                                            context.read<CatalogBloc>().add(
                                                  CatalogEvent.removePathMenu(
                                                    items: [
                                                      MenuItemDataModel(
                                                        idParent: 0,
                                                        id: 0,
                                                        url: '',
                                                        name: 'Бренды',
                                                        sub: 0,
                                                        title: 0,
                                                        brand: 0,
                                                      ),
                                                      MenuItemDataModel(
                                                        idParent: 0,
                                                        id: index,
                                                        url: '',
                                                        name: listBrand[indexBrand],
                                                        sub: 0,
                                                        title: 0,
                                                        brand: 0,
                                                      ),
                                                      MenuItemDataModel(
                                                        idParent: 0,
                                                        id: 1,
                                                        url: '',
                                                        name: initState.selectedTypePeople,
                                                        sub: 0,
                                                        title: 0,
                                                        brand: 0,
                                                      ),
                                                    ],
                                                  ),
                                                );
                                          },
                                          title:
                                              '${initState.selectedTypePeople} ${listBrand[indexBrand]}',
                                        ),
                                      );
                                    },
                                    child: Text(
                                      listBrand[indexBrand],
                                      style: Theme.of(context).textTheme.headline2,
                                    ),
                                  );
                                },
                              )
                            ],
                          );
                        } else {
                          return const SizedBox();
                        }
                      },
                    ),
                  );
                },
                orElse: () => const SizedBox(),
              );
            }),
            const SizedBox(
              height: 96,
            ),
          ],
        ),
      ),
    );
  }
}
