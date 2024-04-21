import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/boutiques/widgets/boutique_slider_images.dart';
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
  });

  final String uidStore;
  final bool isNotification;

  @override
  State<BoutiquesDescriptionScreen> createState() => _BoutiquesDescriptionScreenState();
}

class _BoutiquesDescriptionScreenState extends State<BoutiquesDescriptionScreen> {
  @override
  void didChangeDependencies() {
    if (widget.uidStore.isNotEmpty) {
      context.read<BoutiquesBloc>().add(
            BoutiquesEvent.getInfoBoutique(
              uid: widget.uidStore,
              isNotification: widget.isNotification,
            ),
          );
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<BoutiquesBloc, BoutiquesState>(
      listener: (context, state) {
        state.maybeMap(
          preloadDataCompleted: (initState) {
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
          orElse: () {},
        );
      },
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(55),
          child: AppBarBlindChicken(),
        ),
        body: BlocBuilder<BoutiquesBloc, BoutiquesState>(
          builder: (context, state) {
            return state.maybeMap(
              preloadDataCompleted: (initState) {
                return ListView(
                  padding: const EdgeInsets.only(
                    left: 10.5,
                    right: 10.5,
                  ),
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
                              context.popRoute();
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
                    BoutiqueSliderImages(
                      listImages: initState.boutiqueDetails?.fotoDetail ?? [],
                      goBotton: () {},
                      addLike: () {},
                      onTap: () {
                        context.pushRoute(
                          BoutiquePreviewImagesRoute(
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
                                      fotoMin: initState.boutiqueDetails?.fotoMinList ?? '',
                                      url: initState.boutiqueDetails?.url ?? '',
                                      caption: initState.boutiqueDetails?.caption ?? '',
                                      name: initState.boutiqueDetails?.name ?? '',
                                      nameShort: initState.boutiqueDetails?.nameShort ?? '',
                                      schedule: initState.boutiqueDetails?.schedule ?? '',
                                      uidStore: initState.boutiqueDetails?.uidStore ?? '',
                                      iconPath: initState.boutiqueDetails?.iconPath ?? '',
                                      coordinates: initState.boutiqueDetails?.coordinates ??
                                          BoutiqueCoordinatesDataModel(
                                            latitude: 0,
                                            longitude: 0,
                                          ),
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
                      children: List.generate(initState.boutiqueInfo?.length ?? 0, (index) {
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
                                      int indexLast =
                                          initState.boutiqueInfo?[index].listInfo.length ?? 0;
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
    );
  }
}
