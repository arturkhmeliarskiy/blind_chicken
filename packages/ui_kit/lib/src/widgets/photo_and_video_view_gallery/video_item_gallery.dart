import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:video_player/video_player.dart';

class VideoItemGallery extends StatefulWidget {
  const VideoItemGallery({
    super.key,
    required this.image,
    required this.video,
    this.isProgressBar = true,
    this.isPlay = true,
  });

  final String image;
  final String video;
  final bool isProgressBar;
  final bool isPlay;

  @override
  State<VideoItemGallery> createState() => _VideoItemGalleryState();
}

class _VideoItemGalleryState extends State<VideoItemGallery> {
  late VideoPlayerController _controller;
  bool _isPlayScreen = false;
  bool _isPlay = false;

  @override
  void initState() {
    super.initState();
    _controller =
        VideoPlayerController.networkUrl(Uri.parse('https://slepayakurica.ru/${widget.video}'))
          ..initialize().then((_) {
            setState(() {
              _isPlayScreen = true;
              _isPlay = true;
              _controller.play();
              _controller.setLooping(true);
            });
          });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Stack(
      alignment: Alignment.center,
      children: [
        _isPlayScreen
            ? Center(
                child: _controller.value.isInitialized
                    ? Stack(
                        alignment: Alignment.center,
                        children: [
                          Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              SizedBox(
                                height: width * 4 / 3,
                                child: VideoPlayer(
                                  _controller,
                                ),
                              ),
                              if (widget.isProgressBar)
                                Container(
                                  height: 42,
                                  width: width,
                                  color: BlindChickenColors.activeBorderTextField.withOpacity(0.1),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            _isPlay = !_isPlay;
                                            if (_isPlay) {
                                              _controller.play();
                                            } else {
                                              _controller.pause();
                                            }
                                          });
                                        },
                                        child: SizedBox(
                                          width: 56,
                                          height: 42,
                                          child: Icon(
                                            _isPlay ? Icons.pause : Icons.play_arrow,
                                            size: 30,
                                            color: BlindChickenColors.backgroundColor,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: SizedBox(
                                          height: 6,
                                          child: VideoProgressIndicator(
                                            _controller,
                                            allowScrubbing: true,
                                            padding: EdgeInsets.zero,
                                            colors: const VideoProgressColors(
                                              playedColor: BlindChickenColors.backgroundColor,
                                              bufferedColor:
                                                  BlindChickenColors.borderTextFieldSearch,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 14,
                                      ),
                                    ],
                                  ),
                                ),
                            ],
                          ),
                          if (!_isPlay)
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  _isPlay = !_isPlay;
                                  if (_isPlay) {
                                    _controller.play();
                                  } else {
                                    _controller.pause();
                                  }
                                });
                              },
                              child: Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: BlindChickenColors.activeBorderTextField.withOpacity(0.2),
                                ),
                                child: const Icon(
                                  Icons.play_arrow,
                                  color: BlindChickenColors.backgroundColor,
                                  size: 40,
                                ),
                              ),
                            )
                        ],
                      )
                    : SizedBox(
                        height: width * 4 / 3,
                        child: Stack(
                          children: [
                            CachedNetworkImage(
                              imageUrl: 'https://slepayakurica.ru/${widget.image}',
                              width: MediaQuery.of(context).orientation == Orientation.portrait
                                  ? width
                                  : width,
                              height: height,
                              fit: BoxFit.cover,
                              errorWidget: (context, url, error) => const Icon(Icons.error),
                            ),
                            Center(
                              child: CircularProgressIndicator(
                                color: Colors.black,
                                backgroundColor: Colors.grey.shade400,
                              ),
                            ),
                          ],
                        ),
                      ),
              )
            : GestureDetector(
                onTap: () {
                  setState(() {
                    _isPlayScreen = true;
                    _isPlay = true;
                    _controller.play();
                  });
                },
                child: SizedBox(
                  height: width * 4 / 3,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CachedNetworkImage(
                        imageUrl: 'https://slepayakurica.ru/${widget.image}',
                        width: MediaQuery.of(context).orientation == Orientation.portrait
                            ? width
                            : width,
                        height: height,
                        fit: BoxFit.cover,
                        errorWidget: (context, url, error) => const Icon(Icons.error),
                      ),
                      if (widget.isPlay)
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: BlindChickenColors.activeBorderTextField.withOpacity(0.2),
                          ),
                          child: const Icon(
                            Icons.play_arrow,
                            color: BlindChickenColors.backgroundColor,
                            size: 40,
                          ),
                        )
                    ],
                  ),
                ),
              )
      ],
    );
  }
}
