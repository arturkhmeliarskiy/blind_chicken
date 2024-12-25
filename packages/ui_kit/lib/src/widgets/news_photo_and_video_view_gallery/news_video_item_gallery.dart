import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared/shared.dart';
import 'package:get_it/get_it.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:video_player/video_player.dart';

class NewsVideoItemGallery extends StatefulWidget {
  const NewsVideoItemGallery({
    super.key,
    required this.video,
    required this.aspectRatio,
    required this.onExitFullScreen,
  });

  final String video;
  final double aspectRatio;
  final VoidCallback onExitFullScreen;

  @override
  State<NewsVideoItemGallery> createState() => _NewsVideoItemGalleryState();
}

class _NewsVideoItemGalleryState extends State<NewsVideoItemGallery> {
  late VideoPlayerController _controller;
  bool _isFullScreenVideo = true;
  bool _isRotateScreen = false;
  bool _isPlay = false;

  @override
  void initState() {
    super.initState();
    final updateData = GetIt.I.get<UpdateDataService>();
    _controller = VideoPlayerController.networkUrl(
      Uri.parse(widget.video),
    )..initialize().then((_) {
        setState(() {
          _isPlay = true;
          _controller.play();
        });
        _controller.setVolume(1.0);

        _controller.setLooping(true);
      });
    updateData.videoController = _controller;
    _controller.setLooping(true);
  }

  @override
  void didUpdateWidget(covariant NewsVideoItemGallery oldWidget) {
    final updateData = GetIt.I.get<UpdateDataService>();
    updateData.videoController = _controller;
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
    return _controller.value.isInitialized
        ? Stack(
            alignment: Alignment.center,
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(
                      _controller,
                    ),
                  ),
                  Container(
                    height: 42,
                    width: width,
                    margin: EdgeInsets.only(
                        bottom:
                            MediaQuery.of(context).orientation == Orientation.portrait ? 0 : 10),
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
                                bufferedColor: BlindChickenColors.borderTextFieldSearch,
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
                              widget.onExitFullScreen();
                              SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
                            });
                          },
                          child: SizedBox(
                            width: 48,
                            height: 42,
                            child: Icon(
                              _isFullScreenVideo ? Icons.fullscreen_exit : Icons.fullscreen,
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
        : _isFullScreenVideo && MediaQuery.of(context).orientation == Orientation.portrait
            ? AspectRatio(
                aspectRatio: widget.aspectRatio,
                child: Center(
                  child: Container(
                    width: 40.0,
                    height: 40.0,
                    margin: EdgeInsets.all(10),
                    child: CircularProgressIndicator(
                      color: BlindChickenColors.backgroundColor,
                    ),
                  ),
                ),
              )
            : SizedBox(
                height: _isFullScreenVideo ? height : null,
                child: Center(
                  child: Container(
                    width: 40.0,
                    height: 40.0,
                    margin: EdgeInsets.all(10),
                    child: CircularProgressIndicator(
                      color: BlindChickenColors.backgroundColor,
                    ),
                  ),
                ),
              );
  }
}
