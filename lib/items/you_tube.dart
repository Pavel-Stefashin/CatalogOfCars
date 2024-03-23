import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class Video extends StatelessWidget {
  final String VideoLink;

  const Video({Key? key, required this.VideoLink}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = YoutubePlayerController();
    _controller.loadVideoById(videoId: YoutubePlayerController.convertUrlToId(VideoLink).toString());

    return YoutubePlayer(
      controller: _controller,
      aspectRatio: 16 / 9,
    );
  }
}