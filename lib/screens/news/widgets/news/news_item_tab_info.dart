import 'package:blind_chicken/utils/logging.dart';

import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/news/widgets/handler_links_news.dart';
import 'package:blind_chicken/screens/news/widgets/news_media_slider.dart';
import 'package:blind_chicken/screens/news/widgets/news_slider.dart';
import 'package:blind_chicken/screens/news/widgets/news_youtube_video_player.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:blind_chicken/utils/reaction_button/flutter_reaction_button.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:get_it/get_it.dart';
import 'package:blind_chicken/old_repos/models/models.dart';
import 'package:blind_chicken/old_repos/shared/shared.dart';
import 'package:shimmer/shimmer.dart';
import 'package:blind_chicken/old_repos/ui_kit/ui_kit.dart';
import 'package:video_player/video_player.dart';
import 'package:visibility_detector/visibility_detector.dart';

class NewsItemTabInfo extends StatefulWidget {
  const NewsItemTabInfo({
    super.key,
    required this.item,
    required this.onTap,
    required this.onGoTap,
  });

  final NewsInfoItemDataModel item;
  final VoidCallback onTap;
  final VoidCallback onGoTap;

  @override
  State<NewsItemTabInfo> createState() => _NewsItemTabInfoState();
}

class _NewsItemTabInfoState extends State<NewsItemTabInfo> with AutomaticKeepAliveClientMixin {
  VideoPlayerController? _controller;

  @override
  void didChangeDependencies() {
    if (widget.item.video.isNotEmpty) {
      init();
    }
    super.didChangeDependencies();
  }

  init() {
    final updateData = GetIt.I.get<UpdateDataService>();

    _controller = VideoPlayerController.networkUrl(
      Uri.parse(widget.item.video),
    )..initialize().then((_) {
        setState(() {
          _controller?.play();
        });

        _controller?.setVolume(0.0);
        _controller?.setLooping(true);
      });
    _controller?.setLooping(true);
    final valueContorller = _controller;
    if (valueContorller != null) {
      updateData.videoController = valueContorller;
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context); //this line is needed
    final width = MediaQuery.of(context).size.width;
    return Stack(
      alignment: Alignment.topRight,
      children: [
        VisibilityDetector(
          key: Key('video_${widget.item.video}'),
          onVisibilityChanged: (visibilityInfo) {
            double visiblePercentage = visibilityInfo.visibleFraction * 100;
            logging("Video visibility: $visiblePercentage%", name: "Visibility", stackTrace: StackTrace.current);

            if (visiblePercentage > 35) {
              final valueContorller = _controller;
              if (valueContorller != null) {
                // Check if the video is already playing, if not, play it
                if (!(_controller?.value.isPlaying ?? false)) {
                  _controller?.play();
                  logging("Video started playing", name: "VideoState", stackTrace: StackTrace.current);
                }
              }
            } else {
              final valueContorller = _controller;
              if (valueContorller != null) {
                // Pause the video if it's not the active video or is less than 50% visible
                if (_controller?.value.isInitialized ?? false) {
                  _controller?.pause();
                  logging("Video paused", name: "VideoState", stackTrace: StackTrace.current);
                }
              }
            }
          },
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
                width: width,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: BlindChickenColors.textInput.withOpacity(0.2),
                      blurRadius: 8,
                      offset: const Offset(5, 5), // Shadow position
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: widget.onTap,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          ),
                          color: widget.item.isViewed
                              ? BlindChickenColors.backgroundColorItemFilter
                              : BlindChickenColors.backgroundColor,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (widget.item.typeMedia == 'media') buildNewsMediaSlider(context),
                              if (widget.item.typeMedia == 'images' && widget.item.images.length == 1)
                                buildSingleImage(context, width),
                              if (widget.item.typeMedia == 'images' && widget.item.images.length > 1)
                                buildMultipleImages(context),
                              if (widget.item.typeMedia == 'video' && widget.item.typeVideo == 'original')
                                buildOriginalVideo(),
                              const SizedBox(height: 12),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 16),
                                child: Row(
                                  children: [
                                    //Expanded(
                                    //  child: Text(
                                    //    widget.item.title,
                                    //    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                                    //          fontWeight: FontWeight.w700,
                                    //        ),
                                    //  ),
                                    //),
                                    if (widget.item.isViewed)
                                      const SizedBox(
                                        height: 15,
                                        width: 25,
                                      ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 14),
                              buildTextPost(context),
                              const SizedBox(height: 12),
                              Row(
                                children: [
                                  buildEmotionButton(),
                                  buildEmotionButton(),
                                  buildEmotionButton(),
                                  buildEmotionButton(),
                                  Spacer(),
                                  buildReadChecker(context),
                                ],
                              ),

                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Padding buildReadChecker(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            DateInfo.dateFormat(widget.item.createAt),
            style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  color: BlindChickenColors.textInput,
                ),
          ),
          if (widget.item.isViewed)
            Text(
              'Не прочитано',
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    color: BlindChickenColors.textInput,
                  ),
            )
          else
            SizedBox(),
        ],
      ),
    );
  }

  Padding buildTextPost(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: HtmlWidget(
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
    );
  }

  LayoutBuilder buildOriginalVideo() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final valueContorller = _controller;
        if (valueContorller != null) {
          if (valueContorller.value.isInitialized) {
            return Stack(
              children: [
                AspectRatio(
                  aspectRatio: valueContorller.value.aspectRatio,
                  child: VideoPlayer(
                    valueContorller,
                  ),
                ),
                InkWell(
                  onTap: () {
                    _controller?.pause();
                    context.navigateTo(
                      NewsVideoPlayerRoute(
                        goBack: () {
                          context.back();
                          _controller?.play();
                        },
                        aspectRatio: valueContorller.value.aspectRatio,
                        item: widget.item,
                      ),
                    );
                  },
                  child: AspectRatio(
                    aspectRatio: valueContorller.value.aspectRatio,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            );
          } else {
            return AspectRatio(
              aspectRatio: 1,
              child: Shimmer.fromColors(
                baseColor: BlindChickenColors.borderSwitchCard,
                highlightColor: BlindChickenColors.backgroundColorItemFilter,
                period: Duration(seconds: 2),
                child: Container(
                  decoration: BoxDecoration(
                    color: BlindChickenColors.borderSwitchCard,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                  ),
                ),
              ),
            );
          }
        } else {
          return AspectRatio(
            aspectRatio: 1,
            child: Shimmer.fromColors(
              baseColor: BlindChickenColors.borderSwitchCard,
              highlightColor: BlindChickenColors.backgroundColorItemFilter,
              period: Duration(seconds: 2),
              child: Container(
                decoration: BoxDecoration(
                  color: BlindChickenColors.borderSwitchCard,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
              ),
            ),
          );
        }
      },
    );
  }

  NewsSlider buildMultipleImages(BuildContext context) {
    return NewsSlider(
      media: widget.item.images,
      borderRadius: 0,
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
    );
  }

  NewsMediaSlider buildNewsMediaSlider(BuildContext context) {
    return NewsMediaSlider(
      images: widget.item.images,
      videos: widget.item.videos,
      borderRadius: 0,
      goBotton: () {
        context.back();
      },
      onTap: (index) {
        context.navigateTo(
          NewsPreviewMediaInfoRoute(
            selectedIndex: index,
            images: widget.item.images,
            videos: widget.item.videos,
            goBotton: () {
              context.back();
            },
          ),
        );
      },
    );
  }

  InkWell buildSingleImage(BuildContext context, double width) {
    return InkWell(
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
        imageUrl: widget.item.images.first,
        repeat: ImageRepeat.repeat,
        width: MediaQuery.of(context).orientation == Orientation.portrait ? width : width / 2,
        fit: BoxFit.cover,
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }

  NewsYouTubeVideoPlayer buildNewsYouTubeVideoPlayer(BuildContext context) {
    return NewsYouTubeVideoPlayer(
      url: widget.item.video,
      isAutoPlay: true,
      isTapVideoFullScreen: true,
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
    );
  }

  Widget buildEmotionButton() {
    return Row(
      children: [
        ReactionButton<String>(
          itemSize: Size(40, 40),
          onReactionChanged: (Reaction<String>? reaction) {
            debugPrint('Selected value: ${reaction?.value}');
          },
          reactions: <Reaction<String>>[
            Reaction<String>(
              value: 'like_fill',
              icon: Icon(Icons.link),
            ),
            Reaction<String>(
              value: 'like',
              icon: Icon(Icons.done),
            ),
            Reaction<String>(
              value: 'love',
              icon: Icon(Icons.heart_broken),
            ),
            Reaction<String>(
              value: 'love2',
              icon: Icon(Icons.monitor_heart_outlined),
            ),
            Reaction<String>(
              value: 'love3',
              icon: Icon(Icons.satellite_alt),
            ),
          ],
          selectedReaction: Reaction<String>(
            value: 'like_fill',
            icon: Icon(Icons.link),
          ),
          //child: Icon(Icons.link),
        ),
      ],
    );
  }

  @override
  void dispose() {
    if (widget.item.video.isNotEmpty) {
      if (_controller != null) {
        _controller?.dispose();
      }
    }
    super.dispose();
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
