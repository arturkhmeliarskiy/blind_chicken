import 'dart:developer';

import 'package:better_player/better_player.dart';
import 'package:blind_chicken/screens/news/widgets/better_video_player.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

class NewsBetterVideoPlayer extends StatefulWidget {
  const NewsBetterVideoPlayer({
    super.key,
    required this.url,
    required this.image,
    required this.onTap,
  });

  final String url;
  final String image;
  final ValueChanged<double> onTap;

  @override
  NewsBetterVideoPlayerState createState() => NewsBetterVideoPlayerState();
}

class NewsBetterVideoPlayerState extends State<NewsBetterVideoPlayer> {
  late BetterPlayerController _controller;

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
      ),
      betterPlayerDataSource: BetterPlayerDataSource(
        BetterPlayerDataSourceType.network,
        widget.url,
        placeholder: CachedNetworkImage(
          imageUrl: widget.image,
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.cover,
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
      ),
    );
    _controller.setVolume(0.0);
    _controller.addEventsListener((BetterPlayerEvent event) {
      if (event.betterPlayerEventType == BetterPlayerEventType.initialized) {
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
      },
      child: _controller.isVideoInitialized() ?? false
          ? Stack(
              children: [
                BetterVideoPlayer(
                  controller: _controller,
                ),
                GestureDetector(
                  onTap: () {
                    widget.onTap(_controller.getAspectRatio() ?? 0);
                    _controller.pause();
                  },
                  child: Container(
                    color: Colors.transparent,
                  ),
                )
              ],
            )
          : GestureDetector(
              onTap: () {
                widget.onTap(_controller.getAspectRatio() ?? 0);
                _controller.pause();
              },
              child: CachedNetworkImage(
                imageUrl: widget.image,
                fit: BoxFit.cover,
                errorWidget: (context, url, error) => const Icon(Icons.error),
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
