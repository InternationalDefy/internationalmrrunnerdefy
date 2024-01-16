import 'dart:io';

import 'package:flutter/material.dart';
import 'package:internationalmrrunnerdefy/ImageCard.dart';
import 'package:internationalmrrunnerdefy/Styles.dart';

import 'CustomAppBar.dart';

class _ListInfo {
  String _content;
  String _title;
  String _img;
  Color _color;
  _ListInfo(this._content, this._title, this._img, this._color);
  Widget imageWidget() => Container(
        color: _color,
        height: 540.0,
        width: 720.0,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 3.0),
          child: Image.file(
            File(_img),
            fit: BoxFit.contain,
          ),
        ),
      );
  Widget contentWidget() => Container(
        height: 540.0,
        width: 720.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // const Padding(padding: EdgeInsets.only(top: 100.0)),
            Text(
              _title,
              style: gTitleStyleNormal,
            ),
            const Padding(padding: EdgeInsets.only(top: 50.0)),
            Text(
              _content,
              style: gTextStyleNormal,
            )
          ],
        ),
      );
}

List<_ListInfo> _listInfo = [
  _ListInfo(
    'A Gamer, Game-developer, Raver and Bicycle-rider.\nCurrently a post-graduate in master of software engineering at East China Normal University,\nReceived software engineering bachelor degree in Huazhong University of Science and Techonology in 2020,\nwith one-and-a-half year of game developing experience.\nACTIVE for ANY intership or remote game programmer oppotunities.',
    'This is Mr.Runner',
    'E:\\Flutter\\internationalmrrunnerdefy\\img\\cos0.jpg',
    Color(0x00ffffff),
  ),
  _ListInfo(
    'I have a huge game collection and thousands of hours gameplay time. \nI\'ve played many different types of games like RPG, FPS, Racing, strategy games...\nI have plenty of experience in games and the sense of good game design. Always thinking of design and implementations while playing, and have written many game reviews.',
    'As a Gamer,',
    'E:\\Flutter\\internationalmrrunnerdefy\\img\\steam.png',
    Color(0xee253031),
  ),
  _ListInfo(
    'I have industry experience in game engine and gameplay,\nMy first job is game engine developer in Virtuos Software, then I went to Perfect World as a gameplay programmer,\nI participated in console games porting and moblie games development.\nIn 2021, I resigned from my job and became a post-graduate in Master of Software Engineering,',
    'As a Developer,',
    'E:\\Flutter\\internationalmrrunnerdefy\\img\\newswordsman.png',
    Color(0xee071108),
  ),
  _ListInfo(
    'I am active in self-learning, \nReading online resources and participating open-source projects.\nLast summer vacation, I had a three-month internship in UnityCn,\nI pre-researched WebGPU graphics API for Chinese version Unity.',
    'As a Post-graudate,',
    'E:\\Flutter\\internationalmrrunnerdefy\\img\\Unity.png',
    Color(0xee071108),
  ),
  _ListInfo(
    'I have industry experience in writting game engine and gameplay',
    'As a Developer',
    'E:\\Flutter\\internationalmrrunnerdefy\\img\\bicycle0.jpg',
    Color(0xee071108),
  ),
  _ListInfo(
    'this is 3',
    '3',
    'E:\\Flutter\\internationalmrrunnerdefy\\img\\bicycle0.jpg',
    Color(0xee6a8eae),
  ),
  _ListInfo(
    'this is 5',
    '5',
    'E:\\Flutter\\internationalmrrunnerdefy\\img\\bicycle0.jpg',
    Color(0xee9bd1e5),
  ),
  _ListInfo(
    '',
    '',
    '',
    Color(0xeed1faff),
  ),
];

List<ImageCardInfo> _infoList = [
  ImageCardInfo(
    title: 'This is Mr.Runner',
    height: 360.0,
    content:
        '     A Gamer, Game-developer, Raver and Bicycle-rider. Currently a post-graduate in master of software engineering at East China Normal University, have received software engineering bachelor degree in Huazhong University of Science and Techonology in 2020, with one-and-a-half year of game developing experience. ACTIVE for ANY intership or remote game programmer oppotunities.',
    image: 'E:\\Flutter\\internationalmrrunnerdefy\\img\\rave_bg.jpg',
    backgroundColor: const Color(0xeed1faff),
    lhs: true,
  ),
  ImageCardInfo(
    title: 'As a Gamer',
    height: 360.0,
    content:
        '     I have a decent game collection and thousands of hours gameplay time. I\'ve played many different types of games like RPG, FPS, Racing, strategy games... I have plenty of experience in games and the sense of good game design. Always thinking of design and implementations while playing, and have written many game reviews.',
    image: 'E:\\Flutter\\internationalmrrunnerdefy\\img\\steam_bg.png',
    backgroundColor: const Color(0xee6a8eae),
    lhs: false,
    navigationWidget: TextButton(
      child: Text(
        'Steam Homepage',
        style: gGlitchStyleNormal,
      ),
      onPressed: () {},
    ),
  ),
];

class _HomepageBodyState extends State<_HomePageBody> {
  int _index = 0;
  @override
  Widget build(BuildContext context) => ListView(
        children: [
          ImageCard(info: _infoList[0]),
          ImageCard(info: _infoList[1]),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Padding(
          //       padding: const EdgeInsets.symmetric(vertical: 60.0),
          //       child: Center(
          //         child: SizedBox(
          //           width: 540,
          //           height: 360,
          //           child: Swiper(
          //             onIndexChanged: (newIndex) => setState(() {
          //               _index = newIndex;
          //             }),
          //             itemBuilder: (context, index) =>
          //                 _listInfo[index].imageWidget(),
          //             itemCount: _listInfo.length,
          //             pagination: const SwiperPagination(
          //                 builder: SwiperPagination.rect),
          //             control: null,
          //             loop: true,
          //             autoplay: true,
          //             duration: 150,
          //             autoplayDelay: 5000,
          //           ),
          //         ),
          //       ),
          //     ),
          //     Padding(
          //         padding: const EdgeInsets.symmetric(horizontal: 100.0),
          //         child: _listInfo[_index].contentWidget()),
          //   ],
          // ),
        ],
      );
}

class _HomePageBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomepageBodyState();
}

class HomePage extends StatelessWidget {
  Widget? _buildBottomBar() {
    return null;
  }

  static String routeName = "HomePage";
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: CustomAppBar(),
        body: _HomePageBody(),
        bottomNavigationBar: _buildBottomBar(),
      );
}
