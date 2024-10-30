import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/boutiques/widgets/boutique_slider.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:models/models.dart';
import 'package:shared/shared.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class BoutiquesDescriptionScreen extends StatefulWidget {
  const BoutiquesDescriptionScreen({
    super.key,
    this.uidStore = '',
    this.isNotification = false,
    this.lastPath = '',
    this.newsInfo,
    this.newsMediaInfo,
    this.newsNotificationInfo,
    this.messageId,
    this.idNews,
  });

  final String uidStore;
  final bool isNotification;
  final String lastPath;
  final String? idNews;
  final String? messageId;
  final NewsInfoItemDataModel? newsInfo;
  final MediaInfoItemDataModel? newsMediaInfo;
  final NotificationInfoItemDataModel? newsNotificationInfo;

  @override
  State<BoutiquesDescriptionScreen> createState() => _BoutiquesDescriptionScreenState();
}

class _BoutiquesDescriptionScreenState extends State<BoutiquesDescriptionScreen> {
  final BlindChickenShowDialogError _blindChickenBoutiquesDescriptionShowDialogError =
      BlindChickenShowDialogError();
  bool _isShowDialogBoutiquesDescriptionInfoError = false;
  @override
  void didChangeDependencies() {
    if (widget.uidStore.isNotEmpty && widget.isNotification) {
      Timer(const Duration(milliseconds: 150), () {
        context.read<BoutiquesBloc>().add(
              BoutiquesEvent.getInfoBoutique(
                uid: widget.uidStore,
                isNotification: widget.isNotification,
                messageId: widget.messageId,
              ),
            );
      });
      AppMetrica.reportEvent('Страница описания бутика из push-уведомления');
    } else {
      AppMetrica.reportEvent('Страница описания бутика');
    }

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<BoutiquesBloc, BoutiquesState>(
      listener: (context, state) {
        state.maybeMap(
          preloadDataCompleted: (initState) {
            if (_isShowDialogBoutiquesDescriptionInfoError) {
              _isShowDialogBoutiquesDescriptionInfoError = false;
              _blindChickenBoutiquesDescriptionShowDialogError.closeShowDialog();
            }
            if (initState.isUpdateVersionApp && initState.isNotification) {
              final updateData = GetIt.I.get<UpdateDataService>();
              if (updateData.isOpenUpdateModalWindow) {
                Navigator.of(context, rootNavigator: true).pop();
              }

              BlindChickenMessage().showOverlay(context, 'Доступно обновление приложения', () {
                if (Platform.isAndroid || Platform.isIOS) {
                  final appId =
                      Platform.isAndroid ? 'YOUR_ANDROID_PACKAGE_ID' : 'com.slepayakurica.app';
                  final url = Uri.parse(
                    Platform.isAndroid
                        ? "market://details?id=$appId"
                        : "https://apps.apple.com/ru/app/id6471508431",
                  );
                  launchUrl(
                    url,
                    mode: LaunchMode.externalApplication,
                  );
                }
              });
            }
          },
          error: (value) {
            if (!_isShowDialogBoutiquesDescriptionInfoError) {
              _isShowDialogBoutiquesDescriptionInfoError = true;
              _blindChickenBoutiquesDescriptionShowDialogError.openShowDualog(
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
                  if (widget.uidStore.isNotEmpty && widget.isNotification) {
                    Timer(const Duration(milliseconds: 150), () {
                      context.read<BoutiquesBloc>().add(
                            BoutiquesEvent.getInfoBoutique(
                              uid: widget.uidStore,
                              isNotification: widget.isNotification,
                              messageId: widget.messageId,
                            ),
                          );
                    });
                  } else {
                    context.read<BoutiquesBloc>().add(
                          BoutiquesEvent.getInfoBoutique(
                            uid: value.uid ?? '',
                          ),
                        );
                  }
                },
              );
            }
          },
          orElse: () {},
        );
      },
      child: GestureDetector(
        onHorizontalDragUpdate: (details) {},
        onHorizontalDragEnd: (DragEndDetails details) {
          if (details.velocity.pixelsPerSecond.dx > 0) {
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

          log((details.velocity.pixelsPerSecond.dx).toString());
        },
        child: PopScope(
          canPop: false,
          onPopInvoked: (value) {
            if (!value) {
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
          },
          child: SafeArea(
            child: Scaffold(
              body: BlocBuilder<BoutiquesBloc, BoutiquesState>(
                builder: (context, state) {
                  return state.maybeMap(
                    preloadDataCompleted: (initState) {
                      return ListView(
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
                                    top: 16,
                                    bottom: 12,
                                  ),
                                  child: Row(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          context.maybePop();
                                        },
                                        child: Text(
                                          'Бутики',
                                          style: Theme.of(context).textTheme.displaySmall,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 11.2,
                                      ),
                                      Text(
                                        initState.boutiqueDetails?.nameShort ?? '',
                                        style: Theme.of(context).textTheme.displaySmall,
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  initState.boutiqueDetails?.caption ?? '',
                                  style: Theme.of(context).textTheme.titleSmall,
                                ),
                                const SizedBox(
                                  height: 7,
                                ),
                                Text(
                                  initState.boutiqueDetails?.address ?? '',
                                  style: Theme.of(context).textTheme.displayMedium,
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                BoutiqueSlider(
                                  media: initState.boutiqueDetails?.media ?? [],
                                  goBotton: () {},
                                  addLike: () {},
                                  onTap: (index) {
                                    context.pushRoute(
                                      BoutiquePreviewMediaRoute(
                                        selectIndex: index,
                                        media: initState.boutiqueDetails?.media ?? [],
                                        listImages: initState.boutiqueDetails?.fotoDetail ?? [],
                                        goBotton: () {
                                          context.back();
                                        },
                                      ),
                                    );
                                  },
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                Text(
                                  'График работы',
                                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                        fontWeight: FontWeight.w700,
                                      ),
                                ),
                                const SizedBox(
                                  height: 7,
                                ),
                                Text(
                                  initState.boutiqueDetails?.schedule ?? '',
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                                const SizedBox(
                                  height: 28,
                                ),
                                Text(
                                  'Адрес',
                                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                        fontWeight: FontWeight.w700,
                                      ),
                                ),
                                const SizedBox(
                                  height: 7,
                                ),
                                RichText(
                                  text: TextSpan(
                                    text: '${initState.boutiqueDetails?.address ?? ''}  ',
                                    style: Theme.of(context).textTheme.bodyMedium,
                                    children: [
                                      TextSpan(
                                        text: 'Показать на карте',
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            context.pushRoute(
                                              BoutiqueYandexMapRoute(
                                                mapPoint: BoutiqueDataModel(
                                                  address: initState.boutiqueDetails?.address ?? '',
                                                  fotoMin:
                                                      initState.boutiqueDetails?.fotoMinList ?? '',
                                                  url: initState.boutiqueDetails?.url ?? '',
                                                  caption: initState.boutiqueDetails?.caption ?? '',
                                                  name: initState.boutiqueDetails?.name ?? '',
                                                  nameShort:
                                                      initState.boutiqueDetails?.nameShort ?? '',
                                                  schedule:
                                                      initState.boutiqueDetails?.schedule ?? '',
                                                  uidStore:
                                                      initState.boutiqueDetails?.uidStore ?? '',
                                                  iconPath:
                                                      initState.boutiqueDetails?.iconPath ?? '',
                                                  coordinates:
                                                      initState.boutiqueDetails?.coordinates ??
                                                          BoutiqueCoordinatesDataModel(
                                                            latitude: 0,
                                                            longitude: 0,
                                                          ),
                                                  sheduleInfo: [],
                                                  sheduleDateTimeInfo: {},
                                                ),
                                              ),
                                            );
                                          },
                                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                              decoration: TextDecoration.underline,
                                            ),
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 28,
                                ),
                                Text(
                                  'Категории товаров',
                                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                        fontWeight: FontWeight.w700,
                                      ),
                                ),
                                const SizedBox(
                                  height: 7,
                                ),
                                Column(
                                  children:
                                      List.generate(initState.boutiqueInfo?.length ?? 0, (index) {
                                    return Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          initState.boutiqueInfo?[index].title ?? '',
                                          style: Theme.of(context).textTheme.displayMedium,
                                        ),
                                        const SizedBox(
                                          height: 3.5,
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Text.rich(
                                            TextSpan(
                                              children: List.generate(
                                                initState.boutiqueInfo?[index].listInfo.length ?? 0,
                                                (indexItem) {
                                                  int indexLast = initState
                                                          .boutiqueInfo?[index].listInfo.length ??
                                                      0;
                                                  return TextSpan(
                                                    text:
                                                        '${initState.boutiqueInfo?[index].listInfo[indexItem]}${indexLast == indexItem + 1 ? ' ' : ', '}',
                                                    style: Theme.of(context).textTheme.bodyMedium,
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 28,
                                        ),
                                      ],
                                    );
                                  }),
                                ),
                                const SizedBox(
                                  height: 40,
                                )
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                    orElse: () => const SizedBox(),
                    load: (value) {
                      return Center(
                        child: CircularProgressIndicator(
                          color: Colors.black,
                          backgroundColor: Colors.grey.shade400,
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
