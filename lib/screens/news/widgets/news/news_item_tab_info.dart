import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/news/widgets/handler_links_news.dart';
import 'package:blind_chicken/screens/news/widgets/news_slider.dart';
import 'package:blind_chicken/screens/news/widgets/news_video_player.dart';
import 'package:blind_chicken/screens/news/widgets/news_youtube_video_player.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:models/models.dart';
import 'package:shared/shared.dart';
import 'package:ui_kit/ui_kit.dart';

class NewsItemTabInfo extends StatefulWidget {
  const NewsItemTabInfo({
    super.key,
    required this.item,
    required this.onTap,
    required this.onGoTap,
    required this.isDisabledVideo,
  });

  final NewsInfoItemDataModel item;
  final VoidCallback onTap;
  final VoidCallback onGoTap;
  final bool isDisabledVideo;

  @override
  State<NewsItemTabInfo> createState() => _NewsItemTabInfoState();
}

class _NewsItemTabInfoState extends State<NewsItemTabInfo> with AutomaticKeepAliveClientMixin {
  bool _isFullScreenVideo = false;

  @override
  Widget build(BuildContext context) {
    super.build(context); //this line is needed
    final width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: widget.onTap,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
            padding: const EdgeInsets.only(left: 16, right: 16),
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: widget.item.isViewed
                  ? BlindChickenColors.backgroundColorItemFilter
                  : BlindChickenColors.backgroundColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        widget.item.title,
                        style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                    ),
                    if (widget.item.isViewed)
                      const SizedBox(
                        height: 15,
                        width: 25,
                      ),
                  ],
                ),
                Text(
                  DateInfo.dateFormat(widget.item.createAt),
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        color: BlindChickenColors.textInput,
                      ),
                ),
                const SizedBox(
                  height: 8,
                ),
                HtmlWidget(
                  widget.item.announcement,
                  textStyle: Theme.of(context).textTheme.displayMedium,
                  onTapUrl: (url) async {
                    return HandlerLinksNews.handlerLinks(
                      context: context,
                      url: url,
                      titleScreen: 'news',
                      titleAppMetrica: 'Переход по ссылке из cтраницы новостей',
                    );
                  },
                ),
                if (widget.item.typeMedia == 'images' && widget.item.images.length == 1)
                  Column(
                    children: [
                      const SizedBox(
                        height: 12,
                      ),
                      InkWell(
                        onTap: () {
                          context.navigateTo(
                            NewsPreviewMediaRoute(
                              media: widget.item.images,
                              goBotton: () {
                                context.back();
                              },
                              selectIndex: 0,
                            ),
                          );
                        },
                        child: CachedNetworkImage(
                          imageUrl: widget.item.images.first.imageUrl,
                          repeat: ImageRepeat.repeat,
                          width: MediaQuery.of(context).orientation == Orientation.portrait
                              ? width
                              : width / 2,
                          fit: BoxFit.cover,
                          errorWidget: (context, url, error) => const Icon(Icons.error),
                        ),
                      ),
                    ],
                  ),
                if (widget.item.typeMedia == 'images' && widget.item.images.length > 1)
                  Column(
                    children: [
                      const SizedBox(
                        height: 12,
                      ),
                      NewsSlider(
                        media: widget.item.images,
                        goBotton: () {
                          context.back();
                        },
                        onTap: (index) {
                          context.pushRoute(
                            NewsPreviewMediaRoute(
                              selectIndex: index,
                              media: widget.item.images,
                              goBotton: () {
                                context.back();
                              },
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                if (widget.item.typeMedia == 'video' && widget.item.typeVideo == 'youtube')
                  Column(
                    children: [
                      const SizedBox(
                        height: 12,
                      ),
                      NewsYouTubeVideoPlayer(
                        url: widget.item.video,
                        isAutoPlay: true,
                        isTapVideoFullScreen: true,
                        isDisabledVideo: widget.isDisabledVideo,
                        onEnterFullScreen: () {
                          showDialog(
                              context: context,
                              barrierColor: BlindChickenColors.activeBorderTextField,
                              builder: (context) {
                                return Scaffold(
                                    body: SafeArea(
                                  bottom: false,
                                  child: NewsYouTubeVideoPlayer(
                                    url: widget.item.video,
                                    isAutoPlay: true,
                                    onEnterFullScreen: () {},
                                    onExitFullScreen: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ));
                              });
                        },
                        onExitFullScreen: () {},
                      ),
                    ],
                  ),
                if (widget.item.typeMedia == 'video' && widget.item.typeVideo == 'original')
                  Column(
                    children: [
                      const SizedBox(
                        height: 12,
                      ),
                      NewsVideoPlayer(
                        url: widget.item.video,
                        image: widget.item.videoImage,
                        isProgressBar: false,
                        isTapVideoFullScreen: true,
                        isFullScreenVideo: _isFullScreenVideo,
                        videoImageHeight: widget.item.videoImageHeight,
                        videoImageWeight: widget.item.videoImageWeight,
                        isDisabledVideo: widget.isDisabledVideo,
                        onEnterFullScreen: (aspectRatio) {
                          setState(() {
                            _isFullScreenVideo = true;
                          });
                          showDialog(
                            context: context,
                            barrierColor: BlindChickenColors.activeBorderTextField,
                            builder: (context) {
                              return Scaffold(
                                backgroundColor: BlindChickenColors.activeBorderTextField,
                                body: NewsVideoPlayer(
                                  url: widget.item.video,
                                  image: widget.item.videoImage,
                                  isFullScreenVideo: _isFullScreenVideo,
                                  onEnterFullScreen: (aspectRatio) {},
                                  aspectRatio: aspectRatio,
                                  onExitFullScreen: () {
                                    Navigator.pop(context);
                                    setState(() {
                                      _isFullScreenVideo = false;
                                    });
                                  },
                                ),
                              );
                            },
                          );
                        },
                        onExitFullScreen: () {},
                      ),
                    ],
                  ),
                if (widget.item.titleButton.isNotEmpty)
                  LayoutBuilder(
                    builder: (context, constraints) {
                      return Container(
                        height: 40,
                        color: BlindChickenColors.backgroundColor,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            if (widget.item.titleButton.isNotEmpty)
                              GestureDetector(
                                onTap: widget.onGoTap,
                                child: IntrinsicWidth(
                                  child: Container(
                                    height: 25,
                                    constraints: BoxConstraints(maxWidth: constraints.maxWidth),
                                    padding: const EdgeInsets.only(
                                      left: 8,
                                      right: 8,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: BlindChickenColors.borderBottomColor,
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      widget.item.titleButton,
                                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                            color: BlindChickenColors.activeBorderTextField,
                                            backgroundColor: BlindChickenColors.borderBottomColor,
                                          ),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                    ),
                                  ),
                                ),
                              )
                            else
                              const SizedBox(),
                            // Row(
                            //   children: [
                            //     const Icon(
                            //       Icons.remove_red_eye,
                            //       size: 14,
                            //       color: BlindChickenColors.borderInput,
                            //     ),
                            //     const SizedBox(
                            //       width: 4,
                            //     ),
                            //     Text(
                            //       widget.item.numberViews.toString(),
                            //       style: Theme.of(context).textTheme.displaySmall?.copyWith(
                            //             fontSize: 12,
                            //             color: BlindChickenColors.borderInput,
                            //           ),
                            //     )
                            //   ],
                            // )
                          ],
                        ),
                      );
                    },
                  )
                else
                  const SizedBox(
                    height: 12,
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
