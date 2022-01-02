import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';

class ViewVideo extends StatefulWidget {
  String? linkvideo;
  String? title;
  ViewVideo(this.linkvideo, this.title);
  @override
  _ViewVideo createState() => _ViewVideo();
}

class _ViewVideo extends State<ViewVideo> {
  String? linkvideo;
  String? title;
  late VideoPlayerController _controller;
  late ChewieController chewieController;
  @override
  void initState() {
    super.initState();
    linkvideo = widget.linkvideo;
    title = widget.title;
    setState(() {
      _controller = VideoPlayerController.asset(linkvideo as String)
        ..initialize().then((_) {
          setState(() {});
        });
      chewieController = ChewieController(
          videoPlayerController: _controller,
          autoInitialize: false,
          looping: true);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title as String,
      home: Scaffold(
        body: Center(
          child: _controller.value.isInitialized
              ? AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: Chewie(controller: chewieController),
                )
              : Container(),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    chewieController.dispose();
    super.dispose();
  }
}
