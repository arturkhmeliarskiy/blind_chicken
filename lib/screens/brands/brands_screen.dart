import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_kit/ui_kit.dart';

@RoutePage()
class BrandsScreen extends StatefulWidget {
  const BrandsScreen({super.key});

  @override
  State<BrandsScreen> createState() => _BrandsScreenState();
}

class _BrandsScreenState extends State<BrandsScreen> {
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _search = TextEditingController();
  bool _isButtonTop = false;
  bool _isSwipe = true;
  double _historyPosition = 0.0;

  @override
  void initState() {
    _scrollController.addListener(_loadMoreData);
    super.initState();
  }

  int checkTypePeople(String value) {
    int result = 0;
    switch (value) {
      case 'Все':
        result = 0;
      case 'Женщинам':
        result = 1;
      case 'Мужчинам':
        result = 2;
      case 'Детям':
        result = 3;
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
    return BlocListener<BrandBloc, BrandState>(
      listener: (context, state) {
        state.maybeMap(
          preloadDataCompleted: (initState) {
            if (initState.listBrandsPath.isEmpty) {
              context.back();
            }
          },
          orElse: () => const SizedBox(),
        );
      },
      child: GestureDetector(
        onHorizontalDragUpdate: (details) {},
        onHorizontalDragEnd: (DragEndDetails details) {
          if (details.velocity.pixelsPerSecond.dx > 0) {
            context.read<BrandBloc>().add(
                  const BrandEvent.goBackBrandInfo(),
                );
            setState(() {
              _isSwipe = false;
            });
            log((details.velocity.pixelsPerSecond.dx).toString());
          }
        },
        child: PopScope(
          canPop: false,
          onPopInvoked: (value) {
            if (_isSwipe && !value) {
              context.read<BrandBloc>().add(
                    const BrandEvent.goBackBrandInfo(),
                  );
            }
          },
          child: SafeArea(
            child: Scaffold(
              body: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Scaffold(
                    body: SingleChildScrollView(
                      controller: _scrollController,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const AppBarBlindChicken(),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 10.5,
                              right: 10.5,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 16.1,
                                ),
                                BlocBuilder<BrandBloc, BrandState>(builder: (context, state) {
                                  return state.maybeMap(
                                    preloadDataCompleted: (initState) {
                                      return Row(
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              context.navigateTo(
                                                const MainRoute(),
                                              );
                                            },
                                            child: Text(
                                              'Главная',
                                              style: Theme.of(context).textTheme.displaySmall,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 11.2,
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              context.read<BrandBloc>().add(
                                                    const BrandEvent.switchGenderBrands(
                                                      selectTypePeople: 0,
                                                    ),
                                                  );
                                            },
                                            child: Text(
                                              'Бренды',
                                              style: Theme.of(context).textTheme.displaySmall,
                                            ),
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
                                                            BrandEvent.switchGenderBrands(
                                                              selectTypePeople: checkTypePeople(
                                                                initState.listTypePeople[index],
                                                              ),
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
                                                        color: BlindChickenColors
                                                            .backgroundColorItemFilter,
                                                        borderRadius: BorderRadius.circular(
                                                          4,
                                                        ),
                                                      ),
                                                      child: Text(initState.listTypePeople[index],
                                                          style: Theme.of(context)
                                                              .textTheme
                                                              .displayMedium),
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
                                    data:
                                        Theme.of(context).copyWith(splashColor: Colors.transparent),
                                    child: TextField(
                                      onTap: () {},
                                      onChanged: (value) {
                                        setState(() {});
                                        context
                                            .read<BrandBloc>()
                                            .add(BrandEvent.search(query: value));
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
                                        hintStyle:
                                            Theme.of(context).textTheme.displayMedium?.copyWith(
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
                                              initState.listBrands.length,
                                              (index) {
                                                if (initState.listBrands.isNotEmpty) {
                                                  return TextSpan(
                                                    text: '${initState.listBrands[index].title}   ',
                                                    style: Theme.of(context).textTheme.headline2,
                                                    recognizer: TapGestureRecognizer()
                                                      ..onTap = () {
                                                        _scrollController.animateTo(
                                                          (initState.listCountBrand[index]
                                                                      .countAlphabet *
                                                                  50) +
                                                              ((initState.listCountBrand[index]
                                                                      .countBrands *
                                                                  40)),
                                                          duration: const Duration(microseconds: 1),
                                                          curve: Curves.linearToEaseOut,
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
                                  height: 18,
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
                                          itemCount: initState.listBrands.length,
                                          itemBuilder: (context, index) {
                                            if (initState.listBrands.isNotEmpty) {
                                              return Padding(
                                                padding: const EdgeInsets.only(bottom: 10),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets.only(
                                                        top: 21,
                                                        bottom: 18.5,
                                                      ),
                                                      child: Text(
                                                        initState.listBrands[index].title,
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .displayLarge
                                                            ?.copyWith(
                                                              fontWeight: FontWeight.w700,
                                                            ),
                                                      ),
                                                    ),
                                                    GridView.builder(
                                                      shrinkWrap: true,
                                                      itemCount:
                                                          initState.listBrands[index].value.length,
                                                      physics: const NeverScrollableScrollPhysics(),
                                                      gridDelegate:
                                                          const SliverGridDelegateWithFixedCrossAxisCount(
                                                        crossAxisCount:
                                                            2, // number of items in each row
                                                        mainAxisSpacing:
                                                            11.0, // spacing between rows
                                                        crossAxisSpacing:
                                                            11.0, // spacing between columns
                                                        childAspectRatio: 6.5,
                                                      ),
                                                      itemBuilder: (context, indexBrand) {
                                                        return InkWell(
                                                          onTap: () {
                                                            FocusScope.of(context).unfocus();
                                                            _search.clear();
                                                            context.read<BrandBloc>().add(
                                                                  const BrandEvent.search(
                                                                      query: ''),
                                                                );
                                                            context.read<CatalogBloc>().add(
                                                                  CatalogEvent.getInfoProducts(
                                                                    path: initState
                                                                        .listBrands[index]
                                                                        .value[indexBrand]
                                                                        .u,
                                                                    isCleanHistory: true,
                                                                  ),
                                                                );
                                                            context.navigateTo(
                                                              CatalogRoute(
                                                                title: initState.listBrands[index]
                                                                    .value[indexBrand].n,
                                                                url: initState.listBrands[index]
                                                                    .value[indexBrand].u,
                                                              ),
                                                            );
                                                          },
                                                          child: Text(
                                                            initState.listBrands[index]
                                                                .value[indexBrand].n,
                                                            style: Theme.of(context)
                                                                .textTheme
                                                                .headline2,
                                                          ),
                                                        );
                                                      },
                                                    )
                                                  ],
                                                ),
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
                                  height: 48,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
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
          ),
        ),
      ),
    );
  }
}
