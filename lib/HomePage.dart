import 'package:flutter/material.dart';

import 'CustomAppBar.dart';

class HomePage extends StatelessWidget {
  Widget? _buildContentBody() {
    return null;
  }

  Widget? _buildBottomBar() {
    return null;
  }

  static String routeName = "HomePage";
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: CustomAppBar(),
        body: _buildContentBody(),
        bottomNavigationBar: _buildBottomBar(),
      );
}
