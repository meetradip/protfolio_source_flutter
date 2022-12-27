import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:protfolio_us/pages/from.dart';

class hire_me extends StatelessWidget {
  const hire_me({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Get In Touch',
          style: GoogleFonts.poiretOne(
              color: Colors.white, fontSize: 60, fontWeight: FontWeight.normal),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Let's build something together :)",
          style: TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.normal),
        ),
        const SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          child: InkWell(
            onTap: () {
              showModalBottomSheet(
                  backgroundColor: Colors.black.withOpacity(0.7),
                  isScrollControlled: true,
                  enableDrag: true,
                  shape: const RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20))),
                  context: context,
                  builder: ((context) => const buttonsheet()));
            },
            child: Container(
              height: 60,
              width: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 2, color: Colors.red)),
              child: const Center(
                child: Text(
                  'Hire me',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
