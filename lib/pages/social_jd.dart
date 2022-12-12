import 'package:flutter/material.dart';
import 'package:protfolio_us/pages/social_accoun.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class social_Id extends StatefulWidget {
  const social_Id({super.key});

  @override
  State<social_Id> createState() => _social_IdState();
}

class _social_IdState extends State<social_Id> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          InkWell(
            onTap: () => social_links.facebookurl(),
            child: Container(
              margin: const EdgeInsets.only(left: 20),
              height: 30,
              width: 30,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/facebook.png'))),
            ),
          ),
          InkWell(
            onTap: () => social_links.linkedin(),
            child: Container(
              margin: const EdgeInsets.only(left: 20),
              height: 30,
              width: 30,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/linkedin.png'))),
            ),
          ),
          InkWell(
            onTap: () => social_links.githuburl(),
            child: Container(
              margin: const EdgeInsets.only(left: 20),
              height: 30,
              width: 30,
              decoration: const BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage('assets/github.png'))),
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
              child: Image(
                  fit: BoxFit.cover, image: AssetImage('assets/mail.png')),
            ),
          ),
        ],
      ),
    );
  }
}
