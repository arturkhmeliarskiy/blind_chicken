import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:video_player/video_player.dart';

class NewsVideoPlayer extends StatefulWidget {
  const NewsVideoPlayer({
    super.key,
    required this.url,
    required this.image,
    this.isProgressBar = true,
    this.isPlayIcon = true,
    this.isFullScreenVideo = false,
    required this.onEnterFullScreen,
    required this.onExitFullScreen,
    this.videoImageHeight = 0.0,
    this.videoImageWeight = 0.0,
    this.aspectRatio = 0.0,
  });

  final String url;
  final String image;
  final bool isProgressBar;
  final bool isPlayIcon;
  final bool isFullScreenVideo;
  final double videoImageHeight;
  final double videoImageWeight;
  final double aspectRatio;
  final ValueChanged<double> onEnterFullScreen;
  final VoidCallback onExitFullScreen;

  @override
  NewsVideoPlayerState createState() => NewsVideoPlayerState();
}

class NewsVideoPlayerState extends State<NewsVideoPlayer> {
  late VideoPlayerController _controller;
  bool _isPlayScreen = false;
  bool _isFullScreenVideo = false;
  bool _isPlay = false;

  @override
  void initState() {
    super.initState();
    _isFullScreenVideo = widget.isFullScreenVideo;
    _controller = VideoPlayerController.networkUrl(
      Uri.parse(widget.url),
    )..initialize().then((_) {
        setState(() {
          _isPlayScreen = true;
          _isPlay = true;
          _controller.play();
          _controller.setLooping(true);
        });
      });
    _controller.setLooping(true);
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
                              _isFullScreenVideo
                                  ? MediaQuery.of(context).orientation == Orientation.portrait
                                      ? AspectRatio(
                                          aspectRatio: _controller.value.aspectRatio,
                                          child: VideoPlayer(
                                            _controller,
                                          ),
                                        )
                                      : VideoPlayer(
                                          _controller,
                                        )
                                  : SizedBox(
                                      height: widget.videoImageHeight *
                                          (widget.videoImageHeight < widget.videoImageWeight
                                              ? 0.25
                                              : 0.35),
                                      width: width,
                                      child: VideoPlayer(
                                        _controller,
                                      ),
                                    ),
                              if (widget.isProgressBar)
                                Container(
                                  height: 42,
                                  width: width,
                                  margin: EdgeInsets.only(
                                      bottom: _isFullScreenVideo
                                          ? MediaQuery.of(context).orientation ==
                                                  Orientation.portrait
                                              ? 0
                                              : 10
                                          : 0),
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
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            _isFullScreenVideo = !_isFullScreenVideo;
                                            if (_isFullScreenVideo) {
                                              if (widget.videoImageHeight <
                                                  widget.videoImageWeight) {
                                                SystemChrome.setPreferredOrientations(
                                                    [DeviceOrientation.landscapeRight]);
                                              }

                                              widget
                                                  .onEnterFullScreen(_controller.value.aspectRatio);
                                            } else {
                                              SystemChrome.setPreferredOrientations(
                                                  [DeviceOrientation.portraitUp]);

                                              widget.onExitFullScreen();
                                            }
                                          });
                                        },
                                        child: SizedBox(
                                          width: 48,
                                          height: 42,
                                          child: Icon(
                                            _isFullScreenVideo
                                                ? Icons.fullscreen_exit
                                                : Icons.fullscreen,
                                            size: 30,
                                            color: BlindChickenColors.backgroundColor,
                                          ),
                                        ),
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
                    : _isFullScreenVideo &&
                            MediaQuery.of(context).orientation == Orientation.portrait
                        ? AspectRatio(
                            aspectRatio: widget.aspectRatio,
                            child: Stack(
                              children: [
                                CachedNetworkImage(
                                  imageUrl: widget.image,
                                  width: width,
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
                          )
                        : SizedBox(
                            height: _isFullScreenVideo
                                ? height
                                : widget.videoImageHeight *
                                    (widget.videoImageHeight < widget.videoImageWeight
                                        ? 0.25
                                        : 0.35),
                            child: Stack(
                              children: [
                                CachedNetworkImage(
                                  imageUrl: widget.image,
                                  width: MediaQuery.of(context).orientation == Orientation.portrait
                                      ? width
                                      : width,
                                  height: _isFullScreenVideo
                                      ? height
                                      : widget.videoImageHeight *
                                          (widget.videoImageHeight < widget.videoImageWeight
                                              ? 0.25
                                              : 0.35),
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
                child: _isFullScreenVideo &&
                        MediaQuery.of(context).orientation == Orientation.portrait
                    ? Center(
                        child: AspectRatio(
                          aspectRatio: widget.aspectRatio,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CachedNetworkImage(
                                imageUrl: widget.image,
                                width: width,
                                height: height,
                                fit: BoxFit.cover,
                                errorWidget: (context, url, error) => const Icon(Icons.error),
                              ),
                              if (widget.isPlayIcon)
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color:
                                        BlindChickenColors.activeBorderTextField.withOpacity(0.2),
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
                    : SizedBox(
                        height: _isFullScreenVideo
                            ? height
                            : widget.videoImageHeight *
                                (widget.videoImageHeight < widget.videoImageWeight ? 0.25 : 0.35),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CachedNetworkImage(
                              imageUrl: widget.image,
                              width: MediaQuery.of(context).orientation == Orientation.portrait
                                  ? width
                                  : width,
                              height: _isFullScreenVideo
                                  ? height
                                  : widget.videoImageHeight *
                                      (widget.videoImageHeight < widget.videoImageWeight
                                          ? 0.25
                                          : 0.35),
                              fit: BoxFit.cover,
                              errorWidget: (context, url, error) => const Icon(Icons.error),
                            ),
                            if (widget.isPlayIcon)
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
