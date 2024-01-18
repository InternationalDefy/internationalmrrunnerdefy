import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'image_card.dart';
import 'styles.dart';
import 'custom_appbar.dart';

List<ImageCardInfo> _infoList = [
  ImageCardInfo(
    title: 'Spare-time reading',
    height: 540.0,
    ratio: 0.45,
    content:
        '     * Read multiple techincal books in spare time.\n     * Combine knowledge from books with work experience.\n     * Re-visit some of the classics multiple times, and re-fresh options.',
    image:
        'https://github.com/InternationalDefy/internationalmrrunnerdefy/blob/main/img/pdf.png?raw=true',
    backgroundColor: Colors.lightBlue[200]!,
    lhs: true,
  ),
  ImageCardInfo(
    title: 'RE2',
    subtitle: 'A Rust implemented ECS based game engine.',
    height: 540.0,
    ratio: 0.45,
    content:
        '     * Entity-Component-System architecture combined with macros for easily declarations of classes.\n     * Implement a default render pipeline with OpenGL(glut rust).\n     * Implement a window-event loop with priority-based dispatcher as well as event swallows.\n     * Though only single-threaded, the concepts of RE2 are accidentally similar to Bevy\'s.',
    image:
        'https://github.com/InternationalDefy/internationalmrrunnerdefy/blob/main/img/rust0.jpg?raw=true',
    backgroundColor: Colors.lightBlue[50]!,
    lhs: true,
    navigationWidget: TextButton(
      child: Text(
        'Github Link',
        style: gTitleStyleNormal,
      ),
      onPressed: () {
        final Uri url = Uri.parse('https://github.com/InternationalDefy/re2');
        launchUrl(url);
      },
    ),
  ),
  ImageCardInfo(
    title: 'AdvenTri',
    subtitle: 'A cocos2dx implemented 2D action game.',
    height: 540.0,
    ratio: 0.45,
    content:
        '     * Experimental project when I was young and trying to hard-code everything.\n     * Not a success, while consuming a lot of time and labour.\n     * Still educational for me to think a different way besides trying hard.',
    image:
        'https://github.com/InternationalDefy/internationalmrrunnerdefy/blob/main/img/c++.jpg?raw=true',
    backgroundColor: Colors.lightBlue[200]!,
    lhs: true,
    navigationWidget: TextButton(
      child: Text(
        'Github Link',
        style: gTitleStyleNormal,
      ),
      onPressed: () {
        final Uri url =
            Uri.parse('https://github.com/InternationalDefy/AdvenTri-Cocos');
        launchUrl(url);
      },
    ),
  ),
  ImageCardInfo(
    title: 'Sim city builder',
    subtitle: 'Rust implemented simulation of a city build ai survival.',
    height: 540.0,
    ratio: 0.45,
    content:
        '     * A simulation of a survival game with a trainable AI to increase survival length.\n     * Trainning data structure is implemented as limited-length-enums, allow Rust program instead of Python to train constriants.\n     * Still not thinking deep enough nor efficient in trainning, but a good programming practice for me.',
    image:
        'https://github.com/InternationalDefy/internationalmrrunnerdefy/blob/main/img/rust0.jpg?raw=true',
    backgroundColor: Colors.lightBlue[50]!,
    lhs: true,
    navigationWidget: TextButton(
      child: Text(
        'Github Link',
        style: gTitleStyleNormal,
      ),
      onPressed: () {
        final Uri url =
            Uri.parse('https://github.com/InternationalDefy/sim-city-build');
        launchUrl(url);
      },
    ),
  ),
  ImageCardInfo(
    title: 'Comedy writer RS',
    subtitle: 'A Rust implemented random sentances generator.',
    height: 540.0,
    ratio: 0.45,
    content:
        '     * Generate random sentances from a large vocabulary searched online.\n     * Using different seperate patterns and their combinations to generate real random sentances.\n     * No actually meaning at all, just for fun.',
    image:
        'https://github.com/InternationalDefy/internationalmrrunnerdefy/blob/main/img/rust0.jpg?raw=true',
    backgroundColor: Colors.lightBlue[200]!,
    lhs: true,
    navigationWidget: TextButton(
      child: Text(
        'Github Link',
        style: gTitleStyleNormal,
      ),
      onPressed: () {
        final Uri url =
            Uri.parse('https://github.com/InternationalDefy/comedy-writer-rs');
        launchUrl(url);
      },
    ),
  ),
  ImageCardInfo(
    title: 'ECNU SOE',
    subtitle: 'A mobile education software\'s frontend',
    height: 540.0,
    ratio: 0.45,
    content:
        '     * Flutter & Dart implemented frontend of a moblie app client.\n    * Writing flutter codes utilizing features as states, events, navigators.\n    * Docment the project well enought for successor schoolmates to get a quick and clear start.',
    image:
        'https://github.com/InternationalDefy/internationalmrrunnerdefy/blob/main/img/ecnusoe.jpg?raw=true',
    backgroundColor: Colors.lightBlue[50]!,
    lhs: true,
    navigationWidget: TextButton(
      child: Text(
        'Github Link',
        style: gTitleStyleNormal,
      ),
      onPressed: () {
        final Uri url =
            Uri.parse('https://github.com/ECNU-SOE/project_soe_frontend');
        launchUrl(url);
      },
    ),
  ),
  ImageCardInfo(
    title: 'Still working on Bevy',
    height: 540.0,
    ratio: 0.45,
    content:
        '     * Trying to modify Bevy-schedule executor, researching papers and using profilers.',
    image:
        'https://github.com/InternationalDefy/internationalmrrunnerdefy/blob/main/img/bevy_bg.jpg?raw=true',
    backgroundColor: Colors.lightBlue[200]!,
    lhs: true,
  ),
];

class PersonalProject extends StatelessWidget {
  static String routeName = "PersonalProject";
  @override
  Widget build(BuildContext context) {
    List<Widget> childList = List.empty(growable: true);
    childList.addAll(_infoList.map((e) => ImageCard(info: e)));
    childList.addAll(gBottomBarWidgetList());
    ListView listView = ListView(
      children: childList,
    );
    return Scaffold(
      appBar: CustomAppBar(),
      body: listView,
      backgroundColor: Colors.lightBlue[50],
    );
  }
}
