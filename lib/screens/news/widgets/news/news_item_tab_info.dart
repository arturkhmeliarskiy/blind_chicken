import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
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
  bool _isWrap = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.only(left: 12, right: 12),
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
                if (widget.item.announcement.length > 140)
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: _isWrap
                              ? '${widget.item.announcement}  '
                              : '${widget.item.announcement.substring(0, 120)}  ',
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                        TextSpan(
                          text: _isWrap ? 'Скрыть' : 'Показать еще',
                          style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                decoration: TextDecoration.underline,
                                decorationColor: BlindChickenColors.textInput,
                                color: BlindChickenColors.textInput,
                              ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              setState(() {
                                _isWrap = !_isWrap;
                              });
                            },
                        ),
                      ],
                    ),
                  )
                else
                  Text(
                    widget.item.announcement,
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                if (widget.item.typeMedia == 'images' && widget.item.images.isNotEmpty)
                  Column(
                    children: [
                      const SizedBox(
                        height: 12,
                      ),
                      LayoutBuilder(builder: (context, constraints) {
                        return CachedNetworkImage(
                          imageUrl: widget.item.images.first,
                          height: 250,
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
                if (widget.item.typeMedia == 'video' && widget.item.video.isNotEmpty)
                  Column(
                    children: [
                      const SizedBox(
                        height: 12,
                      ),
                      LayoutBuilder(builder: (context, constraints) {
                        final videoId = YoutubePlayer.convertUrlToId(widget.item.video) ?? '';
                        return CachedNetworkImage(
                          imageUrl: 'https://img.youtube.com/vi/$videoId/0.jpg',
                          height: 250,
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
                if (widget.item.path.isNotEmpty)
                  Container(
                    height: 40,
                    color: BlindChickenColors.backgroundColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        if (widget.item.path.isNotEmpty)
                          GestureDetector(
                            onTap: widget.onGoTap,
                            child: Container(
                              height: 25,
                              padding: const EdgeInsets.only(left: 8, right: 8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: BlindChickenColors.borderBottomColor,
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                widget.item.titleButton,
                                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                      color: BlindChickenColors.activeBorderTextField,
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
