import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';

class carousel_slider extends StatefulWidget {
  const carousel_slider({super.key});

  @override
  State<carousel_slider> createState() => _carousel_sliderState();
}

class _carousel_sliderState extends State<carousel_slider> {
  CarouselController buttonCarouselController = CarouselController();
  List<Widget> Items = [
    Container(
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(20),
          image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/project_1.png'))),
    ),
    Container(
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(20),
          image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/project_2.jpg'))),
    ),
    Container(
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(20),
          image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/project_3.png'))),
    ),
    Container(
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(20),
          image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/project_4.jpg'))),
    ),
    Container(
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(20),
          image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/project_5.webp'))),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        child: CarouselSlider(
      items: Items,
      carouselController: buttonCarouselController,
      options: CarouselOptions(
        height: 200,
        autoPlayAnimationDuration: const Duration(milliseconds: 2000),
        autoPlay: true,
        enlargeCenterPage: true,
        viewportFraction: 0.6,
        aspectRatio: 0.1,
        initialPage: 1,
      ),
    ));
  }
}
