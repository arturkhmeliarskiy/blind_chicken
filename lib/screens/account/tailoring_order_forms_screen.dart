import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_kit/ui_kit.dart';

@RoutePage()
class TailoringOrderFormsScreen extends StatefulWidget {
  const TailoringOrderFormsScreen({super.key});

  @override
  State<TailoringOrderFormsScreen> createState() => _TailoringOrderFormsScreenState();
}

class _TailoringOrderFormsScreenState extends State<TailoringOrderFormsScreen> {
  final ScrollController _scrollController = ScrollController();
  bool _isButtonTop = false;
  bool _isLoading = false;
  bool _isSwipe = true;
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
        _isLoading = true;
      });
      await Future<void>.delayed(const Duration(seconds: 2), () {
        setState(() {
          _isLoading = false;
          context.read<AccountBloc>().add(
                const AccountEvent.paginationListOrdersBlank(),
              );
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
            if (initState.file.isNotEmpty) {
              context.navigateTo(
                const OrderPdfBlankViewRoute(),
              );
            }
          },
          errorOpenPdf: (initState) {
            BlindChickenMessage().showOverlay(
              context,
              initState.message,
              () {},
            );
          },
          orElse: () {},
        );
      },
      child: GestureDetector(
        onVerticalDragUpdate: (details) {},
        onHorizontalDragEnd: (DragEndDetails details) {
          if (details.velocity.pixelsPerSecond.dx > 0) {
            context.read<AccountBloc>().add(const AccountEvent.preloadData());
            context.navigateTo(
              const AccountRoute(),
            );
            setState(() {
              _isSwipe = false;
            });
            log((details.velocity.pixelsPerSecond.dx).toString());
          }
        },
        child: Stack(
          children: [
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                SafeArea(
                  child: Scaffold(
                    body: SingleChildScrollView(
                      controller: _scrollController,
                      child: PopScope(
                        canPop: false,
                        onPopInvoked: (value) {
                          if (_isSwipe) {
                            context.read<AccountBloc>().add(const AccountEvent.preloadData());
                            context.navigateTo(
                              const AccountRoute(),
                            );
                          }
                        },
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
                                          context
                                              .read<AccountBloc>()
                                              .add(const AccountEvent.preloadData());
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
                                        'Бланки заказов на подшив',
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
                                    'Бланки заказов на подшив',
                                    style: Theme.of(context).textTheme.titleSmall,
                                  ),
                                  const SizedBox(
                                    height: 14.0,
                                  ),
                                  BlocBuilder<AccountBloc, AccountState>(builder: (context, state) {
                                    return state.maybeMap(
                                      preloadDataCompleted: (initState) {
                                        return initState.listTailoringBlank.isNotEmpty
                                            ? Column(
                                                children: List.generate(
                                                    initState.listTailoringBlank.length, (index) {
                                                  return GestureDetector(
                                                    onTap: () {
                                                      context.read<AccountBloc>().add(
                                                            AccountEvent.getTailoringPdfBlank(
                                                              fileName:
                                                                  'Заказ ${initState.listTailoringBlank[index].number} '
                                                                  'от ${initState.listTailoringBlank[index].date}.pdf',
                                                              id: initState
                                                                  .listTailoringBlank[index].id,
                                                            ),
                                                          );
                                                    },
                                                    child: Container(
                                                      margin: const EdgeInsets.only(
                                                        bottom: 21,
                                                      ),
                                                      child: Row(children: [
                                                        SvgPicture.asset(
                                                          'assets/icons/document.svg',
                                                          height: 17.5,
                                                          width: 17.5,
                                                        ),
                                                        const SizedBox(
                                                          width: 6,
                                                        ),
                                                        Text(
                                                          'Заказ ${initState.listTailoringBlank[index].number} '
                                                          'от ${initState.listTailoringBlank[index].date}',
                                                          style: Theme.of(context)
                                                              .textTheme
                                                              .headlineLarge,
                                                        ),
                                                      ]),
                                                    ),
                                                  );
                                                }),
                                              )
                                            : Text(
                                                'Список бланков заказов на подшив пуст.',
                                                style: Theme.of(context).textTheme.headlineLarge,
                                              );
                                      },
                                      load: (value) {
                                        return Row(
                                          children: [
                                            Container(
                                              width: 20,
                                              height: 20,
                                              alignment: Alignment.center,
                                              margin: const EdgeInsets.only(),
                                              child: CircularProgressIndicator(
                                                strokeWidth: 3,
                                                color: Colors.black,
                                                backgroundColor: Colors.grey.shade400,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              'Загрузка данных...',
                                              style: Theme.of(context).textTheme.headlineLarge,
                                            ),
                                          ],
                                        );
                                      },
                                      orElse: () => const SizedBox(),
                                    );
                                  }),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                if (_isButtonTop && !_isLoading)
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
                  return _isLoading || (value.isLoadOpenPdf ?? false)
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
