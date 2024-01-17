import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';

import 'package:url_launcher/url_launcher.dart';

import 'package:flutter_vector_icons/flutter_vector_icons.dart';

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
        shadowColor: Colors.lightBlue[50],
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
            RichText(
              text: TextSpan(
                  text: "Résumé",
                  style: gTitleStyleSmall,
                  recognizer: TapGestureRecognizer()..onTap = () {}),
            ),
          ],
        ),
      ));
}

List<Widget> gBottomBarWidgetList() {
  return [
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Contact me:',
          style: gTextStyleNormal,
        ),
        const Padding(padding: EdgeInsets.only(left: 20.0)),
        IconButton(
          onPressed: () {
            Clipboard.setData(
                const ClipboardData(text: "thetruemrrunner@gmail.com"));
          },
          icon: const Icon(
            MaterialIcons.email,
            size: 24.0,
          ),
        ),
        const Padding(padding: EdgeInsets.only(left: 10.0)),
        Text(
          'thetruemrrunner@gmail.com',
          style: gTextStyleNormal,
        ),
        const Padding(padding: EdgeInsets.only(left: 20.0)),
        IconButton(
          onPressed: () {
            final Uri url = Uri.parse('https://github.com/InternationalDefy');
            launchUrl(url);
          },
          icon: const Icon(
            FontAwesome5Brands.github,
            size: 24.0,
          ),
        ),
        const Padding(padding: EdgeInsets.only(left: 10.0)),
        Text(
          'InternationalDefy',
          style: gTextStyleNormal,
        ),
        const Padding(padding: EdgeInsets.only(left: 20.0)),
        IconButton(
          onPressed: () {
            final Uri url =
                Uri.parse('https://steamcommunity.com/id/InternationalDefy/');
            launchUrl(url);
          },
          icon: const Icon(
            FontAwesome5Brands.steam,
            size: 24.0,
          ),
        ),
        const Padding(padding: EdgeInsets.only(left: 10.0)),
        Text(
          'Mr.Runner',
          style: gTextStyleNormal,
        ),
      ],
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'This website is built with Flutter, a fast, productive, frontend builder.',
          style: gTextStyleSmall,
        ),
        const Padding(padding: EdgeInsets.only(left: 20.0)),
        IconButton(
          onPressed: () {
            final Uri url = Uri.parse('https://flutter.dev/');
            launchUrl(url);
          },
          icon: const FlutterLogo(
            size: 28.0,
            duration: Duration.zero,
          ),
        )
      ],
    ),
  ];
}
