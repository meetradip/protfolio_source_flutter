import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:protfolio_us/pages/home_page.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({super.key});

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {
      Get.to(home_page());
    });
  }

  final color = [
    Colors.white,
    Colors.purple.shade200,
    Colors.blue.shade200,
    Colors.deepOrange.shade300,
    Colors.greenAccent.shade200
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Center(
                child: Image(
                    height: 300,
                    width: double.infinity,
                    image: NetworkImage(
                        'https://media.giphy.com/media/zSz2KsgySmfjbb8NJS/giphy.gif'))

                // Text(
                //   "Welcome to my protfolio",
                //   style: GoogleFonts.poiretOne(
                //       color: Colors.white70,
                //       fontSize: 50,
                //       fontWeight: FontWeight.normal),
                // ),
                ),
          ),
          // Container(
          //   margin: EdgeInsets.symmetric(horizontal: 20),
          //   child: Center(
          //     child: LinearPercentIndicator(
          //       barRadius: Radius.circular(30),
          //       width: MediaQuery.of(context).size.width / 1.1,
          //       animation: true,
          //       lineHeight: 9.0,
          //       animationDuration: 5,
          //       percent: 1.0,
          //       progressColor: Colors.lightBlueAccent.shade200,
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
