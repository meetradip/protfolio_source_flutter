import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:protfolio_us/pages/education.dart';
import 'package:protfolio_us/pages/social_jd.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:protfolio_us/pages/carousel_slider.dart';
import 'package:protfolio_us/pages/about.dart';
import 'package:protfolio_us/pages/progressbar.dart';
import 'package:protfolio_us/pages/tools.dart';
import 'package:protfolio_us/pages/animated_text.dart';
import 'package:protfolio_us/pages/hire_me.dart';

class home_page extends StatefulWidget {
  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  CarouselController buttonCarouselController = CarouselController();
  late ScrollController _scrollController;

  @override
  void initState() {
    // initialize scroll controllers
    _scrollController = ScrollController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          controller: _scrollController,
          child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    opacity: 0.5,
                    fit: BoxFit.cover,
                    image: AssetImage('assets/background_image.jpeg'))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 100, left: 20),
                              height: 40,
                              width: 140,
                              child: Text(
                                'Hey There!',
                                style: GoogleFonts.cinzel(
                                    fontSize: 25,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white.withOpacity(0.7)),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 80),
                              height: 30,
                              width: 30,
                              decoration: const BoxDecoration(),
                              child: const Image(
                                  image: AssetImage('assets/giphy1.gif')),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 7, left: 20, bottom: 5),
                          child: Text(
                            "Riduan Rahman",
                            style: GoogleFonts.gruppo(
                                fontSize: 35,
                                fontWeight: FontWeight.normal,
                                color: Colors.white),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 20),
                          decoration: const BoxDecoration(
                              border: Border(
                                  bottom:
                                      BorderSide(width: 2, color: Colors.red))),
                          child: Text(
                            "Radip",
                            style: GoogleFonts.playfairDisplay(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white.withOpacity(0.9)),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: const animated_text(),
                        ),
                        Container(
                          child: const social_Id(),
                        ),
                      ],
                    ),
                    Container(
                        height: 200,
                        width: 150,
                        margin: EdgeInsets.only(left: 50),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.white,
                              width: 2,
                              style: BorderStyle.solid,
                              strokeAlign: BorderSide.strokeAlignOutside),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: ShaderMask(
                          shaderCallback: (rect) {
                            return const LinearGradient(
                                begin: Alignment.center,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.black,
                                  Colors.transparent
                                ]).createShader(
                                Rect.fromLTRB(0, 0, rect.width, rect.height));
                          },
                          blendMode: BlendMode.dstIn,
                          child: const Image(
                              alignment: Alignment.centerLeft,
                              fit: BoxFit.cover,
                              image: AssetImage('assets/my_black_white.png')),
                        )),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(width: 2, color: Colors.red))),
                      child: Text(
                        'About:',
                        style: GoogleFonts.playfairDisplay(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20, bottom: 10),
                      child: const about(),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(width: 2, color: Colors.red))),
                      child: Text(
                        'Education:',
                        style: GoogleFonts.playfairDisplay(
                            color: Colors.white, fontSize: 25),
                      ),
                    ),
                    Container(
                      child: const education(),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(left: 20, top: 20, bottom: 20),
                      decoration: const BoxDecoration(
                          border:
                              Border(bottom: BorderSide(color: Colors.red))),
                      child: Text(
                        'Skills:',
                        style: GoogleFonts.playfairDisplay(
                            fontSize: 25, color: Colors.white),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: const progress_bar(),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(left: 20, top: 20, bottom: 20),
                      decoration: const BoxDecoration(
                          border:
                              Border(bottom: BorderSide(color: Colors.red))),
                      child: Text(
                        'Tools:',
                        style: GoogleFonts.playfairDisplay(
                            fontSize: 25, color: Colors.white),
                      ),
                    ),
                    Container(
                      child: const tools(),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin:
                          const EdgeInsets.only(left: 20, top: 20, bottom: 20),
                      decoration: const BoxDecoration(
                          border:
                              Border(bottom: BorderSide(color: Colors.red))),
                      child: Text(
                        'My Projets:',
                        style: GoogleFonts.merriweather(
                            fontSize: 30, color: Colors.white),
                      ),
                    ),
                    Container(
                      height: 200,
                      child: const carousel_slider(),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: hire_me(),
                ),
                Container(
                  height: 30,
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(),
                  child: Center(
                    child: Text(
                      'This website developed by 💛 Riduan',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 13),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
