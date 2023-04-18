import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shopping_cos/constants.dart';

class ProductSlider extends StatefulWidget {
  const ProductSlider({Key? key}) : super(key: key);

  @override
  State<ProductSlider> createState() => _ProductSliderState();
}

class _ProductSliderState extends State<ProductSlider> {
  final CarouselController carouselController = CarouselController();
  List<String> imageList = [
    'images/1.jpg',
    'images/2.jpg',
    'images/3.jpg',
    'images/4.jpg',
  ];
  // int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: CarouselSlider(
        options: CarouselOptions(
          // onPageChanged: (index, reason) => setState(() => activeIndex = index),
          autoPlayCurve: Curves.fastOutSlowIn,
          autoPlay: true,
          autoPlayAnimationDuration: Duration(milliseconds: 800),
        ),
        items: imageList
            .map((item) => Container(
                  child: Image.asset(
                    item,
                    fit: BoxFit.cover,
                    width: 280,
                  ),
                ))
            .toList(),
      ),
    );
  }
}
