import 'package:flutter/material.dart';

import 'package:protfolio_us/pages/home_page.dart';
import 'package:protfolio_us/responsive/responsive_layout.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:protfolio_us/web pages/web_page.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        builder: ((context, child) => ResponsiveWrapper.builder(
              child,
              maxWidth: 1200,
              minWidth: 490,
              defaultScale: true,
              breakpoints: [
                const ResponsiveBreakpoint.resize(600, name: MOBILE),
                const ResponsiveBreakpoint.resize(700, name: MOBILE),
                const ResponsiveBreakpoint.autoScale(800, name: TABLET),
                const ResponsiveBreakpoint.autoScale(1200, name: DESKTOP),
              ],
            )),
        debugShowCheckedModeBanner: false,
        title: 'Riduan Rahman Radip',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: StreamBuilder(
          builder: (context, snapshot) {
            return responsive(Mobile: home_page(), web: web_page());
          },
        ));
  }
}
