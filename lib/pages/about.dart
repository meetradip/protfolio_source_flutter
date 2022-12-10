import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class about extends StatelessWidget {
  const about({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 5),
          child: Text(
            "Hi, I'm Riduan Rahman Radip, a passionate self-taught \nexperienced flutter app developer and a freelance \nsoftware developer from Bangladesh.",
            style: GoogleFonts.robotoSlab(shadows: [
              Shadow(
                  color: Colors.white54.withOpacity(0.4),
                  offset: const Offset(0, 5),
                  blurRadius: 10)
            ], color: Colors.white, fontSize: 18),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 5, top: 20),
          child: Text(
            " My passion for software lies with dreaming up ideas and making\n them come true with elegant interfaces. I take great care in the\n experience, architecture, and code quality of the things I build."
            "I am\n also an open-source enthusiast and maintainer. I learned a lot from the\n open-source communityand I love how collaboration and knowledge\n sharing happened through open-source.",
            style: GoogleFonts.ptSans(
                color: Colors.white.withOpacity(0.7), fontSize: 17),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, top: 20),
          child: RichText(
            text: TextSpan(
                text: '- 🔭 I’m currently working on ',
                style: const TextStyle(color: Colors.white, fontSize: 15),
                children: [
                  TextSpan(
                    text: 'snapshot',
                    style: const TextStyle(
                        color: Colors.purpleAccent, fontSize: 15),
                  )
                ]),
          ),
        ),
        const Padding(
            padding: EdgeInsets.only(left: 30, top: 20),
            child: Text(
              "- 📫 Working hours 14hrs/week now. Previously 70+hrs/week.\n Hope I will be productive as possible again in next few years.",
              style: TextStyle(color: Colors.white, fontSize: 16),
            )),
      ],
    );
  }
}
