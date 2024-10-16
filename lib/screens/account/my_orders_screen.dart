import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared/shared.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../app/router/app_router.dart';

@RoutePage()
class MyOrdersScreen extends StatefulWidget {
  const MyOrdersScreen({super.key});

  @override
  State<MyOrdersScreen> createState() => _MyOrdersScreenState();
}

class _MyOrdersScreenState extends State<MyOrdersScreen> {
  final ScrollController _scrollController = ScrollController();
  final BlindChickenShowDialogError _blindChickenMyOrdersShowDialogError =
      BlindChickenShowDialogError();
  bool _isShowDialogMyOrdersError = false;
  bool isLoading = false;
  bool _isSwipe = true;
  bool _isButtonTop = false;
  double _historyPosition = 0.0;

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
    if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
      setState(() {
        isLoading = true;
      });
      await Future<void>.delayed(const Duration(seconds: 2), () {
        setState(() {
          isLoading = false;
          context.read<AccountBloc>().add(const AccountEvent.paginationProduct());
        });
      });
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
    return BlocListener<AccountBloc, AccountState>(
      listener: (context, state) {
        state.maybeMap(
          preloadDataCompleted: (initState) {
            if (initState.isError ?? false) {
              final typeError = initState.typeError ?? '';
              if (!_isShowDialogMyOrdersError && typeError == 'мои заказы') {
                _isShowDialogMyOrdersError = true;
                _blindChickenMyOrdersShowDialogError.openShowDualog(
                  context: context,
                  errorMessage: initState.errorMessage ?? '',
                  widget: BlocBuilder<AccountBloc, AccountState>(
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
                    context.read<AccountBloc>().add(const AccountEvent.getOrders());
                  },
                );
              }
            } else {
              if (_isShowDialogMyOrdersError && !(initState.isError ?? false)) {
                _isShowDialogMyOrdersError = false;
                _blindChickenMyOrdersShowDialogError.closeShowDialog();
              }
            }
          },
          orElse: () {},
        );
      },
      child: PopScope(
        canPop: false,
        onPopInvoked: (value) {
          if (_isSwipe) {
            context.navigateTo(
              const AccountRoute(),
            );
          }
        },
        child: Stack(
          children: [
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                GestureDetector(
                  onVerticalDragUpdate: (details) {},
                  onHorizontalDragEnd: (details) {
                    if (details.velocity.pixelsPerSecond.dx > 0) {
                      context.navigateTo(
                        const AccountRoute(),
                      );
                      setState(() {
                        _isSwipe = false;
                      });
                    }
                  },
                  child: SafeArea(
                    child: Scaffold(
                      body: BlocBuilder<AccountBloc, AccountState>(builder: (context, state) {
                        return state.maybeMap(
                          preloadDataCompleted: (initState) {
                            return SingleChildScrollView(
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
                                          Row(
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  context.navigateTo(
                                                    const AccountRoute(),
                                                  );
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
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .displaySmall
                                                    ?.copyWith(
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
                                          Column(
                                            children: List.generate(
                                              initState.orders.length,
                                              (index) {
                                                return GestureDetector(
                                                  onTap: () {
                                                    context.read<AccountBloc>().add(
                                                          AccountEvent.getInfoOrder(
                                                            id: initState.orders[index].id,
                                                          ),
                                                        );

                                                    context.pushRoute(
                                                      OrderUserInfoRoute(
                                                        isPay: false,
                                                        orderId: initState.orders[index].id,
                                                      ),
                                                    );
                                                  },
                                                  child: Container(
                                                    height: 70,
                                                    margin: const EdgeInsets.only(bottom: 14),
                                                    decoration: const BoxDecoration(
                                                      border: Border(
                                                        bottom: BorderSide(
                                                          color:
                                                              BlindChickenColors.borderBottomColor,
                                                        ),
                                                      ),
                                                    ),
                                                    child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment.start,
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment.spaceBetween,
                                                            children: [
                                                              Text(
                                                                'Заказ ${initState.orders[index].id} от ${initState.orders[index].date}',
                                                                style: Theme.of(context)
                                                                    .textTheme
                                                                    .headlineLarge,
                                                              ),
                                                              Text(
                                                                '${initState.orders[index].sum.toString().spaceSeparateNumbers()} ₽',
                                                                style: Theme.of(context)
                                                                    .textTheme
                                                                    .headlineLarge,
                                                              ),
                                                            ],
                                                          ),
                                                          Text(
                                                            initState.orders[index].status,
                                                            style: Theme.of(context)
                                                                .textTheme
                                                                .displaySmall,
                                                          )
                                                        ]),
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 44.0,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ));
                          },
                          orElse: () => const SizedBox(),
                        );
                      }),
                    ),
                  ),
                ),
                if (_isButtonTop && !isLoading)
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
            BlocBuilder<AccountBloc, AccountState>(builder: (context, state) {
              return state.maybeMap(
                preloadDataCompleted: (value) {
                  return isLoading
                      ? Center(
                          child: CircularProgressIndicator(
                            color: Colors.black,
                            backgroundColor: Colors.grey.shade400,
                          ),
                        )
                      : const SizedBox();
                },
                orElse: () => const SizedBox(),
              );
            })
          ],
        ),
      ),
    );
  }
}
