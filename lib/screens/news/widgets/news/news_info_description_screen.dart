import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/news/widgets/news_slider.dart';
import 'package:blind_chicken/screens/news/widgets/news_youtube_video_player.dart';
import 'package:blocs/blocs.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:models/models.dart';
import 'package:ui_kit/ui_kit.dart';

@RoutePage()
class NewsInfoDescriptionScreen extends StatefulWidget {
  const NewsInfoDescriptionScreen({
    super.key,
    required this.info,
  });

  final NewsInfoItemDataModel info;

  @override
  State<NewsInfoDescriptionScreen> createState() => _NewsInfoDescriptionScreenState();
}

class _NewsInfoDescriptionScreenState extends State<NewsInfoDescriptionScreen> {
  bool _isFullScreenVideo = false;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return !_isFullScreenVideo
        ? SafeArea(
            child: Scaffold(
              body: ListView(
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                  ),
                  children: [
                    const AppBarBlindChicken(),
                    const SizedBox(
                      height: 12,
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          WidgetSpan(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                right: 8,
                              ),
                              child: InkWell(
                                onTap: () {
                                  context.back();
                                },
                                child: SvgPicture.asset(
                                  'assets/icons/arrow-left.svg',
                                  height: 24,
                                  width: 24,
                                ),
                              ),
                            ),
                          ),
                          TextSpan(
                            text: widget.info.title,
                            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                                  fontWeight: FontWeight.w700,
                                  height: 1.2,
                                ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      widget.info.createAt,
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                            color: BlindChickenColors.textInput,
                          ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    if (widget.info.typeMedia == 'images' && widget.info.images.length == 1)
                      InkWell(
                        onTap: () {
                          context.navigateTo(
                            NewsPreviewMediaRoute(
                              media: widget.info.images,
                              goBotton: () {
                                context.back();
                              },
                              selectIndex: 0,
                            ),
                          );
                        },
                        child: CachedNetworkImage(
                          imageUrl: widget.info.images.first,
                          width: MediaQuery.of(context).orientation == Orientation.portrait
                              ? width
                              : width / 2,
                          height: 250,
                          fit: BoxFit.cover,
                          errorWidget: (context, url, error) => const Icon(Icons.error),
                        ),
                      ),
                    if (widget.info.typeMedia == 'images' && widget.info.images.length > 1)
                      NewsSlider(
                        media: widget.info.images,
                        goBotton: () {
                          context.back();
                        },
                        onTap: (index) {
                          context.pushRoute(
                            NewsPreviewMediaRoute(
                              selectIndex: index,
                              media: widget.info.images,
                              goBotton: () {
                                context.back();
                              },
                            ),
                          );
                        },
                      ),
                    if (widget.info.typeMedia == 'video')
                      SizedBox(
                        height: 250,
                        child: NewsYouTubeVideoPlayer(
                          url: widget.info.video,
                          onEnterFullScreen: () {
                            setState(() {
                              _isFullScreenVideo = true;
                            });
                          },
                          onExitFullScreen: () {},
                        ),
                      ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      widget.info.description,
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                    Container(
                      height: 40,
                      color: BlindChickenColors.backgroundColor,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(),
                          Row(
                            children: [
                              const Icon(
                                Icons.remove_red_eye,
                                size: 14,
                                color: BlindChickenColors.borderInput,
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                widget.info.numberViews.toString(),
                                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                                      fontSize: 12,
                                      color: BlindChickenColors.borderInput,
                                    ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    if (widget.info.path.isNotEmpty)
                      GestureDetector(
                        onTap: () {
                          context.read<CatalogBloc>().add(
                                CatalogEvent.getInfoProducts(
                                  path: widget.info.path,
                                ),
                              );
                          context.navigateTo(
                            DashboardRoute(
                              children: [
                                HomeAutoRouterRoute(
                                  children: [
                                    CatalogRoute(
                                      title: '',
                                      url: widget.info.path,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: BlindChickenColors.borderBottomColor,
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            widget.info.titleButton,
                            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                  color: BlindChickenColors.activeBorderTextField,
                                ),
                          ),
                        ),
                      ),
                    const SizedBox(
                      height: 40,
                    ),
                  ]),
            ),
          )
        : NewsYouTubeVideoPlayer(
            url: widget.info.video,
            onEnterFullScreen: () {},
            onExitFullScreen: () {
              setState(() {
                _isFullScreenVideo = false;
              });
            },
          );
  }
}
