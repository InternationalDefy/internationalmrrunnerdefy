import 'package:flutter/material.dart';
import 'package:internationalmrrunnerdefy/IndustryExperience.dart';
import 'package:internationalmrrunnerdefy/PersonalProject.dart';
import 'package:internationalmrrunnerdefy/SelfLearning.dart';
import 'HomePage.dart';

void main() {
  runApp(const InternationalMrRunnerDefy());
}

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
    );
  }
}

Map<String, WidgetBuilder> sNavigationRoutes = {
  HomePage.routeName: (context) => HomePage(),
  IndustryExperience.routeName: (context) => IndustryExperience(),
  PersonalProject.routeName: (context) => PersonalProject(),
  SelfLearning.routeName: (context) => SelfLearning(),
};
