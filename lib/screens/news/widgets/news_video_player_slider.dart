import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:shared/shared.dart';
import 'package:video_player/video_player.dart';
import 'package:visibility_detector/visibility_detector.dart';

class NewsVideoPlayerSlider extends StatefulWidget {
  const NewsVideoPlayerSlider({
    super.key,
    required this.url,
    this.aspectRatio = 1,
    required this.onAspectRatio,
    required this.onTap,
  });

  final String url;
  final double aspectRatio;
  final ValueChanged<double> onAspectRatio;
  final VoidCallback onTap;

  @override
  State<NewsVideoPlayerSlider> createState() => _NewsVideoPlayerSliderState();
}

class _NewsVideoPlayerSliderState extends State<NewsVideoPlayerSlider> {
  late VideoPlayerController _controller;

  @override
  void didChangeDependencies() {
    final updateData = GetIt.I.get<UpdateDataService>();

    _controller = VideoPlayerController.networkUrl(
      Uri.parse(widget.url),
    )..initialize().then((_) {
        setState(() {
          _controller.play();
        });

        _controller.setVolume(0.0);
        widget.onAspectRatio(_controller.value.aspectRatio);
        _controller.setLooping(true);
      });
    updateData.videoController = _controller;
    _controller.setLooping(true);
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: Key('video_${widget.url}'),
      onVisibilityChanged: (visibilityInfo) {
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
      },
      child: _controller.value.isInitialized
          ? Stack(
              children: [
                AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(
                    _controller,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _controller.pause();
                    widget.onTap();
                  },
                  child: AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: Container(
                      color: Colors.transparent,
                    ),
                  ),
                )
              ],
            )
          : Center(
              child: Container(
                width: 40.0,
                height: 40.0,
                margin: EdgeInsets.all(10),
                child: CircularProgressIndicator(),
              ),
            ),
    );
  }
}
