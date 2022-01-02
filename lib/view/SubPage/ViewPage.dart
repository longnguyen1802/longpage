import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../services/DetailModel.dart';
import '../../control/ModelControl.dart';
import '../../model/Model.dart';

class ViewPage extends StatefulWidget {
  String type;
  @override
  ViewPage(this.type);
  @override
  _ViewPage createState() => _ViewPage();
}

class _ViewPage extends State<ViewPage> {
  List _dataList = [];
  double? _screenWidthAdjustment;

  @override
  void initState() {
    super.initState();
    if (widget.type == "Anime") {
      _dataList = Model().createAnimeList();
    } else if (widget.type == "Character") {
      _dataList = Model().createCharacterList();
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidthAdjustment = MediaQuery.of(context).size.width - 48.0 - 64.0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(widget.type)),
        body: SafeArea(
            child: ListView.builder(
                itemExtent: 180.0,
                itemCount: _dataList.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    child: Card(
                      margin: const EdgeInsets.fromLTRB(24.0, 16.0, 24.0, 8.0),
                      elevation: 4.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0)),
                      clipBehavior: Clip.antiAlias,
                      child: Stack(
                        children: <Widget>[
                          Hero(
                              tag: 'background' + _dataList[index].title,
                              child: Container(
                                color: _dataList[index].materialColor,
                              )),
                          Positioned(
                              top: 0.0,
                              left: 0.0,
                              right: 0.0,
                              child: Hero(
                                  tag: 'image' + _dataList[index].title,
                                  child: FittedBox(
                                    child: Image.asset(_dataList[index].image,
                                        fit: BoxFit.fill),
                                  ))),
                          Positioned(
                              top: 96.0,
                              left: 32.0,
                              width: _screenWidthAdjustment,
                              child: Hero(
                                  tag: 'text' + _dataList[index].title,
                                  child: Material(
                                      color: Colors.transparent,
                                      child: Text(
                                        '${_dataList[index].title}',
                                        style: TextStyle(
                                            fontSize: 24.0,
                                            fontWeight: FontWeight.bold,
                                            color: _dataList[index]
                                                .materialColor
                                                .shade900),
                                      )))),
                          Positioned(
                              top: 125.0,
                              left: 32.0,
                              width: _screenWidthAdjustment,
                              child: Hero(
                                  tag: 'description' + _dataList[index].title,
                                  child: Material(
                                      color: Colors.transparent,
                                      child: Text(
                                        _dataList[index].description,
                                        overflow: TextOverflow.ellipsis,
                                      )))),
                        ],
                      ),
                    ),
                    onTap: () {
                      Tap(_dataList, index, context, widget.type);
                    },
                  );
                })));
  }
}
