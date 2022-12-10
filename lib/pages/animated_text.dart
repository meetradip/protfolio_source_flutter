import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class animated_text extends StatelessWidget {
  const animated_text({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            child: const Icon(
              Icons.play_arrow,
              color: Colors.red,
              size: 30,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 5, top: 23),
            width: 240,
            height: 80,
            child: DefaultTextStyle(
              style: GoogleFonts.playfairDisplay(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              child: AnimatedTextKit(
                totalRepeatCount: 3,
                // pause: Duration(microseconds: 1, milliseconds: 1),
                repeatForever: true,
                animatedTexts: [
                  TyperAnimatedText('Web Developer',
                      textStyle: const TextStyle(color: Colors.deepOrange)),
                  TyperAnimatedText('Flutter Developer',
                      textStyle: const TextStyle(color: Colors.amber)),
                  TyperAnimatedText('UI  Designer',
                      textStyle: const TextStyle(color: Colors.pinkAccent)),
                  TyperAnimatedText('Blog Writter',
                      textStyle: const TextStyle(color: Colors.tealAccent)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
