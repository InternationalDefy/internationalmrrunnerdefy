import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:internationalmrrunnerdefy/ImageCard.dart';
import 'package:internationalmrrunnerdefy/Styles.dart';

import 'CustomAppBar.dart';

List<ImageCardInfo> _infoList = [
  ImageCardInfo(
    title:
        'Unity China, June,2023-Sept,2023\nIntern engine programmer in Unity Engine',
    height: 540.0,
    ratio: 0.45,
    content:
        'Report to senior engine programmer, Independently pre-research WebGPU feature for Chinese version Unity engine on Wasm(browser) platform.\n',
    image: 'E:\\Flutter\\internationalmrrunnerdefy\\img\\Unity.png',
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
    title:
        'Perfect World, Jan,2021-July,2021\nGame client programmer in Newswordsman moblie game',
    height: 540.0,
    ratio: 0.45,
    content: '',
    image: 'E:\\Flutter\\internationalmrrunnerdefy\\img\\newswordsman.png',
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
    title:
        'Virtuos, July,2020-Dec,2020\nJunior software engineer in Horizen Zero Dawn and Nier\'s porting',
    height: 540.0,
    ratio: 0.45,
    content: 'Junior software engineer, \n',
    image: 'E:\\Flutter\\internationalmrrunnerdefy\\img\\nier.png',
    backgroundColor: Colors.lightBlue[200]!,
    lhs: true,
  ),
  ImageCardInfo(
    title:
        'Seasun Gaming, June,2019-Aug,2019\nIntern UE4 gameplay programmer in Sunken Centry moblie game.',
    height: 540.0,
    ratio: 0.45,
    content: 'Intern UE4 gameplay programmer, ',
    image: 'E:\\Flutter\\internationalmrrunnerdefy\\img\\sunkencentry.jpg',
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
