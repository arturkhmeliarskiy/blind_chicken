import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:video_player/video_player.dart';

class NewsVideoPlayerItemInfo extends StatefulWidget {
  const NewsVideoPlayerItemInfo({
    super.key,
    required this.url,
  });

  final String url;

  @override
  State<NewsVideoPlayerItemInfo> createState() => _NewsVideoPlayerItemInfoState();
}

class _NewsVideoPlayerItemInfoState extends State<NewsVideoPlayerItemInfo> {
  late VideoPlayerController _controller;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(widget.url))
      ..initialize().then((_) {
        setState(() {
          _isLoading = false;
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
    return !_isLoading
        ? VideoPlayer(
            _controller,
          )
        : const LoadingImage();
  }
}
