import 'dart:io';

import 'package:flutter/material.dart';
import 'package:internationalmrrunnerdefy/styles.dart';

class ImageCardInfo {
  String title;
  double height;
  double ratio;
  String content;
  String image;
  String subtitle;
  Color backgroundColor;
  bool lhs;
  Widget? navigationWidget;
  ImageCardInfo({
    required this.title,
    this.subtitle = "",
    required this.height,
    required this.content,
    required this.image,
    required this.backgroundColor,
    required this.lhs,
    this.ratio = 0,
    this.navigationWidget,
  });
}

class ImageCard extends StatelessWidget implements PreferredSizeWidget {
  final ImageCardInfo info;
  const ImageCard({required this.info});
  @override
  Size get preferredSize => Size.fromHeight(info.height);
  Widget _imageWidget(double width) => Center(
        child: Image.network(
          info.image,
          height: info.height,
          width: width,
          fit: BoxFit.fitHeight,
        ),
      );
  List<Widget> _buildTitleAndSubtitle() {
    List<Widget> widgets = List.empty(growable: true);
    widgets.add(Text(
      info.title,
      style: gTitleStyleNormal,
    ));
    if ('' != info.subtitle) {
      widgets.add(Text(
        info.subtitle,
        style: gTitleStyleItalic,
      ));
    }
    return widgets;
  }

  Widget _contentWidget(double width, double hPadding, double vPadding) {
    List<Widget> widgets = List.empty(growable: true);
    widgets.addAll(_buildTitleAndSubtitle());
    widgets.addAll([
      const Padding(
        padding: EdgeInsets.only(top: 20.0),
      ),
      Text(
        info.content,
        style: gTextStyleSmall,
        textAlign: TextAlign.left,
      ),
    ]);
    if (null != info.navigationWidget) {
      widgets.addAll([
        const Padding(
          padding: EdgeInsets.only(top: 20.0),
        ),
        info.navigationWidget!,
      ]);
    }
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: hPadding,
        vertical: vPadding,
      ),
      child: SizedBox(
        height: info.height,
        width: width - 2 * hPadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widgets,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double iWidth = info.ratio == 0
        ? info.height * 2.0
        : MediaQuery.of(context).size.width * info.ratio;
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
