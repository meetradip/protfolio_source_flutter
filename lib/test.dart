import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class test_app extends StatefulWidget {
  const test_app({super.key});

  @override
  State<test_app> createState() => _test_appState();
}

class _test_appState extends State<test_app> {
  int acceptedData = 0;
  Widget buttonsheet() => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
              onPressed: () => Navigator.of(context)..pop(),
              icon:
                  Icon(Icons.crop_16_9_rounded, color: Colors.black, size: 30)),
          Text('hello', style: TextStyle(color: Colors.amber))
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ElevatedButton(
          onPressed: () => showModalBottomSheet(
                isScrollControlled: true,
                enableDrag: true,
                context: context,
                builder: (context) => buttonsheet(),
              ),
          child: Text(
            'click here',
            style: TextStyle(color: Colors.amber),
          )),
    ));
  }
}
