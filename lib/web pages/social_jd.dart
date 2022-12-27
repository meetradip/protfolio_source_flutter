import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

class social_Id extends StatelessWidget {
  const social_Id({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () =>
              launch('https://www.facebook.com/profile.php?id=100079136926687'),
          child: Container(
            margin: const EdgeInsets.only(left: 20),
            height: 30,
            width: 30,
            decoration: const BoxDecoration(
                image:
                    DecorationImage(image: AssetImage('assets/facebook.png'))),
          ),
        ),
        InkWell(
          onTap: () => launch(
              'https://bd.linkedin.com/in/riduan-rahman-radip-5764711a0'),
          child: Container(
            margin: const EdgeInsets.only(left: 20),
            height: 30,
            width: 30,
            decoration: const BoxDecoration(
                image:
                    DecorationImage(image: AssetImage('assets/linkedin.png'))),
          ),
        ),
        InkWell(
          onTap: () => launch('https://github.com/Riduan-Radip'),
          child: Container(
            margin: const EdgeInsets.only(left: 20),
            height: 30,
            width: 30,
            decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/github.png'))),
          ),
        ),
        InkWell(
          onTap: () async {
            launch(
              'mailto:unstablebengali@gmail.com',
            );
          },
          child: Container(
            margin: const EdgeInsets.only(left: 20),
            height: 40,
            width: 40,
            decoration: const BoxDecoration(),
            child:
                Image(fit: BoxFit.cover, image: AssetImage('assets/mail.png')),
          ),
        ),
      ],
    );
  }
}
