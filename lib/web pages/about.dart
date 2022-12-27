import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class about extends StatelessWidget {
  const about({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 30, top: 20, bottom: 20),
          decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(width: 2, color: Colors.red))),
          child: Text(
            'About:',
            style: GoogleFonts.playfairDisplay(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        Container(
          height: 80,
          width: 500,
          padding: const EdgeInsets.only(left: 25),
          child: Text(
            "Hi, I'm Riduan Rahman Radip, a passionate self-taught experienced flutter app developer and a freelance software developer from Bangladesh.",
            style: GoogleFonts.robotoSlab(shadows: [
              Shadow(
                  color: Colors.white54.withOpacity(0.4),
                  offset: const Offset(0, 5),
                  blurRadius: 10)
            ], color: Colors.white, fontSize: 18),
          ),
        ),
        Container(
          height: 140,
          width: 490,
          padding: const EdgeInsets.only(
            left: 25,
          ),
          child: Text(
            "My passion for software lies with dreaming up ideas and making them come true with elegant interfaces. I take great care in the experience, architecture, and code quality of the things I build."
            "I am also an open-source enthusiast and maintainer. I learned a lot from the open-source communityand I love how collaboration and knowledge sharing happened through open-source.",
            style: GoogleFonts.ptSans(
              color: Colors.white.withOpacity(0.7),
              fontSize: 16,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        Container(
          height: 50,
          width: 490,
          margin: const EdgeInsets.only(left: 30, top: 20, bottom: 10),
          child: RichText(
            text: const TextSpan(
                text: '- 🔭 I’m currently working on ',
                style: TextStyle(color: Colors.white, fontSize: 16),
                children: [
                  TextSpan(
                    text: 'snapshot',
                    style: TextStyle(color: Colors.purpleAccent, fontSize: 16),
                  )
                ]),
          ),
        ),
        Container(
          height: 80,
          width: 490,
          padding: const EdgeInsets.only(
            left: 30,
          ),
          child: const Text(
            "- 📫 Working hours 14hrs/week now. Previously 70+hrs/week. Hope I will be productive as possible again in next few years.",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ],
    );
  }
}
