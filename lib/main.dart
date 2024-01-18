import 'package:flutter/material.dart';

import 'industry_experience.dart';
import 'personal_projects.dart';
import 'self_learning.dart';
import 'home_page.dart';

void main() {
  runApp(const InternationalMrRunnerDefy());
}

final GlobalKey<NavigatorState> gNavigatorKey = GlobalKey<NavigatorState>();

class InternationalMrRunnerDefy extends StatelessWidget {
  const InternationalMrRunnerDefy({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'InternationalMrRunnerDefy',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: HomePage(),
      routes: sNavigationRoutes,
      navigatorKey: gNavigatorKey,
    );
  }
}

Map<String, WidgetBuilder> sNavigationRoutes = {
  HomePage.routeName: (context) => HomePage(),
  IndustryExperience.routeName: (context) => IndustryExperience(),
  PersonalProject.routeName: (context) => PersonalProject(),
  SelfLearning.routeName: (context) => SelfLearning(),
};
