import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:longpage/view/ServiceView/ViewVideo.dart';
import 'package:longpage/view/ServiceView/ViewYoutubeVideo.dart';
import 'package:longpage/model/Model.dart';
import 'dart:isolate';

import 'package:video_player/video_player.dart';

// bool isloading = false;
// ViewVideo? video;
// loadvideo(int x) {
//   video = ViewVideo("assets/videos/nisekoi.mp4", "Nisekoi");
//   isloading = true;
//   print("Hahahahahahahahaha");
// }
Widget loadvideo(List<String?> argu) {
  return ViewVideo(argu[0], argu[1]);
}

class DetailModel extends StatefulWidget {
  String type;
  final Model model;

  @override
  DetailModel(this.type, this.model);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<DetailModel> {
  Model? _model;
  double? _screenWidth;
  ViewVideo? video;
  bool isloading = false;
  @override
  void initState() {
    super.initState();
    //Isolate.spawn(loadvideo, 5);
    _model = widget.model;
    runCompute();
  }

  Future<void> runCompute() async {
    video =
        await compute(loadvideo, [widget.model.linkvideo, widget.model.title])
            as ViewVideo;
    isloading = true;
    setState(() {});
  }

  @override
  void didChangeDependencies() {
    _screenWidth = MediaQuery.of(context).size.width;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${_model!.title}'),
        backgroundColor: _model!.materialColor,
      ),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Hero(
              tag: 'background' + (_model!.title as String),
              child: Container(
                color: _model!.materialColor,
              ),
            ),
            Positioned(
                top: 0.0,
                left: 0.0,
                width: _screenWidth,
                height: 230.0,
                child: Hero(
                    tag: 'image' + (_model!.title as String),
                    child: Image.asset(
                      (_model!.image as String),
                      fit: BoxFit.fitWidth,
                    ))),
            Positioned(
                top: 250.0,
                left: 32.0,
                width: _screenWidth! - 64.0,
                child: Hero(
                    tag: 'text' + (_model!.title as String),
                    child: Material(
                        color: Colors.transparent,
                        child: Text(
                          '${_model!.title}',
                          style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                              color: _model!.materialColor!.shade900),
                        )))),
            Positioned(
                top: 280.0,
                left: 32.0,
                width: _screenWidth! - 64.0,
                child: Hero(
                    tag: 'subtitle' + (_model!.title as String),
                    child: Material(
                        color: Colors.transparent,
                        child: Text(
                          (_model!.description as String),
                        )))),
            Positioned(
                top: 310.0,
                left: 0.0,
                width: _screenWidth,
                height: 300.0,
                child: !isloading ? Container() : video as ViewVideo)
          ],
        ),
      ),
    );
  }
}
