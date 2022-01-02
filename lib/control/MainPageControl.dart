import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:longpage/model/MainPageModel.dart';
import 'package:longpage/constant/mainPageConstant.dart';

class MainPageControl {
  //return the static MainPageModel object
  static final MainPageModel _model = MainPageModel();
  //this function to keep track of the menu popout
  static void showPopupMenu(BuildContext context) async {
    await showMenu(
      context: context,
      position: const RelativeRect.fromLTRB(0, 55, 100, 100),
      items: [
        PopupMenuItem<String>(
            child: TextButton(
                onPressed: () {
                  changePage("Anime");
                },
                child: const Text("Anime")),
            value: 'Anime'),
        PopupMenuItem<String>(
            child: TextButton(
                onPressed: () {
                  changePage("Character");
                },
                child: const Text("Character")),
            value: 'Character'),
      ],
      elevation: 8.0,
    );
  }

  //helper function help to change page
  static void changePage(String id) {
    if (id == _model.current_id) {
      return;
    } else {
      _model.current_id = id;
      NavigatorKey.currentState!.pushNamedAndRemoveUntil(id, (route) => false);
    }
  }
}
