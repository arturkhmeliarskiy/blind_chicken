import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:shared/shared.dart';
import 'package:shimmer/shimmer.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:video_player/video_player.dart';
import 'package:visibility_detector/visibility_detector.dart';

class NewsVideoPlayerSlider extends StatefulWidget {
  const NewsVideoPlayerSlider({
    super.key,
    required this.url,
    this.aspectRatio = 1,
    required this.onAspectRatio,
    this.borderRadius = 15,
    required this.onTap,
  });

  final String url;
  final double aspectRatio;
  final ValueChanged<double> onAspectRatio;
  final double borderRadius;
  final VoidCallback onTap;

  @override
  State<NewsVideoPlayerSlider> createState() => _NewsVideoPlayerSliderState();
}

class _NewsVideoPlayerSliderState extends State<NewsVideoPlayerSlider> {
  VideoPlayerController? _controller;

  @override
  void didChangeDependencies() {
    final updateData = GetIt.I.get<UpdateDataService>();

    _controller = VideoPlayerController.networkUrl(
      Uri.parse(widget.url),
    )..initialize().then((_) {
        setState(() {
          _controller?.play();
        });

        _controller?.setVolume(0.0);
        widget.onAspectRatio(_controller?.value.aspectRatio ?? 0);
        _controller?.setLooping(true);
      });
    _controller?.setLooping(true);
    final valueContorller = _controller;
    if (valueContorller != null) {
      updateData.videoController = valueContorller;
    }

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
        key: Key('video_${widget.url}'),
        onVisibilityChanged: (visibilityInfo) {
          double visiblePercentage = visibilityInfo.visibleFraction * 100;
          log("Video visibility: $visiblePercentage%", name: "Visibility");

          if (visiblePercentage > 35) {
            final valueContorller = _controller;
            if (valueContorller != null) {
              // Check if the video is already playing, if not, play it
              if (!(_controller?.value.isPlaying ?? false)) {
                _controller?.play();
                log("Video started playing", name: "VideoState");
              }
            }
          } else {
            final valueContorller = _controller;
            if (valueContorller != null) {
              // Pause the video if it's not the active video or is less than 50% visible
              if (_controller?.value.isInitialized ?? false) {
                _controller?.pause();
                log("Video paused", name: "VideoState");
              }
            }
          }
        },
        child: LayoutBuilder(
          builder: (context, constraints) {
            final valueContorller = _controller;
            if (valueContorller != null) {
              if (valueContorller.value.isInitialized) {
                return Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(widget.borderRadius),
                        bottomRight: Radius.circular(widget.borderRadius),
                      ),
                      child: AspectRatio(
                        aspectRatio: valueContorller.value.aspectRatio,
                        child: VideoPlayer(
                          valueContorller,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _controller?.pause();
                        widget.onTap();
                      },
                      child: AspectRatio(
                        aspectRatio: valueContorller.value.aspectRatio,
                        child: Container(
                          color: Colors.transparent,
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
        ));
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }
}
