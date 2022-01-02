import 'package:flutter/material.dart';
import 'package:longpage/services/DetailModel.dart';
import 'package:longpage/constant/mainPageConstant.dart';

import '../model/Model.dart';

Tap(List _animeList, int index, context, String type) {
  Navigator.of(context).push(
    PageRouteBuilder(
      fullscreenDialog: true,
      transitionDuration: const Duration(milliseconds: 1000),
      pageBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation) {
        return DetailModel(
            type,
            Model(
                title: _animeList[index].title,
                description: _animeList[index].description,
                image: _animeList[index].image,
                materialColor: _animeList[index].materialColor,
                linkvideo: _animeList[index].linkvideo));
      },
      transitionsBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation, Widget child) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
    ),
  );
}
