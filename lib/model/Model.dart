import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Model {
  String? title;
  String? description;
  String? image;
  MaterialColor? materialColor;
  String? linkvideo;

  Model(
      {this.title,
      this.description,
      this.image,
      this.materialColor,
      this.linkvideo});

  List<Model> createAnimeList() {
    List<Model> _Model = [];
    return _Model
      ..add(Model(
        title: "Nisekoi",
        description: "",
        image: 'assets/images/nisekoi.jpg',
        materialColor: Colors.red,
        linkvideo: 'assets/videos/nisekoi.mp4',
      ))
      ..add(Model(
        title: "Gotoubun no Hanayome",
        description: "",
        image: 'assets/images/5toubun.jpg',
        materialColor: Colors.blue,
        linkvideo: 'assets/videos/5video.mp4',
      ))
      ..add(Model(
        title: "Angel Beats",
        description: "",
        image: 'assets/images/angelbeats.jpg',
        materialColor: Colors.cyan,
        linkvideo: 'assets/videos/angelbeats.mp4',
      ))
      ..add(Model(
        title: "Bofuri",
        description: "",
        image: 'assets/images/bofuri.jpg',
        materialColor: Colors.green,
        linkvideo: 'assets/videos/angelbeats.mp4',
      ))
      ..add(Model(
        title: "Bokutachi wa benkyou ga dekinai",
        description: "",
        image: 'assets/images/bokuben.jpg',
        materialColor: Colors.purple,
        linkvideo: 'assets/videos/angelbeats.mp4',
      ))
      ..add(Model(
        title: "Charlotte",
        description: "",
        image: 'assets/images/charlotte.jpg',
        materialColor: Colors.brown,
        linkvideo: 'assets/videos/angelbeats.mp4',
      ))
      ..add(Model(
        title: "Elaina",
        description: "",
        image: 'assets/images/elaina.jpg',
        materialColor: Colors.lightBlue,
        linkvideo: 'assets/videos/angelbeats.mp4',
      ))
      ..add(Model(
        title: "Love is war",
        description: "",
        image: 'assets/images/loveiswar.jpg',
        materialColor: Colors.lightGreen,
        linkvideo: 'assets/videos/angelbeats.mp4',
      ))
      ..add(Model(
        title: "Bokutachi no remake",
        description: "",
        image: 'assets/images/remake.jpg',
        materialColor: Colors.lime,
        linkvideo: 'assets/videos/angelbeats.mp4',
      ))
      ..add(Model(
        title: "Roku de nashi Majutsu Koushi to Akashic Record",
        description: "",
        image: 'assets/images/rokuaka.jpg',
        materialColor: Colors.pink,
        linkvideo: 'assets/videos/angelbeats.mp4',
      ))
      ..add(Model(
        title: "I've Been Killing Slimes for 300 Years and Maxed Out My Level",
        description: "",
        image: 'assets/images/slime300.jpg',
        materialColor: Colors.yellow,
        linkvideo: 'assets/videos/angelbeats.mp4',
      ));
  }

  List<Model> createCharacterList() {
    List<Model> _Model = [];
    return _Model
      ..add(Model(
        title: "Haru Onodera",
        description: "",
        image: 'assets/images/haru.jpg',
        materialColor: Colors.red,
        linkvideo: 'WFcUMINy86A',
      ))
      ..add(Model(
        title: "Nakano Itsuki",
        description: "",
        image: 'assets/images/itsuki.jpg',
        materialColor: Colors.blue,
        linkvideo: 'nHzAk1K9BCM',
      ))
      ..add(Model(
        title: "Kanade Tachibana",
        description: "",
        image: 'assets/images/kanade.jpg',
        materialColor: Colors.cyan,
        linkvideo: 'zxvU1at-MAA',
      ))
      ..add(Model(
        title: "Maple",
        description: "",
        image: 'assets/images/maple.jpg',
        materialColor: Colors.green,
        linkvideo: 'aHcStrdpvKI',
      ))
      ..add(Model(
        title: "Fumino Furuhashi",
        description: "",
        image: 'assets/images/fumino.jpg',
        materialColor: Colors.purple,
        linkvideo: 'faaEO9f4fDI',
      ))
      ..add(Model(
        title: "Nao Tomori",
        description: "",
        image: 'assets/images/nao.jpg',
        materialColor: Colors.brown,
        linkvideo: 'BGd_sb7SeOg',
      ))
      ..add(Model(
        title: "Elaina",
        description: "",
        image: 'assets/images/elaina.jpg',
        materialColor: Colors.lightBlue,
        linkvideo: '0a0rFTvGYOw',
      ))
      ..add(Model(
        title: "Shinomiya Kaguya",
        description: "",
        image: 'assets/images/kaguya.jpg',
        materialColor: Colors.lightGreen,
        linkvideo: 'UxO4Qhlq_g0',
      ))
      ..add(Model(
        title: "Shinoaki",
        description: "",
        image: 'assets/images/shinoaki.jpg',
        materialColor: Colors.lime,
        linkvideo: 'O1ZtVtxYDe4',
      ))
      ..add(Model(
        title: "Rumia Tingel",
        description: "",
        image: 'assets/images/rumia.jpg',
        materialColor: Colors.pink,
        linkvideo: 'EGiKKIfYwKs',
      ))
      ..add(Model(
        title: "Azusa",
        description: "",
        image: 'assets/images/azusa.jpg',
        materialColor: Colors.yellow,
        linkvideo: 'lXFZ-_jfla4',
      ));
  }
}
