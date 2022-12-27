import 'package:flutter/material.dart';
import 'package:protfolio_us/pages/home_page.dart';
import 'package:protfolio_us/web pages/web_page.dart';

class responsive extends StatelessWidget {
  final Widget Mobile;
  final Widget web;
  responsive({required this.Mobile, required this.web});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        if (constrains.maxWidth < 600) {
          return home_page();
        } else {
          // ignore: prefer_const_constructors
          return web_page();
        }
      },
    );
  }
}
