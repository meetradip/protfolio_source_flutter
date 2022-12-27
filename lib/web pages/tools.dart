import 'package:flutter/material.dart';

class tools extends StatelessWidget {
  const tools({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Image(
              height: 25, width: 25, image: AssetImage('assets/linux.png')),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Image(
              height: 25, width: 25, image: AssetImage('assets/json.png')),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10),
          child:
              Image(height: 25, width: 25, image: AssetImage('assets/git.png')),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Image(
              height: 25, width: 25, image: AssetImage('assets/firebase.png')),
        )
      ],
    );
  }
}
