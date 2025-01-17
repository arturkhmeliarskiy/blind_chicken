import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/boutiques/widgets/boutique_card.dart';
import 'package:blind_chicken/screens/boutiques/widgets/boutiques_switch.dart';
import 'package:blind_chicken/old_repos/blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:blind_chicken/old_repos/ui_kit/ui_kit.dart';

@RoutePage()
class BoutiquesScreen extends StatefulWidget {
  const BoutiquesScreen({super.key});

  @override
  State<BoutiquesScreen> createState() => _BoutiquesScreenState();
}

class _BoutiquesScreenState extends State<BoutiquesScreen> {
  final ScrollController _scrollController = ScrollController();
  final BlindChickenShowDialogError _blindChickenBoutiquesShowDialogError =
      BlindChickenShowDialogError();
  bool _isShowDialogBoutiquesError = false;
  bool _isButtonTop = false;
  double _historyPosition = 0.0;

  @override
  void initState() {
    AppMetrica.reportEvent('Список бутиков');
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
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<BoutiquesBloc, BoutiquesState>(
      listener: (context, state) {
        state.maybeMap(
            error: (value) {
              if (!_isShowDialogBoutiquesError) {
                _isShowDialogBoutiquesError = true;
                _blindChickenBoutiquesShowDialogError.openShowDualog(
                  context: context,
                  errorMessage: value.errorMessage,
                  widget: BlocBuilder<BoutiquesBloc, BoutiquesState>(
                    builder: (context, state) {
                      return state.maybeMap(
                        loadErrorButton: (value) {
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
                  onRepeatRequest: () {
                    context.read<BoutiquesBloc>().add(const BoutiquesEvent.preloadData());
                  },
                );
              }
            },
            preloadDataCompleted: (value) {
              if (_isShowDialogBoutiquesError) {
                _isShowDialogBoutiquesError = false;
                _blindChickenBoutiquesShowDialogError.closeShowDialog();
              }
            },
            orElse: () {});
      },
      child: SafeArea(
        child: Scaffold(
          body: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              ListView(
                controller: _scrollController,
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
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 17.5,
                            bottom: 17.5,
                          ),
                          child: Text(
                            'Бутики Слепая курица',
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                        ),
                        BoutiquesSwitch(
                          indexSelect: 0,
                          navigateToMap: () {
                            context.navigateTo(const YandexMapRoute());
                          },
                          navigateToBoutiques: () {},
                        ),
                        const SizedBox(
                          height: 21,
                        ),
                        BlocBuilder<BoutiquesBloc, BoutiquesState>(
                          builder: (context, state) {
                            return state.maybeMap(
                              preloadDataCompleted: (initState) {
                                return Column(
                                  children: List.generate(
                                    initState.boutiques.length,
                                    (index) => BoutiqueCard(
                                      onTap: () {
                                        context.read<BoutiquesBloc>().add(
                                              BoutiquesEvent.getInfoBoutique(
                                                uid: initState.boutiques[index].uidStore,
                                              ),
                                            );
                                        context.navigateTo(
                                          HomeAutoRouterRoute(
                                            children: [
                                              BoutiquesDescriptionRoute(),
                                            ],
                                          ),
                                        );
                                      },
                                      boutique: initState.boutiques[index],
                                    ),
                                  ),
                                );
                              },
                              orElse: () => const SizedBox(),
                            );
                          },
                        )
                      ],
                    ),
                  ),
                ],
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
    );
  }
}
