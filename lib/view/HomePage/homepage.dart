import 'package:flutter/material.dart';
import 'package:longpage/view/SubPage/MainPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 4,
      child: Scaffold(
          bottomNavigationBar: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: "Home",
              ),
              Tab(
                icon: Icon(Icons.star),
                text: "Star",
              ),
              Tab(
                icon: Icon(Icons.face),
                text: "Profile",
              ),
              Tab(
                icon: Icon(Icons.settings),
                text: "Setting",
              ),
            ],
          ),
          body: TabBarView(
            children: [
              MainPage(),
              MainPage(),
              MainPage(),
              MainPage(),
            ],
          )),
    );
  }
}
