import 'package:flutter/material.dart';

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
          Container(
            margin: const EdgeInsets.only(left: 20),
            height: 30,
            width: 30,
            decoration: const BoxDecoration(
                image:
                    DecorationImage(image: AssetImage('assets/facebook.png'))),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20),
            height: 30,
            width: 30,
            decoration: const BoxDecoration(
                image:
                    DecorationImage(image: AssetImage('assets/instagram.png'))),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20),
            height: 30,
            width: 30,
            decoration: const BoxDecoration(
                image:
                    DecorationImage(image: AssetImage('assets/linkedin.png'))),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20),
            height: 30,
            width: 30,
            decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/github.png'))),
          ),
        ],
      ),
    );
  }
}
