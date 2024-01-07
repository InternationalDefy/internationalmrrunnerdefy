import 'package:flutter/material.dart';
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
    );
  }
}
