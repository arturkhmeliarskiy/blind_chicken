import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/news/widgets/news/news_item_tab_info.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_kit/ui_kit.dart';

class NewsTabInfo extends StatefulWidget {
  const NewsTabInfo({super.key});

  @override
  State<NewsTabInfo> createState() => _NewsTabInfoState();
}

class _NewsTabInfoState extends State<NewsTabInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: BlindChickenColors.borderBottomColor,
      child: BlocBuilder<NewsBloc, NewsState>(builder: (context, state) {
        return state.maybeMap(
          preloadDataCompleted: (initState) {
            return ListView.builder(
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
    );
  }
}
