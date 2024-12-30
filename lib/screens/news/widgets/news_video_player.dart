import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shimmer/shimmer.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:video_player/video_player.dart';
import 'package:visibility_detector/visibility_detector.dart';

class NewsVideoPlayer extends StatefulWidget {
  const NewsVideoPlayer({
    super.key,
    required this.url,
    required this.image,
    this.isProgressBar = true,
    this.isPlayIcon = true,
    this.isFullScreenVideo = false,
    this.isTapVideoFullScreen = false,
    this.isVisibilityDetector = false,
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
  final bool isTapVideoFullScreen;
  final bool isFullScreenVideo;
  final bool isVisibilityDetector;
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
  bool _isRotateScreen = false;
  bool _isPlay = false;

  @override
  void initState() {
    super.initState();
    _isFullScreenVideo = widget.isFullScreenVideo;
    // final updateData = GetIt.I.get<UpdateDataService>();

    _controller = VideoPlayerController.networkUrl(
      Uri.parse(widget.url),
    )..initialize().then((_) {
        setState(() {
          _isPlayScreen = true;
          _isPlay = true;
          _controller.play();
        });
        if (widget.isFullScreenVideo) {
          _controller.setVolume(1.0);
        } else {
          _controller.setVolume(0.0);
        }
        _controller.setLooping(true);
      });
    // updateData.videoController = _controller;
    _controller.setLooping(true);
  }

  @override
  void didUpdateWidget(covariant NewsVideoPlayer oldWidget) {
    if (!widget.isFullScreenVideo) {
      _controller.play();
    }
    // final updateData = GetIt.I.get<UpdateDataService>();
    // updateData.videoController = _controller;
    super.didUpdateWidget(oldWidget);
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
    return VisibilityDetector(
      key: Key('video_${widget.url}'),
      onVisibilityChanged: widget.isVisibilityDetector
          ? (visibilityInfo) {
              double visiblePercentage = visibilityInfo.visibleFraction * 100;
              log("Video visibility: $visiblePercentage%", name: "Visibility");

              if (visiblePercentage > 40) {
                // Check if the video is already playing, if not, play it
                if (!_controller.value.isPlaying) {
                  _controller.play();
                  log("Video started playing", name: "VideoState");
                }
              } else {
                // Pause the video if it's not the active video or is less than 50% visible
                if (_controller.value.isInitialized) {
                  _controller.pause();
                  log("Video paused", name: "VideoState");
                }
              }
            }
          : (value) {},
      child: Stack(
        alignment: Alignment.center,
        children: [
          _isPlayScreen
              ? Stack(
                  children: [
                    Center(
                      child: _controller.value.isInitialized
                          ? Stack(
                              alignment: Alignment.center,
                              children: [
                                Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    InkWell(
                                      onTap: widget.isTapVideoFullScreen
                                          ? () {
                                              widget
                                                  .onEnterFullScreen(_controller.value.aspectRatio);
                                              _controller.pause();
                                            }
                                          : null,
                                      child: AspectRatio(
                                        aspectRatio: _controller.value.aspectRatio,
                                        child: VideoPlayer(
                                          _controller,
                                        ),
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
                                        color: BlindChickenColors.activeBorderTextField
                                            .withOpacity(0.1),
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
                                            if (_isFullScreenVideo)
                                              GestureDetector(
                                                onTap: () {
                                                  setState(() {
                                                    _isRotateScreen = !_isRotateScreen;
                                                    if (_isRotateScreen) {
                                                      SystemChrome.setPreferredOrientations(
                                                          [DeviceOrientation.landscapeRight]);
                                                    } else {
                                                      SystemChrome.setPreferredOrientations(
                                                          [DeviceOrientation.portraitUp]);
                                                    }
                                                  });
                                                },
                                                child: Container(
                                                  width: 48,
                                                  height: 42,
                                                  padding: EdgeInsets.only(
                                                    left: 8,
                                                    top: 3,
                                                    bottom: 3,
                                                  ),
                                                  child: Icon(
                                                    Icons.screen_rotation,
                                                    size: 26,
                                                    color: BlindChickenColors.backgroundColor,
                                                  ),
                                                ),
                                              ),
                                            GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  _isFullScreenVideo = !_isFullScreenVideo;
                                                  if (_isFullScreenVideo) {
                                                    widget.onEnterFullScreen(
                                                        _controller.value.aspectRatio);
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
                                        color: BlindChickenColors.activeBorderTextField
                                            .withOpacity(0.2),
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
                                        errorWidget: (context, url, error) =>
                                            const Icon(Icons.error),
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
                              : _isFullScreenVideo
                                  ? SizedBox(
                                      height: height,
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          CachedNetworkImage(
                                            imageUrl: widget.image,
                                            width: width,
                                            height: height,
                                            fit: BoxFit.cover,
                                            errorWidget: (context, url, error) =>
                                                const Icon(Icons.error),
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
                                  : widget.image.isNotEmpty
                                      ? SizedBox(
                                          height: null,
                                          child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              CachedNetworkImage(
                                                imageUrl: widget.image,
                                                width: width,
                                                height: null,
                                                fit: BoxFit.cover,
                                                errorWidget: (context, url, error) =>
                                                    const Icon(Icons.error),
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
                                      : AspectRatio(
                                          aspectRatio: 1,
                                          child: Shimmer.fromColors(
                                            baseColor: BlindChickenColors.borderSwitchCard,
                                            highlightColor:
                                                BlindChickenColors.backgroundColorItemFilter,
                                            period: Duration(seconds: 2),
                                            child: Container(
                                              color: BlindChickenColors.borderSwitchCard,
                                            ),
                                          ),
                                        ),
                    ),
                    if (_isFullScreenVideo)
                      Align(
                        alignment: Alignment.topRight,
                        child: Material(
                          color: Colors.transparent,
                          child: SafeArea(
                            right: MediaQuery.of(context).orientation == Orientation.portrait,
                            child: Container(
                              height: 38,
                              width: 38,
                              decoration: BoxDecoration(
                                // color: BlindChickenColors.backgroundColor,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              margin: EdgeInsets.only(
                                top: 10.5,
                                right: MediaQuery.of(context).orientation == Orientation.portrait
                                    ? 10.5
                                    : 14.5,
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  SystemChrome.setPreferredOrientations(
                                      [DeviceOrientation.portraitUp]);
                                  widget.onExitFullScreen();
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  padding: const EdgeInsets.all(6),
                                  child: SvgPicture.asset(
                                    'assets/icons/x.svg',
                                    height: 28,
                                    width: 28,
                                    color: BlindChickenColors.backgroundColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                  ],
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
                      : _isFullScreenVideo
                          ? SizedBox(
                              height: height,
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
                                        color: BlindChickenColors.activeBorderTextField
                                            .withOpacity(0.2),
                                      ),
                                      child: const Icon(
                                        Icons.play_arrow,
                                        color: BlindChickenColors.backgroundColor,
                                        size: 40,
                                      ),
                                    )
                                ],
                              ),
                            )
                          : widget.image.isNotEmpty
                              ? SizedBox(
                                  height: null,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CachedNetworkImage(
                                        imageUrl: widget.image,
                                        width: width,
                                        height: null,
                                        fit: BoxFit.cover,
                                        errorWidget: (context, url, error) =>
                                            const Icon(Icons.error),
                                      ),
                                      if (widget.isPlayIcon)
                                        Container(
                                          height: 60,
                                          width: 60,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30),
                                            color: BlindChickenColors.activeBorderTextField
                                                .withOpacity(0.2),
                                          ),
                                          child: const Icon(
                                            Icons.play_arrow,
                                            color: BlindChickenColors.backgroundColor,
                                            size: 40,
                                          ),
                                        )
                                    ],
                                  ),
                                )
                              : AspectRatio(
                                  aspectRatio: 1,
                                  child: Shimmer.fromColors(
                                    baseColor: BlindChickenColors.borderSwitchCard,
                                    highlightColor: BlindChickenColors.backgroundColorItemFilter,
                                    period: Duration(seconds: 2),
                                    child: Container(
                                      color: BlindChickenColors.borderSwitchCard,
                                    ),
                                  ),
                                ),
                )
        ],
      ),
    );
  }
}
