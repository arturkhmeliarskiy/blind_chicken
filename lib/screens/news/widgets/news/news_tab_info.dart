import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/news/widgets/news/news_item_tab_info.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_kit/ui_kit.dart';

class NewsTabInfo extends StatefulWidget {
  const NewsTabInfo({super.key});

  @override
  State<NewsTabInfo> createState() => _NewsTabInfoState();
}

class _NewsTabInfoState extends State<NewsTabInfo> {
  final ScrollController _scrollController = ScrollController();
  double _historyPosition = 0.0;
  bool _isButtonTop = false;

  @override
  void initState() {
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
    if (_scrollController.position.pixels > _scrollController.position.maxScrollExtent - 100) {
      context.read<NewsBloc>().add(const NewsEvent.paginationNews());
    }
    _historyPosition = _scrollController.position.pixels;
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Container(
              color: BlindChickenColors.borderBottomColor,
              child: BlocBuilder<NewsBloc, NewsState>(builder: (context, state) {
                return state.maybeMap(
                  preloadDataCompleted: (initState) {
                    return ListView.builder(
                      controller: _scrollController,
                      itemCount: initState.news.list.length,
                      itemBuilder: (context, index) {
                        return NewsItemTabInfo(
                          item: initState.news.list[index],
                          path: initState.news.list[index].path,
                          onTap: () {
                            context.navigateTo(
                              NewsInfoDescriptionRoute(
                                info: initState.news.list[index],
                              ),
                            );
                          },
                          onGoTap: (path) {
                            context.read<CatalogBloc>().add(
                                  CatalogEvent.getInfoProducts(
                                    path: path,
                                  ),
                                );
                            context.navigateTo(
                              DashboardRoute(
                                children: [
                                  HomeAutoRouterRoute(
                                    children: [
                                      CatalogRoute(
                                        title: '',
                                        url: path,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                    );
                  },
                  orElse: () => const SizedBox(),
                );
              }),
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
        BlocBuilder<NewsBloc, NewsState>(builder: (context, state) {
          return state.maybeMap(
            load: (value) {
              return Center(
                child: CircularProgressIndicator(
                  color: Colors.black,
                  backgroundColor: Colors.grey.shade400,
                ),
              );
            },
            orElse: () => const SizedBox(),
          );
        }),
      ],
    );
  }
}
