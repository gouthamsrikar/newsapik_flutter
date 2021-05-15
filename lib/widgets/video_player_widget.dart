import 'package:flutter/material.dart';

import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Videoplayer extends StatefulWidget {
  @override
  _VideoplayerState createState() => _VideoplayerState();
}

class _VideoplayerState extends State<Videoplayer> {
  YoutubePlayerController _controller;
  void runyoutubevideo() {
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(
          'https://www.youtube.com/watch?v=V89BOZhJFlI'),
      flags: YoutubePlayerFlags(
        autoPlay: false,
        isLive: false,
        enableCaption: false,
      ),
    );
  }

  @override
  void initState() {
    runyoutubevideo();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void deactivate() {
    _controller.pause();
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(
      height: height / 3,
      child: YoutubePlayerBuilder(
        player: YoutubePlayer(
          controller: _controller,
        ),
        builder: (context, player) {
          return null;
        },
      ),
    );
  }
}
