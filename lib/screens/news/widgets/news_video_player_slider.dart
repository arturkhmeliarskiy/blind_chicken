import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:shared/shared.dart';
import 'package:cached_video_player_plus/cached_video_player_plus.dart';
import 'package:shimmer/shimmer.dart';
import 'package:ui_kit/ui_kit.dart';
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
  late CachedVideoPlayerPlusController _controller;

  @override
  void didChangeDependencies() {
    final updateData = GetIt.I.get<UpdateDataService>();

    _controller = CachedVideoPlayerPlusController.networkUrl(
      Uri.parse(widget.url),
    )..initialize().then((_) {
        setState(() {
          _controller.play();
        });

        _controller.setVolume(0.0);
        widget.onAspectRatio(_controller.value.aspectRatio);
        _controller.setLooping(true);
      });
    _controller.setLooping(true);
    updateData.videoController = _controller;
    super.didChangeDependencies();
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
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                  child: AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: CachedVideoPlayerPlus(
                      _controller,
                    ),
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
          : AspectRatio(
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
            ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
