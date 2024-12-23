import 'dart:developer';

import 'package:better_player/better_player.dart';
import 'package:blind_chicken/screens/news/widgets/better_video_player.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:visibility_detector/visibility_detector.dart';

class NewsBetterVideoPlayer extends StatefulWidget {
  const NewsBetterVideoPlayer({
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
  NewsBetterVideoPlayerState createState() => NewsBetterVideoPlayerState();
}

class NewsBetterVideoPlayerState extends State<NewsBetterVideoPlayer> {
  late BetterPlayerController _controller;
  double _aspectRatio = 1;

  @override
  void didChangeDependencies() {
    init();
    super.didChangeDependencies();
  }

  init() {
    _controller = BetterPlayerController(
      BetterPlayerConfiguration(
        controlsConfiguration: BetterPlayerControlsConfiguration(
          playerTheme: BetterPlayerTheme.custom,
          enableAudioTracks: false,
          customControlsBuilder: (videoController, onPlayerVisibilityChanged) => SizedBox(),
        ),
        looping: true,
        autoPlay: true,
        rotation: 1,
        aspectRatio: _aspectRatio,
      ),
      betterPlayerDataSource: BetterPlayerDataSource(
        BetterPlayerDataSourceType.network,
        widget.url,
        placeholder: AspectRatio(
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
      ),
    );
    _controller.setVolume(0.0);
    _controller.addEventsListener((BetterPlayerEvent event) {
      if (event.betterPlayerEventType == BetterPlayerEventType.initialized) {
        widget.onAspectRatio(_controller.videoPlayerController?.value.aspectRatio ?? 0);
        _aspectRatio = _controller.videoPlayerController?.value.aspectRatio ?? 0;
        _controller
            .setOverriddenAspectRatio(_controller.videoPlayerController?.value.aspectRatio ?? 0);

        _controller.play();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: Key('video_${widget.url}'),
      onVisibilityChanged: (visibilityInfo) {
        double visiblePercentage = visibilityInfo.visibleFraction * 100;
        log("Video visibility: $visiblePercentage%", name: "Visibility");

        if (visiblePercentage > 20) {
          // Check if the video is already playing, if not, play it
          if (!(_controller.videoPlayerController?.value.isPlaying ?? false)) {
            _controller.play();
            log("Video started playing", name: "VideoState");
          }
        } else {
          // Pause the video if it's not the active video or is less than 50% visible
          if (_controller.videoPlayerController?.value.initialized ?? false) {
            _controller.pause();
            log("Video paused", name: "VideoState");
          }
        }
        if (visiblePercentage == 0) {
          _controller.clearCache();
        }
      },
      child: _controller.isVideoInitialized() ?? false
          ? Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                  child: BetterVideoPlayer(
                    controller: _controller,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _controller.pause();
                    widget.onTap();
                  },
                  child: AspectRatio(
                    aspectRatio: _controller.getAspectRatio() ?? 0,
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
