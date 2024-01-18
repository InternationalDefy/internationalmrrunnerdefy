import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'image_card.dart';
import 'styles.dart';
import 'custom_appbar.dart';

List<ImageCardInfo> _infoList = [
  ImageCardInfo(
    title: 'Self-driven reading',
    height: 540.0,
    ratio: 0.45,
    content: '',
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
    content: '',
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
    content: '',
    image:
        'https://github.com/InternationalDefy/internationalmrrunnerdefy/blob/main/img/c++.png?raw=true',
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
    content: '',
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
    content: '',
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
    content: '',
    image:
        'https://github.com/InternationalDefy/internationalmrrunnerdefy/blob/main/img/ecnusoe.png?raw=true',
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
    content: '',
    image:
        'https://github.com/InternationalDefy/internationalmrrunnerdefy/blob/main/img/bevy_bg.png?raw=true',
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
