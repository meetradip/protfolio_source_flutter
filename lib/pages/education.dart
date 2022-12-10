import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class education extends StatelessWidget {
  const education({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 19),
              child: SizedBox(
                height: 50,
                width: 20,
                child: TimelineNode(
                  endConnector: const SolidLineConnector(
                    color: Colors.lightGreen,
                  ),
                  indicator: DotIndicator(
                    color: Colors.redAccent.withOpacity(0.7),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: const Text(
                'Nawabganj Model Govt. Primary School\n'
                '2011-2016',
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(left: 28),
          child: SizedBox(
            height: 50,
            child: SolidLineConnector(
              color: Colors.lightGreen,
            ),
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 19),
              child: SizedBox(
                height: 40,
                width: 20,
                child: TimelineNode.simple(
                  color: Colors.pinkAccent.withOpacity(0.7),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: const Text(
                'Fulkuri Islamic Academy' '\n2016-2019',
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(left: 28),
          child: SizedBox(
            height: 50,
            child: SolidLineConnector(
              color: Colors.lightGreen,
            ),
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 19),
              child: SizedBox(
                height: 50,
                width: 20,
                child: TimelineNode(
                  startConnector: const SolidLineConnector(
                    color: Colors.lightGreen,
                  ),
                  indicator: DotIndicator(
                    color: Colors.redAccent.withOpacity(0.7),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: const Text(
                'Textile Vocational Institute' '\n2019-2022',
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
