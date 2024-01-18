import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'image_card.dart';
import 'styles.dart';
import 'custom_appbar.dart';

List<ImageCardInfo> _infoList = [
  ImageCardInfo(
    title: 'Unity China, June,2023-Sept,2023',
    subtitle: 'Intern engine programmer in Unity Engine',
    height: 540.0,
    ratio: 0.45,
    content:
        '    *Multi-platform commercial game engine written in Cpp.\n    *Report to senior programmer, assisted working with minimum advice.\n    *Pre-research WebGPU graphics API for WebGLPlatform(for browsers).\n    *Implement WebGPU to a stage that engine runtime can compile into .wasm file and run to draw a triangle.\n    *Read and understand previous engine codes with docs and advice, ability and habbit to write understandable docs.',
    image:
        'https://github.com/InternationalDefy/internationalmrrunnerdefy/blob/main/img/Unity.png?raw=true',
    backgroundColor: Colors.lightBlue[200]!,
    lhs: true,
    navigationWidget: TextButton(
      child: Text(
        'Unity.cn website',
        style: gTitleStyleNormal,
      ),
      onPressed: () {
        final Uri url = Uri.parse('https://unity.cn');
        launchUrl(url);
      },
    ),
  ),
  ImageCardInfo(
    title: 'Perfect World, Jan,2021-July,2021',
    subtitle: 'Game client programmer in Newswordsman moblie game',
    height: 540.0,
    ratio: 0.45,
    content:
        '    *Report to lead programmer, able to implement client features together with server programmers, designers and artists.\n    *Develop game features involing multiple gameplay systems, write Lua & Cpp code while considering safty and efficiency.\n    *Read and understand other gameplay systems, document my own codes in project workspace.',
    image:
        'https://github.com/InternationalDefy/internationalmrrunnerdefy/blob/main/img/newswordsman.jpg?raw=true',
    backgroundColor: Colors.lightBlue[50]!,
    lhs: true,
    navigationWidget: TextButton(
      child: Text(
        'View on Googleplay',
        style: gTitleStyleNormal,
      ),
      onPressed: () {
        final Uri url = Uri.parse(
            'https://play.google.com/store/apps/details?id=com.pwrd.newswordsman&hl=en_US&gl=US');
        launchUrl(url);
      },
    ),
  ),
  ImageCardInfo(
    title: 'Virtuos, July,2020-Dec,2020',
    subtitle:
        'Junior software engineer in Horizen Zero Dawn and Nier\'s porting',
    height: 540.0,
    ratio: 0.45,
    content:
        '    *Report to game producer, independently working.\n    *Both projects are using Cpp language and in-house game engine.\n    *Survey in porting issues involves multiple gameplay systems.\n    *Pre-research GLSL shaders porting.',
    image:
        'https://github.com/InternationalDefy/internationalmrrunnerdefy/blob/main/img/nier.jpg?raw=true',
    backgroundColor: Colors.lightBlue[200]!,
    lhs: true,
  ),
  ImageCardInfo(
    title: 'Seasun Gaming, June,2019-Aug,2019',
    subtitle: 'Intern UE4 gameplay programmer in Sunken Centry moblie game.',
    height: 540.0,
    ratio: 0.45,
    content:
        '    *Report to senior programmer, assisted wroking.\n    *Write Slate UI plugin for Unreal engine.\n    *Basic understanding of Unreal engine\'s classes.',
    image:
        'https://github.com/InternationalDefy/internationalmrrunnerdefy/blob/main/img/sunkencentry.jpg?raw=true',
    backgroundColor: Colors.lightBlue[50]!,
    lhs: true,
    navigationWidget: TextButton(
      child: Text(
        'View on Googleplay',
        style: gTitleStyleNormal,
      ),
      onPressed: () {
        final Uri url = Uri.parse(
            'https://play.google.com/store/apps/details?id=com.klmagic.pirates&hl=en&gl=US');
        launchUrl(url);
      },
    ),
  ),
];

class IndustryExperience extends StatelessWidget {
  static String routeName = "IndustryExperience";
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
