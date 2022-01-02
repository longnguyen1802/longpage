import 'package:flutter/material.dart';
import 'package:longpage/view/ServiceView/ViewVideo.dart';
import 'package:longpage/view/SubPage/MainPage.dart';
import 'package:longpage/view/SubPage/ViewPage.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyApp createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: MainPage()));
  }

  @override
  void dispose() {
    super.dispose();
  }
}
