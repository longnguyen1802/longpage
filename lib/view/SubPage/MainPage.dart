import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:longpage/control/MainPageControl.dart';
import 'ViewPage.dart';
import 'package:longpage/constant/mainPageConstant.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  @override
  _MainPage createState() => _MainPage();
}

class _MainPage extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Long Main Page',
              textAlign: TextAlign.center),
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              MainPageControl.showPopupMenu(context);
            },
          ),
        ),
        body: MaterialApp(
          initialRoute: "Anime",
          navigatorKey: NavigatorKey,
          routes: {
            "Anime": (context) => ViewPage("Anime"),
            "Character": (context) => ViewPage("Character"),
          },
        ));
  }
}
