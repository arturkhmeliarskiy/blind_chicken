import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';


class VideoYoutubePlayer extends StatelessWidget {
  final String videoId;
  final String title;

  VideoYoutubePlayer({required this.videoId, required this.title, super.key});

  late final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: videoId,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 90.0),
          child: YoutubePlayer(
            controller: _controller,
            actionsPadding: const EdgeInsets.only(left: 16.0),
            bottomActions: [
              CurrentPosition(),
              const SizedBox(width: 10.0),
              ProgressBar(
                isExpanded: true,
              ),
              const SizedBox(width: 10.0),
              RemainingDuration(),
              FullScreenButton(),
            ],
          ),
        ),
      ),
    );
  }
}
