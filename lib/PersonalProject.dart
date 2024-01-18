import 'package:flutter/material.dart';
import 'package:internationalmrrunnerdefy/CustomAppBar.dart';

class PersonalProject extends StatelessWidget {
  static String routeName = "PersonalProject";
  @override
  Widget build(BuildContext context) {
    List<Widget> childList = List.empty(growable: true);
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
