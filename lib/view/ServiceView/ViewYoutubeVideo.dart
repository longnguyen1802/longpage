import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class ViewYoutubeVideo extends StatefulWidget {
  String? linkvideo;
  String? title;
  ViewYoutubeVideo(this.linkvideo, this.title);
  @override
  _ViewYoutubeVideo createState() => _ViewYoutubeVideo();
}

class _ViewYoutubeVideo extends State<ViewYoutubeVideo> {
  String? linkvideo;
  String? title;
  late YoutubePlayerController _controller;
  @override
  void initState() {
    super.initState();
    linkvideo = widget.linkvideo;
    title = widget.title;
    setState(() {
      _controller =
          YoutubePlayerController(initialVideoId: linkvideo as String);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title as String,
      home: Scaffold(
        body: Center(
          child: YoutubePlayerIFrame(
            controller: _controller,
            aspectRatio: 16 / 9,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
