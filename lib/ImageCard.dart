import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:internationalmrrunnerdefy/Styles.dart';

class ImageCardInfo {
  String title;
  double height;
  String content;
  String image;
  Color backgroundColor;
  bool lhs;
  Widget? navigationWidget;
  ImageCardInfo({
    required this.title,
    required this.height,
    required this.content,
    required this.image,
    required this.backgroundColor,
    required this.lhs,
    this.navigationWidget,
  });
}

class ImageCard extends StatelessWidget implements PreferredSizeWidget {
  ImageCardInfo info;
  ImageCard({required this.info});
  @override
  Size get preferredSize => Size.fromHeight(info.height);
  Widget _imageWidget() => Center(
        child: Image.file(
          File(info.image),
          height: info.height,
          width: 720.0,
          fit: BoxFit.contain,
        ),
      );
  Widget _contentWidget() => Container(
        height: info.height,
        width: 720.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: null == info.navigationWidget
              ? [
                  Text(
                    info.title,
                    style: gTitleStyleNormal,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 36.0),
                  ),
                  Text(
                    info.content,
                    style: gTextStyleSmall,
                    textAlign: TextAlign.left,
                  ),
                ]
              : [
                  Text(
                    info.title,
                    style: gTitleStyleNormal,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 36.0),
                  ),
                  Text(
                    info.content,
                    style: gTextStyleSmall,
                    textAlign: TextAlign.left,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 36.0),
                  ),
                  info.navigationWidget!,
                ],
        ),
      );
  @override
  Widget build(BuildContext context) => Container(
        height: info.height,
        color: info.backgroundColor,
        child: Row(
          mainAxisAlignment:
              info.lhs ? MainAxisAlignment.start : MainAxisAlignment.end,
          children: info.lhs
              ? [
                  _imageWidget(),
                  Center(
                    child: _contentWidget(),
                  ),
                ]
              : [
                  Center(
                    child: _contentWidget(),
                  ),
                  _imageWidget(),
                ],
        ),
      );
}
