import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:protfolio_us/pages/education.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:protfolio_us/pages/social_jd.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:protfolio_us/pages/carousel_slider.dart';
import 'package:protfolio_us/pages/from.dart';
import 'package:protfolio_us/pages/about.dart';
import 'package:protfolio_us/pages/progressbar.dart';
import 'package:protfolio_us/pages/tools.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:timelines/timelines.dart';
import 'package:protfolio_us/pages/animated_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:protfolio_us/pages/hire_me.dart';

class home_page extends StatelessWidget {
  CarouselController buttonCarouselController = CarouselController();
  final Uri _url = Uri.parse('https://flutter.dev');
  Future<void> _launchUrl() async {
    if (!await launchUrl(_url, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $_url';
    }
  }

  Future lunchemail(dynamic email) async {
    final toEmail = 'unstablebengali@gmail.com';
    final email = 'mailto:$toEmail}';
    await lunchemail(email);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
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
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/giphy1.gif'))),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 7, left: 20),
                          child: Text(
                            "Riduan Rahman",
                            style: GoogleFonts.gruppo(
                                fontSize: 35,
                                fontWeight: FontWeight.normal,
                                color: Colors.white),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
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
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    Container(
                        height: 200,
                        width: 150,
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
                Row(children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom:
                                    BorderSide(width: 2, color: Colors.red))),
                        child: Text(
                          'About:',
                          style: GoogleFonts.playfairDisplay(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: const about(),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom:
                                    BorderSide(width: 2, color: Colors.red))),
                        child: Text(
                          'Education:',
                          style: GoogleFonts.playfairDisplay(
                              color: Colors.white, fontSize: 25),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        child: const education(),
                      )
                    ],
                  ),
                ]),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                    const SizedBox(
                      height: 10,
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
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              left: 20, top: 20, bottom: 20),
                          decoration: const BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(color: Colors.red))),
                          child: Text(
                            'My Projets:',
                            style: GoogleFonts.merriweather(
                                fontSize: 30, color: Colors.white),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 200,
                          child: const carousel_slider(),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
                Container(
                  child: hire_me(),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 30,
                  width: double.infinity,
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
