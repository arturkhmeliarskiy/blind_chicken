import 'package:blind_chicken/screens/news/widgets/handler_links_news.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:models/models.dart';
import 'package:shared/shared.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

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

class _NewsItemTabInfoState extends State<NewsItemTabInfo> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: widget.onTap,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.only(left: 12, right: 12),
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: BlindChickenColors.backgroundColor,
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
                    if (!widget.item.isViewed)
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
                if (widget.item.typeMedia == 'images' && widget.item.images.isNotEmpty)
                  Column(
                    children: [
                      const SizedBox(
                        height: 12,
                      ),
                      LayoutBuilder(builder: (context, constraints) {
                        return CachedNetworkImage(
                          imageUrl: widget.item.images.first.imageUrl,
                          width: constraints.maxWidth,
                          fit: BoxFit.cover,
                          placeholder: (context, url) => const SizedBox(
                            height: 250,
                            child: LoadingImage(),
                          ),
                        );
                      }),
                    ],
                  ),
                if (widget.item.typeMedia == 'video' &&
                    widget.item.video.isNotEmpty &&
                    widget.item.typeVideo == 'original')
                  Column(
                    children: [
                      const SizedBox(
                        height: 12,
                      ),
                      LayoutBuilder(builder: (context, constraints) {
                        return CachedNetworkImage(
                          imageUrl: widget.item.videoImage,
                          width: constraints.maxWidth,
                          fit: BoxFit.cover,
                          placeholder: (context, url) => const SizedBox(
                            height: 250,
                            child: LoadingImage(),
                          ),
                        );
                      }),
                    ],
                  ),
                if (widget.item.typeMedia == 'video' &&
                    widget.item.video.isNotEmpty &&
                    widget.item.typeVideo == 'youtube')
                  Column(
                    children: [
                      const SizedBox(
                        height: 12,
                      ),
                      LayoutBuilder(builder: (context, constraints) {
                        final videoId = YoutubePlayer.convertUrlToId(widget.item.video) ?? '';

                        return CachedNetworkImage(
                          imageUrl: 'https://img.youtube.com/vi/$videoId/0.jpg',
                          fit: BoxFit.cover,
                          height: 9 / 16 * constraints.maxWidth,
                          width: constraints.maxWidth,
                          placeholder: (context, url) => SizedBox(
                            height: 9 / 16 * constraints.maxWidth,
                            width: constraints.maxWidth,
                            child: const LoadingImage(),
                          ),
                        );
                      }),
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
                    height: 10,
                  )
              ],
            ),
          ),
          // if (!widget.item.isViewed)
          //   const Padding(
          //     padding: EdgeInsets.all(8.0),
          //     child: NewsItemIndicator(),
          //   )
        ],
      ),
    );
  }
}
