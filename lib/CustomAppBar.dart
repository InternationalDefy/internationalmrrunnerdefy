import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

import 'package:internationalmrrunnerdefy/IndustryExperience.dart';
import 'package:internationalmrrunnerdefy/HomePage.dart';
import 'package:internationalmrrunnerdefy/PersonalProject.dart';
import 'package:internationalmrrunnerdefy/SelfLearning.dart';
import 'Styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(120.0);
  @override
  Widget build(BuildContext context) => Hero(
      tag: "Fixed UI",
      child: AppBar(
        shadowColor: Colors.lightBlue[100],
        toolbarHeight: 120.0,
        backgroundColor: Colors.lightBlue[50],
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                  text: "\"Mr.Runner\"",
                  style: gGlitchStyleLarge,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.of(context)
                          .pushReplacementNamed(HomePage.routeName);
                    }),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 22.0),
            ),
            RichText(
              text: TextSpan(
                  text: "International Defy",
                  style: gGlitchStyleNormal,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.of(context)
                          .pushReplacementNamed(HomePage.routeName);
                    }),
            ),
            const Spacer(),
            RichText(
              text: TextSpan(
                  text: "Self Learning",
                  style: gTitleStyleSmall,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.of(context).pushNamed(SelfLearning.routeName);
                    }),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 22.0),
            ),
            RichText(
              text: TextSpan(
                  text: "Personal Projects",
                  style: gTitleStyleSmall,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.of(context)
                          .pushNamed(PersonalProject.routeName);
                    }),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 22.0),
            ),
            RichText(
              text: TextSpan(
                  text: "Career Experience",
                  style: gTitleStyleSmall,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.of(context)
                          .pushNamed(IndustryExperience.routeName);
                    }),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 22.0),
            ),
          ],
        ),
      ));
}
