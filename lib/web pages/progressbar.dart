import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:google_fonts/google_fonts.dart';

class progress_bar extends StatelessWidget {
  const progress_bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Html',
              style: GoogleFonts.abel(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.normal),
            ),
          ),
          LinearPercentIndicator(
            barRadius: const Radius.circular(30),
            width: MediaQuery.of(context).size.width / 1.3,
            animation: true,
            lineHeight: 7.0,
            animationDuration: 5000,
            percent: 1.0,
            trailing: const Text(
              "100%",
              style: TextStyle(color: Colors.white),
            ),
            progressColor: Colors.greenAccent,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Flutter',
              style: GoogleFonts.abel(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.normal),
            ),
          ),
          LinearPercentIndicator(
            barRadius: const Radius.circular(30),
            width: MediaQuery.of(context).size.width / 1.3,
            animation: true,
            lineHeight: 7.0,
            animationDuration: 5000,
            percent: 0.6,
            trailing: const Text(
              "60%",
              style: TextStyle(color: Colors.white),
            ),
            progressColor: Colors.greenAccent,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Css',
              style: GoogleFonts.abel(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.normal),
            ),
          ),
          LinearPercentIndicator(
            barRadius: const Radius.circular(30),
            width: MediaQuery.of(context).size.width / 1.3,
            animation: true,
            lineHeight: 7.0,
            animationDuration: 5000,
            percent: 0.4,
            trailing: const Text(
              "40%",
              style: TextStyle(color: Colors.white),
            ),
            progressColor: Colors.greenAccent,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'JavaScript',
              style: GoogleFonts.abel(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.normal),
            ),
          ),
          LinearPercentIndicator(
            barRadius: const Radius.circular(30),
            width: MediaQuery.of(context).size.width / 1.3,
            animation: true,
            lineHeight: 7.0,
            animationDuration: 5000,
            percent: 0.2,
            trailing: const Text(
              "20%",
              style: TextStyle(color: Colors.white),
            ),
            progressColor: Colors.greenAccent,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'React',
              style: GoogleFonts.abel(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.normal),
            ),
          ),
          LinearPercentIndicator(
            barRadius: const Radius.circular(30),
            width: MediaQuery.of(context).size.width / 1.3,
            animation: true,
            lineHeight: 7,
            animationDuration: 5000,
            percent: 0.1,
            trailing: const Text(
              "10%",
              style: TextStyle(color: Colors.white),
            ),
            progressColor: Colors.greenAccent,
          ),
        ],
      ),
    );
  }
}
