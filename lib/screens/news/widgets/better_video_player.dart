import 'package:better_player_plus/better_player_plus.dart';
import 'package:flutter/material.dart';

class BetterVideoPlayer extends StatefulWidget {
  const BetterVideoPlayer({super.key, required this.controller});

  final BetterPlayerController controller;

  @override
  State<BetterVideoPlayer> createState() => _BetterVideoPlayerState();
}

class _BetterVideoPlayerState extends State<BetterVideoPlayer> {
  @override
  Widget build(BuildContext context) {
    return BetterPlayer(controller: widget.controller);
  }

  @override
  void dispose() {
    super.dispose();
    widget.controller.dispose();
  }
}
