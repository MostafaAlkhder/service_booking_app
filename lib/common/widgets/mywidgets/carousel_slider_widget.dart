import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

Widget createCustomCarouselSliderWidget(
    BuildContext context, List<String> imageList) {
  return CarouselSlider(
    options: CarouselOptions(
      autoPlay: true,
      aspectRatio: 2.0,
      enlargeCenterPage: true,
      height: 250,
      initialPage: 0,
      viewportFraction: 1.0,
      enableInfiniteScroll: true,
      reverse: false,
      autoPlayInterval: Duration(seconds: 3),
      autoPlayAnimationDuration: Duration(seconds: 1),
      autoPlayCurve: Curves.fastOutSlowIn,
      scrollDirection: Axis.horizontal,
    ),
    items: imageList
        .map((item) => Container(
              child: Center(
                child: Image.asset(
                  item,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ))
        .toList(),
  );
}
