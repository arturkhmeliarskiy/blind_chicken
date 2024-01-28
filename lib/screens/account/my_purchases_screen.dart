import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared/shared.dart';
import 'package:ui_kit/ui_kit.dart';

@RoutePage()
class MyOrdersScreen extends StatefulWidget {
  const MyOrdersScreen({super.key});

  @override
  State<MyOrdersScreen> createState() => _MyOrdersScreenState();
}

class _MyOrdersScreenState extends State<MyOrdersScreen> {
  final ScrollController _scrollController = ScrollController();
  int offset = 0;
  int perOffset = 10;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_loadMoreData);
  }

  void _loadMoreData() async {
    if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
      setState(() {
        isLoading = true;
      });
      await Future<void>.delayed(const Duration(seconds: 2), () {
        setState(() {
          isLoading = false;
          offset = offset + perOffset;
          context.read<AccountBloc>().add(AccountEvent.paginationProduct(offset: offset, limit: 0));
          log(offset.toString());
        });
      });
    }
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
        Scaffold(
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
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        context.popRoute();
                      },
                      child: Text(
                        'Личный кабинет',
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Мои заказы',
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                            color: BlindChickenColors.activePageSelected,
                          ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 11.9,
                ),
                Text(
                  'Мои заказы',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const SizedBox(
                  height: 14.0,
                ),
                BlocBuilder<AccountBloc, AccountState>(builder: (context, state) {
                  return state.maybeMap(
                    preloadDataCompleted: (initState) {
                      return Column(
                        children: List.generate(
                          initState.listOrders.length,
                          (index) {
                            return GestureDetector(
                              onTap: () {
                                context.navigateTo(
                                  OrderUserInfoRoute(
                                    order: initState.listOrders[index],
                                  ),
                                );
                              },
                              child: Container(
                                height: 70,
                                margin: const EdgeInsets.only(bottom: 14),
                                decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: BlindChickenColors.borderBottomColor,
                                    ),
                                  ),
                                ),
                                child:
                                    Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Заказ ${initState.listOrders[index].orderNumber} от ${initState.listOrders[index].createAt}',
                                        style: Theme.of(context).textTheme.headline2,
                                      ),
                                      Text(
                                        '${initState.listOrders[index].amountPaid.toString().spaceSeparateNumbers()} ₽',
                                        style: Theme.of(context).textTheme.headline2,
                                      ),
                                    ],
                                  ),
                                  Text(
                                    initState.listOrders[index].status,
                                    style: Theme.of(context).textTheme.displaySmall,
                                  )
                                ]),
                              ),
                            );
                          },
                        ),
                      );
                    },
                    orElse: () => const SizedBox(),
                  );
                }),
                const SizedBox(
                  height: 44.0,
                ),
              ],
            ),
          ),
        ),
        if (isLoading)
          Center(
            child: CircularProgressIndicator(
              color: Colors.black,
              backgroundColor: Colors.grey.shade400,
            ),
          ),
      ],
    );
  }
}
