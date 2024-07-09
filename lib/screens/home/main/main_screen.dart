import 'dart:async';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/home/main/widgets/main_category_item.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';
import 'package:shared/shared.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _search = TextEditingController();
  bool _isOpenNotification = true;
  bool _isOpenUpdateVersionApp = true;
  bool _isButtonTop = false;
  double _historyPosition = 0.0;
  Timer? timer;

  @override
  void initState() {
    context.read<CatalogBloc>().add(const CatalogEvent.init());
    context.read<ShoppingCartBloc>().add(const ShoppingCartEvent.init());
    context.read<BrandBloc>().add(const BrandEvent.getBrands(selectTypePeople: 0));
    context.read<TopBannerBloc>().add(const TopBannerEvent.preloadData());
    timer = Timer.periodic(
      const Duration(hours: 1),
      (timer) {
        context.read<TopBannerBloc>().add(const TopBannerEvent.preloadData());
      },
    );
    _scrollController.addListener(_loadMoreData);
    super.initState();
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
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BlocListener<CatalogBloc, CatalogState>(
          listener: (context, state) {
            state.maybeMap(
              preloadDataCompleted: (initState) {
                final updateData = GetIt.I.get<UpdateDataService>();
                final notificationMessage = initState.notificationMessage;
                if (!updateData.isInitApp && notificationMessage != null && _isOpenNotification) {
                  if (notificationMessage.idMessage != updateData.idMessageNotification) {
                    if (notificationMessage.type == 'catalog') {
                      context.navigateTo(CatalogRoute(
                        title: '',
                        url: notificationMessage.section,
                        sort: notificationMessage.sort,
                        filterSelect: notificationMessage.filterSelect,
                        isNotification: true,
                      ));
                    }
                    if (notificationMessage.type == 'boutique') {
                      context.navigateTo(
                        BoutiquesDescriptionRoute(
                          uidStore: notificationMessage.uid,
                          isNotification: true,
                        ),
                      );
                    }
                    if (notificationMessage.type == 'gift_card') {
                      context.navigateTo(
                        GiftCardRoute(
                          isNotification: true,
                        ),
                      );
                    }
                  }

                  updateData.idMessageNotification = notificationMessage.idMessage;
                  setState(() {
                    _isOpenNotification = false;
                  });
                }
                if (initState.isUpdateVersionApp &&
                    !initState.isNotification &&
                    _isOpenUpdateVersionApp) {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return BlindChickenUpdateAppInfo(
                        nowVersionApp: initState.nowVersionApp,
                        updateVersionApp: initState.updateVersionApp,
                        onBack: () {
                          context.popRoute();
                        },
                        onUpdate: () {
                          context.popRoute();
                          if (Platform.isAndroid || Platform.isIOS) {
                            final url = Uri.parse(
                              Platform.isAndroid
                                  ? "market://details?id=com.slepayakurica.app"
                                  : "https://apps.apple.com/ru/app/id6471508431",
                            );
                            launchUrl(
                              url,
                              mode: LaunchMode.externalApplication,
                            );
                          }
                        },
                      );
                    },
                  ).then(
                    (val) {
                      updateData.isOpenUpdateModalWindow = false;
                    },
                  );
                  setState(() {
                    _isOpenUpdateVersionApp = false;
                  });
                }
                updateData.isInitApp = true;
              },
              orElse: () => const SizedBox(),
            );
          },
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Scaffold(
                backgroundColor: BlindChickenColors.backgroundColor,
                body: SafeArea(
                  child: SingleChildScrollView(
                    controller: _scrollController,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const AppBarBlindChicken(),
                        BlocBuilder<CatalogBloc, CatalogState>(
                          builder: (context, state) {
                            return state.maybeMap(
                              preloadDataCompleted: (initState) {
                                if (_scrollController.position.pixels == 0) {
                                  WidgetsBinding.instance.addPostFrameCallback((_) {
                                    _scrollController.jumpTo(_historyPosition);
                                  });
                                }
                                return PopScope(
                                  canPop: false,
                                  onPopInvoked: (value) {},
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          context.read<BrandBloc>().add(
                                                const BrandEvent.getBrands(
                                                  selectTypePeople: 1,
                                                ),
                                              );
                                          context.navigateTo(
                                            MainCategoryRoute(
                                              title: 'Женщинам',
                                              selectIndexType: 1,
                                            ),
                                          );
                                        },
                                        child: const MainCategoryItem(
                                          image: 'woman',
                                          title: 'Женщинам',
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          context.read<BrandBloc>().add(
                                                const BrandEvent.getBrands(
                                                  selectTypePeople: 2,
                                                ),
                                              );
                                          context.navigateTo(
                                            MainCategoryRoute(
                                              title: 'Мужчинам',
                                              selectIndexType: 2,
                                            ),
                                          );
                                        },
                                        child: const MainCategoryItem(
                                          image: 'man',
                                          title: 'Мужчинам',
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          context.read<BrandBloc>().add(
                                                const BrandEvent.getBrands(
                                                  selectTypePeople: 3,
                                                ),
                                              );
                                          context.navigateTo(
                                            MainCategoryRoute(
                                              title: 'Детям',
                                              selectIndexType: 3,
                                            ),
                                          );
                                        },
                                        child: const MainCategoryItem(
                                          image: 'child',
                                          title: 'Детям',
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          context.read<BrandBloc>().add(
                                                const BrandEvent.getBrands(
                                                  selectTypePeople: 0,
                                                ),
                                              );
                                          context.navigateTo(
                                            const BrandsRoute(),
                                          );
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            top: 28,
                                            left: 14,
                                            bottom: 14,
                                          ),
                                          child: Text(
                                            'Бренды',
                                            style: Theme.of(context).textTheme.headline2?.copyWith(
                                                  fontWeight: FontWeight.w700,
                                                ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 37,
                                        margin: const EdgeInsets.only(
                                          right: 14,
                                          left: 14,
                                        ),
                                        child: Theme(
                                          data: Theme.of(context)
                                              .copyWith(splashColor: Colors.transparent),
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
                                                        child:
                                                            SvgPicture.asset('assets/icons/x.svg'),
                                                      ),
                                                    )
                                                  : const SizedBox(),
                                              hintText: 'Поиск',
                                              hintStyle: Theme.of(context)
                                                  .textTheme
                                                  .displayMedium
                                                  ?.copyWith(
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
                                            return GridView.builder(
                                                shrinkWrap: true,
                                                itemCount: initState.allBrands.length,
                                                physics: const NeverScrollableScrollPhysics(),
                                                gridDelegate:
                                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                                  crossAxisCount: 2, // number of items in each row
                                                  mainAxisSpacing: 11.0, // spacing between rows
                                                  crossAxisSpacing: 11.0, // spacing between columns
                                                  childAspectRatio: 6.5,
                                                ),
                                                padding: const EdgeInsets.only(
                                                  left: 14.0,
                                                  right: 14.0,
                                                ), // padding around the grid
                                                itemBuilder: (context, index) {
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
                                                      style: Theme.of(context).textTheme.headline2,
                                                    ),
                                                  );
                                                });
                                          },
                                          orElse: () => const SizedBox(),
                                        );
                                      }),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                    ],
                                  ),
                                );
                              },
                              orElse: () => const SizedBox(),
                            );
                          },
                        ),
                        const SizedBox(
                          height: 48,
                        ),
                      ],
                    ),
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
        BlocBuilder<CatalogBloc, CatalogState>(builder: (context, state) {
          return state.maybeMap(
            load: (value) {
              return Center(
                child: CircularProgressIndicator(
                  color: Colors.black,
                  backgroundColor: Colors.grey.shade400,
                ),
              );
            },
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
        }),
      ],
    );
  }
}
