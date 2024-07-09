import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

@RoutePage()
class NewsPreviewYouTubeVideoPlayerScreen extends StatefulWidget {
  const NewsPreviewYouTubeVideoPlayerScreen({
    super.key,
    // required this.controller,
    required this.url,
    required this.goBack,
  });

  // final YoutubePlayerController controller;
  final String url;
  final ValueChanged<YoutubePlayerController> goBack;

  @override
  State<NewsPreviewYouTubeVideoPlayerScreen> createState() =>
      _NewsPreviewYouTubeVideoPlayerScreenState();
}

class _NewsPreviewYouTubeVideoPlayerScreenState extends State<NewsPreviewYouTubeVideoPlayerScreen> {
  bool _isFullScreenVideo = true;
  String videoId = '';
  YoutubePlayerController _controller = YoutubePlayerController(initialVideoId: '');

  @override
  void initState() {
    videoId = YoutubePlayer.convertUrlToId(widget.url) ?? '';
    _controller = YoutubePlayerController(
      initialVideoId: videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: true,
      ),
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YoutubePlayerBuilder(
        player: YoutubePlayer(
          controller: _controller,
        ),
        onEnterFullScreen: () {},
        onExitFullScreen: () {
          if (_isFullScreenVideo) {
            widget.goBack(_controller);
            setState(() {
              _isFullScreenVideo = false;
            });
          }
        },
        builder: (context, player) {
          return Column(
            children: [
              // some widgets
              player,
              //some other widgets
            ],
          );
        },
      ),
    );
  }
}
