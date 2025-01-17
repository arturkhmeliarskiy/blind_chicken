import 'package:blind_chicken/utils/logging.dart';

import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/old_repos/blocs/blocs.dart';
import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:blind_chicken/old_repos/models/models.dart';
import 'package:blind_chicken/old_repos/ui_kit/ui_kit.dart';

@RoutePage()
class BrandsScreen extends StatefulWidget {
  const BrandsScreen({
    super.key,
    this.lastPath = '',
    this.newsInfo,
    this.newsMediaInfo,
    this.newsNotificationInfo,
    this.messageId,
    this.idNews,
  });

  final String lastPath;
  final String? messageId;
  final String? idNews;
  final NewsInfoItemDataModel? newsInfo;
  final MediaInfoItemDataModel? newsMediaInfo;
  final NotificationInfoItemDataModel? newsNotificationInfo;

  @override
  State<BrandsScreen> createState() => _BrandsScreenState();
}

class _BrandsScreenState extends State<BrandsScreen> {
  final BlindChickenShowDialogError _blindChickenShowDialogError = BlindChickenShowDialogError();
  bool _isShowDialogError = false;
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _search = TextEditingController();
  bool _isButtonTop = false;
  bool _isSwipe = true;
  double _historyPosition = 0.0;

  @override
  void initState() {
    AppMetrica.reportEvent('Страница брендов');
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
    final width = MediaQuery.of(context).size.width;
    return BlocListener<BrandBloc, BrandState>(
      listener: (context, state) {
        state.maybeMap(
          preloadDataCompleted: (initState) {
            final typeError = initState.typeError ?? '';
            if (initState.isError ?? false) {
              if (!_isShowDialogError &&
                  (typeError == 'переключение гендерности' || typeError == 'назад в бренды')) {
                _isShowDialogError = true;
                _blindChickenShowDialogError.openShowDualog(
                  context: context,
                  errorMessage: initState.errorMessage ?? '',
                  widget: BlocBuilder<BrandBloc, BrandState>(
                    builder: (context, state) {
                      return state.maybeMap(
                        preloadDataCompleted: (value) {
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
                      case 'переключение гендерности':
                        context.read<BrandBloc>().add(
                              BrandEvent.switchGenderBrands(
                                selectTypePeople: initState.selectTypePeopleIndex ?? 0,
                              ),
                            );
                        break;
                      case 'назад в бренды':
                        context.read<BrandBloc>().add(
                              const BrandEvent.goBackBrandInfo(),
                            );
                        break;
                    }
                  },
                );
              }
            } else {
              if (_isShowDialogError) {
                _isShowDialogError = false;
                _blindChickenShowDialogError.closeShowDialog();
              }
              if (initState.listBrandsPath.isEmpty) {
                if (widget.lastPath.isNotEmpty) {
                  if (widget.lastPath == 'news') {
                    context.navigateTo(
                      NewsRoute(children: [
                        NewsInfoRoute(
                          indexPage: 0,
                        ),
                      ]),
                    );
                    AppMetrica.reportEvent('Список новостей');
                  } else if (widget.lastPath == 'news_info_description') {
                    final newsInfo = widget.newsInfo;
                    if (newsInfo != null) {
                      context.navigateTo(
                        NewsInfoDescriptionRoute(
                          info: newsInfo,
                        ),
                      );
                      AppMetrica.reportEvent('Страница новостей');
                    }
                  } else if (widget.lastPath == 'media_info_description') {
                    final newsMediaInfo = widget.newsMediaInfo;
                    if (newsMediaInfo != null) {
                      context.navigateTo(
                        MediaInfoDescriptionRoute(
                          info: newsMediaInfo,
                        ),
                      );
                    }
                  } else if (widget.lastPath == 'notfication_info_description') {
                    final newsNotificationInfo = widget.newsNotificationInfo;
                    if (newsNotificationInfo != null) {
                      context.navigateTo(
                        NotificationInfoDescriptionRoute(
                          info: newsNotificationInfo,
                        ),
                      );
                    }
                  } else if (widget.lastPath == 'media_notiifcation_description') {
                    context.navigateTo(
                      MediaNotificationDescriptionRoute(
                        idNews: widget.idNews ?? '',
                        isNotification: true,
                        messageId: widget.messageId,
                      ),
                    );
                  } else if (widget.lastPath == 'news_notification_description') {
                    context.navigateTo(
                      NewsNotificationDescriptionRoute(
                        idNews: widget.idNews ?? '',
                        isNotification: true,
                        messageId: widget.messageId,
                      ),
                    );
                  } else if (widget.lastPath == 'notfication_info_notfication_description') {
                    context.navigateTo(
                      NotificationInfoNotificationDescriptionRoute(
                        idNews: widget.idNews ?? '',
                        isNotification: true,
                        messageId: widget.messageId,
                      ),
                    );
                  }
                } else {
                  context.back();
                }
              }
            }
          },
          error: (value) {
            if (!_isShowDialogError && value.titleScreen == 'бренды') {
              _isShowDialogError = true;
              _blindChickenShowDialogError.openShowDualog(
                errorMessage: value.errorMessage,
                context: context,
                onRepeatRequest: () {
                  context.read<BrandBloc>().add(
                        BrandEvent.getBrands(
                          selectTypePeople: value.selectTypePeople,
                          titleScreen: 'бренды',
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
            logging((details.velocity.pixelsPerSecond.dx).toString(), stackTrace: StackTrace.current);
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
                children: [
                  Stack(
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
                                                          child: Text(
                                                              initState.listTypePeople[index],
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
                                    BlocBuilder<BrandBloc, BrandState>(
                                      builder: (cntext, state) {
                                        return state.maybeMap(
                                          preloadDataCompleted: (initState) {
                                            return SizedBox(
                                              height: 37,
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
                                                  cursorColor:
                                                      BlindChickenColors.activeBorderTextField,
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
                                                        color: BlindChickenColors
                                                            .activeBorderTextField,
                                                      ),
                                                      borderRadius: BorderRadius.circular(5),
                                                    ),
                                                    suffixIcon: _search.text.isNotEmpty
                                                        ? InkWell(
                                                            onTap: () {
                                                              _search.clear();
                                                              context.read<BrandBloc>().add(
                                                                    const BrandEvent.search(
                                                                        query: ''),
                                                                  );
                                                            },
                                                            child: Transform.scale(
                                                              scale: 0.5,
                                                              child: SvgPicture.asset(
                                                                  'assets/icons/x.svg'),
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
                                            );
                                          },
                                          orElse: () => SizedBox(),
                                        );
                                      },
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
                                                        text:
                                                            '${initState.listBrands[index].title}   ',
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .headlineLarge,
                                                        recognizer: TapGestureRecognizer()
                                                          ..onTap = () {
                                                            _scrollController.animateTo(
                                                              (initState.listCountBrand[index]
                                                                          .countAlphabet *
                                                                      50) +
                                                                  ((initState.listCountBrand[index]
                                                                          .countBrands *
                                                                      40)),
                                                              duration:
                                                                  const Duration(microseconds: 1),
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
                                                        DynamicHeightGridView(
                                                          shrinkWrap: true,
                                                          itemCount: initState
                                                              .listBrands[index].value.length,
                                                          physics:
                                                              const NeverScrollableScrollPhysics(),
                                                          crossAxisCount: width > 767
                                                              ? 3
                                                              : 2, // number of items in each row
                                                          crossAxisSpacing: 13,
                                                          mainAxisSpacing: 13,
                                                          builder: (context, indexBrand) {
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
                                                                    title: initState
                                                                        .listBrands[index]
                                                                        .value[indexBrand]
                                                                        .n,
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
                                                                    .headlineLarge,
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
                  BlocBuilder<BrandBloc, BrandState>(
                    builder: (context, state) {
                      return state.maybeMap(
                        load: (value) {
                          return Center(
                            child: CircularProgressIndicator(
                              color: Colors.black,
                              backgroundColor: Colors.grey.shade400,
                            ),
                          );
                        },
                        orElse: () => SizedBox(),
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
