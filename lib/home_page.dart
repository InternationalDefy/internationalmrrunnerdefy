import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

import 'personal_projects.dart';
import 'industry_experience.dart';
import 'image_card.dart';
import 'custom_appbar.dart';
import 'styles.dart';
import 'main.dart';

ScrollController? sHomePageController;

List<ImageCardInfo> _infoList = [
  ImageCardInfo(
    title: 'This is Mr.Runner',
    height: 400.0,
    content:
        '     A Gamer, Game-developer, Raver and Bicycle-rider. Currently a post-graduate in software engineering, two-and-a-half year of game development experience. \n     Already received retention of Timi L2 Studio.',
    image:
        'https://github.com/InternationalDefy/internationalmrrunnerdefy/blob/main/img/cos1.jpg?raw=true',
    backgroundColor: Colors.lightBlue[200]!,
    lhs: true,
    navigationWidget: TextButton(
      child: Text(
        'Contact Me',
        style: gTitleStyleNormal,
      ),
      onPressed: () {
        if (null != sHomePageController) {
          sHomePageController!.animateTo(
            sHomePageController!.position.maxScrollExtent,
            duration: const Duration(milliseconds: 500),
            curve: Curves.linear,
          );
        }
      },
    ),
  ),
  ImageCardInfo(
    title: 'As a Gamer',
    height: 400.0,
    content:
        '     I have a decent game collection. I\'ve played many different types of games, forming a massive quantity of gaming experience and the sense of good game design. Constantly thinking over design and implementations while playing games, and have written many up-voted game reviews.',
    image:
        'https://github.com/InternationalDefy/internationalmrrunnerdefy/blob/main/img/steam_bg.png?raw=true',
    backgroundColor: Colors.lightBlue[50]!,
    lhs: false,
    navigationWidget: TextButton(
      child: Text(
        'Steam Homepage',
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
        '     Currently worked in Timi L2 studio, used to work in Virtuos and Perfect World, participating in console games porting and mobile game client development.\n     In 2023 I participated in Unity China\'s three-month summer internship, pre-researching WebGPU graphics API for Unity Engine, it was a very rewarding experience for me.',
    image:
        'https://github.com/InternationalDefy/internationalmrrunnerdefy/blob/main/img/Unity0.jpeg?raw=true',
    backgroundColor: Colors.lightBlue[200]!,
    lhs: true,
    navigationWidget: TextButton(
      child: Text(
        'Career Experience',
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
        '     I am proactive in self-learning all the time, I\'ve read serval technical books during my working period, utilizing after-work time at home.\n     After I went back in university as a post-graduate, I was active on Internet, reading and trying different open-sourced engines like Bevy, Godot, etc',
    image:
        'https://github.com/InternationalDefy/internationalmrrunnerdefy/blob/main/img/bevy_bg.jpg?raw=true',
    backgroundColor: Colors.lightBlue[50]!,
    lhs: false,
    navigationWidget: TextButton(
      child: Text(
        'Personal Projects',
        style: gTitleStyleNormal,
      ),
      onPressed: () {
        gNavigatorKey.currentState!.pushNamed(PersonalProject.routeName);
      },
    ),
  ),
  ImageCardInfo(
    title: 'Work Life Balance',
    height: 400.0,
    content:
        '     I am also a raver and a bicycle-rider. I\'ve been to serval eletronic music festivals, and I\'ve finished three 1000km+ bicycle-journeys on my own, visiting some of the most far-off places. I \'ve rode my bicycle from cities to countryside, through grasslands, mountains and deserts.\n     These long and arduous bicycle-journeys gave me an extremely open mind and an iron will.',
    image:
        'https://github.com/InternationalDefy/internationalmrrunnerdefy/blob/main/img/bicycle_bg.jpg?raw=true',
    backgroundColor: Colors.lightBlue[200]!,
    lhs: true,
    navigationWidget: TextButton(
      child: Text(
        'Résumé',
        style: gTitleStyleNormal,
      ),
      onPressed: () {
        final Uri url = Uri.parse(
            'https://github.com/InternationalDefy/internationalmrrunnerdefy/blob/main/Résumé.pdf?raw=true');
        launchUrl(url);
      },
    ),
  ),
];

class _HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    sHomePageController = ScrollController();
    List<Widget> tobeChildren = List.empty(growable: true);
    for (ImageCardInfo info in _infoList) {
      tobeChildren.add(ImageCard(info: info));
    }
    tobeChildren.addAll(gBottomBarWidgetList());
    return ListView(
      controller: sHomePageController!,
      children: tobeChildren,
    );
  }
}

class HomePage extends StatelessWidget {
  static String routeName = "HomePage";
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: CustomAppBar(),
        body: _HomePageBody(),
        backgroundColor: Colors.lightBlue[50],
      );
}
