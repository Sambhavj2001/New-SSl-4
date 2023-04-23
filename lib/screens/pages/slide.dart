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
    'images/slide1.png',
    'images/slide2.png',
    'images/slide3.png',
    'images/slide4.png',
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
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Image.asset(
                    item,
                    fit: BoxFit.cover,
                    width: 270,
                  ),
                ))
            .toList(),
      ),
    );
  }
}
