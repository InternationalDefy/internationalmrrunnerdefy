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
  Widget _imageWidget(double width) => Center(
        child: Image.file(
          File(info.image),
          height: info.height,
          width: width,
          fit: BoxFit.contain,
        ),
      );
  Widget _contentWidget(double width, double hPadding, double vPadding) =>
      Padding(
        padding: EdgeInsets.symmetric(
          horizontal: hPadding,
          vertical: vPadding,
        ),
        child: SizedBox(
          height: info.height,
          width: width - 2 * hPadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: null == info.navigationWidget
                ? [
                    Text(
                      info.title,
                      style: gTitleStyleNormal,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0),
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
                      padding: EdgeInsets.only(top: 20.0),
                    ),
                    Text(
                      info.content,
                      style: gTextStyleSmall,
                      textAlign: TextAlign.left,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0),
                    ),
                    info.navigationWidget!,
                  ],
          ),
        ),
      );
  @override
  Widget build(BuildContext context) {
    double iWidth = info.height * 2;
    double cWidth = MediaQuery.of(context).size.width - iWidth;
    double hPadding = MediaQuery.of(context).size.width * 0.07;
    hPadding = (cWidth - 2 * hPadding) > 0 ? hPadding : 0;
    double vPadding = MediaQuery.of(context).size.height * 0.025;
    return Container(
      height: info.height,
      color: info.backgroundColor,
      child: Row(
        mainAxisAlignment:
            info.lhs ? MainAxisAlignment.start : MainAxisAlignment.end,
        children: info.lhs
            ? [
                _imageWidget(iWidth),
                _contentWidget(cWidth, hPadding, vPadding),
              ]
            : [
                _contentWidget(cWidth, hPadding, vPadding),
                _imageWidget(iWidth),
              ],
      ),
    );
  }
}
