import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
  Widget _imageWidget() => Image.network(info.image, );
  Widget _contentWidget() => ;
  @override
  Widget build(BuildContext context) => Container(
        height: info.height,
        color: info.backgroundColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: info.lhs
              ? [
                  _imageWidget(),
                  _contentWidget(),
                ]
              : [
                  _contentWidget(),
                  _imageWidget(),
                ],
        ),
      );
}
