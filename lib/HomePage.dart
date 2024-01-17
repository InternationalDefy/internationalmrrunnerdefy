import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

import 'package:internationalmrrunnerdefy/ImageCard.dart';
import 'package:internationalmrrunnerdefy/IndustryExperience.dart';
import 'package:internationalmrrunnerdefy/Styles.dart';
import 'package:internationalmrrunnerdefy/main.dart';

import 'CustomAppBar.dart';

List<ImageCardInfo> _infoList = [
  ImageCardInfo(
    title: 'This is Mr.Runner',
    height: 400.0,
    content:
        '     A Gamer, Game-developer, Raver and Bicycle-rider. Currently a post-graduate in software engineering, one-and-a-half year of game development experience. \n     ACTIVE for ANY oppotunities as a game programmer.',
    image: 'E:\\Flutter\\internationalmrrunnerdefy\\img\\cos1.jpg',
    backgroundColor: const Color(0xffd1faff),
    lhs: true,
  ),
  ImageCardInfo(
    title: 'As a Gamer',
    height: 400.0,
    content:
        '     I have a decent game collection. I\'ve played many different types of games, forming a plenty of gaming experience and the sense of good game design. Constantly thinking over design and implementations while playing games, and have written many up-voted game reviews.',
    image: 'E:\\Flutter\\internationalmrrunnerdefy\\img\\steam_bg.png',
    backgroundColor: const Color(0xff6a8eae),
    lhs: false,
    navigationWidget: TextButton(
      child: Text(
        'View Steam Homepage',
        style: gTitleStyleNormal,
      ),
      onPressed: () {
        final Uri url =
            Uri.parse('https://steamcommunity.com/id/InternationalDefy/');
        launchUrl(url);
      },
    ),
  ),
  ImageCardInfo(
    title: 'As a Programmer',
    height: 400.0,
    content:
        '     I have industry experience in Virtuos and Perfect World, participating in console games porting and mobile game client development.',
    image: 'E:\\Flutter\\internationalmrrunnerdefy\\img\\newswordsman.png',
    backgroundColor: const Color(0xff6a8eae),
    lhs: true,
    navigationWidget: TextButton(
      child: Text(
        'View Details',
        style: gTitleStyleNormal,
      ),
      onPressed: () {
        gNavigatorKey.currentState!.pushNamed(IndustryExperience.routeName);
      },
    ),
  ),
  ImageCardInfo(
    title: 'Self driven',
    height: 400.0,
    content:
        '     I have industry experience in Virtuos and Perfect World, participating in console games porting and mobile game client development.',
    image: 'E:\\Flutter\\internationalmrrunnerdefy\\img\\Unity0.jpeg',
    backgroundColor: const Color(0xFAF3DD),
    lhs: false,
    navigationWidget: TextButton(
      child: Text(
        'View Details',
        style: gTitleStyleNormal,
      ),
      onPressed: () {
        gNavigatorKey.currentState!.pushNamed(IndustryExperience.routeName);
      },
    ),
  ),
  ImageCardInfo(
    title: 'Work Life Balance',
    height: 400.0,
    content:
        '     I have industry experience in Virtuos and Perfect World, participating in console games porting and mobile game client development.',
    image: 'E:\\Flutter\\internationalmrrunnerdefy\\img\\newswordsman.png',
    backgroundColor: const Color(0xff6a8eae),
    lhs: true,
    navigationWidget: TextButton(
      child: Text(
        'View Details',
        style: gTitleStyleNormal,
      ),
      onPressed: () {
        gNavigatorKey.currentState!.pushNamed(IndustryExperience.routeName);
      },
    ),
  ),
];

class _HomepageBodyState extends State<_HomePageBody> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> tobeChildren = List.empty(growable: true);
    for (ImageCardInfo info in _infoList) {
      tobeChildren.add(ImageCard(info: info));
    }
    tobeChildren.addAll(gBottomBarWidgetList());
    return ListView(
      children: tobeChildren,
    );
  }
}

class _HomePageBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomepageBodyState();
}

class HomePage extends StatelessWidget {
  static String routeName = "HomePage";
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: CustomAppBar(),
        body: _HomePageBody(),
        backgroundColor: const Color(0xff68B0AB),
      );
}
