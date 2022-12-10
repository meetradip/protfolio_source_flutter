import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class card_holder extends StatelessWidget {
  const card_holder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            height: 290,
            width: 200,
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                    opacity: 0.7,
                    fit: BoxFit.cover,
                    image: AssetImage("assets/awsome_view2.jpg")),
                boxShadow: [BoxShadow(blurRadius: 5, offset: Offset(5, 7))]),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10, left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(),
                  Text(
                    "Color in UI Design: \nA (practical) \nFramework",
                    style: GoogleFonts.roboto(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 5),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.newspaper,
                          color: Colors.white,
                          size: 17,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Riduan",
                          style: GoogleFonts.oswald(
                              fontSize: 15, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
